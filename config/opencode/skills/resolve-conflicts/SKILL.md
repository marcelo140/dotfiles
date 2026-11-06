---
name: resolve-conflicts
description: Rebase a Git branch or code-review worktree onto its target, resolve conflicts safely, and verify the result. Use when asked to solve merge conflicts, rebase a branch, or update a feature branch.
---

# Resolve conflicts

Complete the work in the existing source-branch worktree when possible. Do not
push or create/update a PR/MR unless explicitly requested.

## 1. Resolve repository, source, target, and worktree

- For a PR/MR, use the hosting service's advertised integration or CLI to read its repository, source branch, target branch, and current source SHA. Do not use workplace-specific authentication helpers.
- Without a code-review URL, use the requested branch and target. Infer a default target only when the repository makes it unambiguous.
- Inspect worktrees and select the existing checkout of the source branch:

```sh
git worktree list -v
git branch --show-current
git status --short --branch
```

- Never check out a branch already checked out elsewhere.
- Stop and ask if the selected worktree has tracked modifications, an active rebase, or another conflicting operation. Do not remove, stash, or reset user changes without approval.
- Leave untracked dependencies untouched when they do not interfere.
- Run subsequent commands explicitly in the selected worktree; recheck branch/HEAD after user steering.

## 2. Capture the pre-rebase state

Record enough information to explain the result:

```sh
git status --short --branch
git rev-parse HEAD
git log --oneline --decorate -8
git diff --stat <target-ref>...HEAD
git diff --check <target-ref>...HEAD
```

Confirm the relevant remote and fetch only the target ref:

```sh
git fetch <remote> <target-branch>
```

Do not reset local branches or delete remote branches.

## 3. Rebase and inventory conflicts

From the selected worktree:

```sh
git rebase <remote>/<target-branch>
```

If conflicts occur:

```sh
git status --short
git diff --name-only --diff-filter=U
git diff --cc
```

Inspect both sides and surrounding code for each file. Selecting one whole side
is acceptable only after confirming it preserves intended work. Do not blindly
choose ours or theirs. When one side is empty, inspect its commit to determine
whether deletion was intentional before restoring code.

For a stacked branch whose base was squash-merged, replay only the child's
commits with `git rebase --onto <target-ref> <old-base-tip> <source-branch>`.
Establish old-base equivalence by content, not commit messages. Before skipping a
redundant conflicting commit, inspect its full patch and the staged result to
confirm no intended changes are lost. Verify ancestry against the target and
against any sibling branch the source must no longer depend on. A hosting
service's displayed diff alone may hide a wrong base.

## 4. Resolve semantically, not only textually

Check for:

- Unused imports or removed exports.
- Tests exercising replaced APIs.
- Generated code, schemas, mocks, or configuration that must stay aligned.
- Renames and moved helpers outside the conflicting hunk.
- Target-branch behavior the feature must preserve.

Search for conflict markers and stale symbols:

```sh
git grep -n -E '^(<<<<<<<|=======|>>>>>>>)' -- ':!node_modules'
git grep -n '<removed-or-renamed-symbol>'
```

Stage only resolved files and continue non-interactively:

```sh
git add <resolved-files>
GIT_EDITOR=true git rebase --continue
```

Repeat until complete. If safe resolution is blocked, leave the rebase paused or
abort only with approval; report the exact blocker.

## 5. Verify the rebased branch

```sh
git status --short --branch
git log --oneline --decorate <target-ref>..HEAD
git merge-base --is-ancestor <target-ref> HEAD
git diff --check <target-ref>...HEAD
git grep -n -E '^(<<<<<<<|=======|>>>>>>>)' -- ':!node_modules'
```

Inspect repository instructions and build scripts, then run relevant formatting,
lint, type checks, tests, and builds. Report blocked checks, warnings, and failures
separately. Fix failures caused by conflict resolution and rerun checks rather
than declaring the rebase complete.

## 6. Report the result

Include:

- Exact worktree path, source branch, and target ref.
- Each conflicted file, competing changes, and the substantive resolution explaining what was preserved or intentionally rejected.
- Post-rebase semantic fixes.
- Verification commands and outcomes.
- Pre-existing files left untouched.
- Whether the branch was pushed; do not push unless requested.

Do not call a worktree clean if unrelated untracked files remain.

## Safety

- For an authorized post-rebase push, fetch and inspect the remote source SHA and others' changes, then use `--force-with-lease=refs/heads/<source>:<expected-sha>`. A stale lease requires investigation, not an unchecked force push.
- Do not delete branches or files as incidental cleanup.
- Never use destructive Git commands to discard changes without explicit approval.
- Preserve manual comments and unrelated user changes.
- A successful rebase command does not establish semantic correctness.
- Do not create a separate fix commit unless authorized; continuing the requested rebase is within its scope.
