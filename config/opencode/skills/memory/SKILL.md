---
name: memory-usage
description: Search and apply durable knowledge before non-trivial repo work, research, or debugging; save verified reusable discoveries. Defines bounded retrieval, applicability checks, selective handoffs, and memory-quality evaluation.
---

# Memory usage

Keep a compact map of non-obvious, reusable lessons: where to look and what to
watch out for. Memory is not a journal or a copy of authoritative systems.

## Tools

Use these custom tools only when advertised in the current session:

| Tool                              | Purpose                                                                    |
| --------------------------------- | -------------------------------------------------------------------------- |
| `memory_search(query, category?)` | Read-only keyword search                                                   |
| `memory_list(category?)`          | Browse categories or file summaries                                        |
| `memory_save()`                   | Optional re-indexing for external consumers; not needed for keyword search |

Read search results with the file reader under `~/opencode-memory/`. Writing
Markdown saves memory immediately; no re-index call is required. Tool
availability does not grant write or commit authorization. Read-only modes remain
read-only.

### If custom tools are unavailable

- Search `~/opencode-memory/` with `grep` or `rg`, then read relevant sections.
- Write durable notes only when authorized; do not invent tool calls or commit as a substitute.
- For session history, use the available OpenCode V2 API/CLI rather than its database. Read the current API documentation and pagination contract first: <https://opencode.ai/v2/docs/api>.
- Use the configured authentication context. The CLI may start the managed service, so do not invoke it when service-state changes are prohibited; report blocked retrieval instead.
- If no memory directory exists, proceed from current sources; do not invent prior knowledge or require an empty store to be populated.

## Bounded retrieval and application

- Start with a narrow entity/task query. Keyword searches may match terms with OR logic; broad keyword bags produce noise.
- Read applicable sections with enough context to establish scope, not whole catch-all files. Search session history when resuming work or recovering prior decisions, not for every new task.
- If results are weak, reformulate or filter before broadening. Stop when the information need is met.
- Apply useful knowledge to the next action. Reading a memory is not evidence of benefit. If it identifies a setup helper, inspect and use the supported path before improvising.
- Memory locates evidence; it never overrides current user decisions, source, or live state. Verify contradictions instead of silently trusting older notes.

## When to search

- Starting on a repository: structure, build commands, and gotchas.
- Using unfamiliar tooling: setup, supported commands, and known limitations.
- Debugging: a previous session may have solved the same failure.
- Recovering prior decisions: consult the relevant session, then verify current state.
- Before saving: update an existing lesson rather than duplicating it.

## When to save

Ask whether a future session would waste time without the lesson.

Save non-obvious workarounds, repository gotchas, undocumented tool behavior,
verified debugging causes, and pointers to supported helpers.

Do not save live state available from a service, copies of documentation,
task-specific progress, or facts discoverable in under a minute.

Search first. Keep one current answer per topic with its trigger, action,
rationale, source, and invalidation conditions. Save causal claims only after
confirmation. Replace superseded advice rather than appending contradictions.
Never describe a proposal as deployed.

### One lesson per file

Keep each file focused, preferably under 80 lines and no more than 150. Name it
after the lesson, not a task identifier. A repository index at
`repos/<host>/<path>.md` should point to topic files in its sibling directory,
not accumulate every discovery.

A useful memory has a searchable trigger, a non-obvious actionable lesson, a
re-checkable source, and a meaningful cost if missed. Stable procedures belong in
a skill rather than memory.

Live status belongs in its authoritative service or Git. At a meaningful handoff,
preserve unfinished work's constraints, next action, decisions, blockers, and
links. Do not require a note for completed work.

## Retrospective

After substantial work, check for verified reusable discoveries and inaccurate
memories actually used. Update only when useful and authorized; there is no save
quota or indexing requirement.

For a concrete retrieval failure, record the query, expected lesson, missed or
stale guidance, consequence, and proposed fix. Improve recurring mechanisms rather
than adding reminders.

## Verify mutable facts against primary sources

Re-query current ownership, issue state, assignments, code-review state, CI,
deployments, service health, and errors from their authoritative sources.
Repository paths, code patterns, tool behavior, and workarounds also change:
inspect current source before applying them.

A recent consultation date does not prove a workaround ran. Distinguish commits
from rollouts and focused checks from end-to-end verification. Unexecuted checks
remain unverified. See `workflow-eval` for evaluating retrieval quality.

## Repository note paths

Mirror the repository host and path:

```text
git@github.com:example/project.git
→ ~/opencode-memory/repos/github.com/example/project.md
→ ~/opencode-memory/repos/github.com/example/project/<topic>.md
```

Do not assume a path-helper script is installed.

## Frontmatter

Include provenance:

```yaml
---
title: Human-readable title
tags: [topic]
summary: One line stating the lesson itself
created: YYYY-MM-DD
updated: YYYY-MM-DD
importance: high | medium | low
source: Primary source URL or description
source_date: YYYY-MM-DD
related: [category/file.md]
# Optional; omit empty fields:
scope: Repository, tool, version, or environment
verified_against: Actual source, configuration, or check
invalidated_by: Conditions requiring revalidation
---
```

Categories: `preferences`, `repos`, `technical`, `people`, `workflows`, `snippets`,
and `notes`.

## Search tips

- Use specific entity/task terms, not broad words such as "auth".
- Filter by category when useful.
- Follow related files only when relevant.
- Reserve high importance for consequential lessons, not frequently read files.
