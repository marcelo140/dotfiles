---
name: workflow-efficiency
description: Use when partitioning large investigations, delegating independent work, resuming after compaction, or shortening coding feedback loops. Defines evidence contracts, coverage reconciliation, and concise handoffs.
---

# Efficient execution

## Bound the work before delegating

Use parallel agents for independent questions or exclusive file ownership. Keep dependent changes sequential and one coordinator responsible for integration. More agents are not a success metric.

Give each agent:

- **Question and scope:** exact date/ID range, files, sources, exclusions, and write permissions.
- **Completion criterion:** evidence needed, falsifying checks, and required coverage.
- **Output contract:** concise findings with source references, confidence, gaps, and verification results. Return references rather than raw transcripts.
- **Checkpoint:** report a blocker or exceeded effort estimate with completed work and remaining scope. Do not restart a broad investigation after compaction.

For exhaustive inventories, enumerate stable IDs first, define one timezone and half-open intervals, and partition before reading. Track completed IDs, pagination offsets, and truncation. Reconcile overlaps, missing IDs, and contradictory findings centrally. A search hit or truncated response is not a complete read.

Set effort appropriate to the requirement. Do not turn a budget into an unannounced sample when the user requested complete coverage. Repartition unfinished work or return its explicit coverage gap. For exploratory research, use bounded sources and stop when the question is answered.

## Establish context and test the risky boundary early

1. Resolve repository, checkout, branch/HEAD, dirty state, target, and comparison. Use `git worktree list`, `git status`, and explicit source/target refs; do not assume a default branch.
2. Identify the smallest coherent behavior and inspect sibling implementations and existing tests.
3. Run the smallest meaningful check across the affected boundary before expanding implementation.
4. Distinguish environment startup failures from product failures. Use the existing setup helper and its supported cached path; do not retry identical failures without new evidence.
5. Run required verification, then inspect the complete diff for unrelated changes and user-comment drift.

Follow the test-readability rules in AGENTS.md. Do not create a test matrix for permutations that prove the same risk. Mocks suit isolated failures or meaningful adapter logic.

## Evidence at the point of the claim

For consequential findings, keep a compact working map:

`claim → source → scope/time → observed/reported/inferred/proposed → remaining uncertainty`

Quote the applicable source before declaring a policy violated. Trace actual consumers, connection wiring, and configuration loaders before handing off an ownership gap. Distinguish passing jobs from deployment, source rows from delivery, and commit dates from rollout dates. Do not call unexecuted or blocked checks verified.

For metrics, specify query, units, aggregation, evaluation window, attempted versus accepted traffic, and a baseline excluding the measured workload. Lead with the requested result rather than unrelated analysis.

## Handoff without a running journal

At a meaningful interruption or task boundary, preserve only:

```markdown
## Continue from here

- Latest user constraints/decisions (supersede older instructions explicitly):
- Verified findings and references:
- Next action:
- Unresolved blocker/question:
- Relevant task, code-review, and worktree links (verify live state on resume):
```

Use an existing task-handoff location when one is established; a research return message is enough for read-only tasks. Do not duplicate live status or routine test histories. Preserve the latest decision through compaction, not every earlier proposal. If the harness blocks execution, state that once, retain the authorized next action, and resume when the mode allows it.

## Improve the mechanism, not the amount of process

When a stable workaround repeats, fix the helper/default rather than adding another reminder. Keep rules of engagement in `AGENTS.md` and procedures here or in the relevant skill.

Evaluate changes on real prior failures: correct context selection, relevant memory retrieval, latest constraints after reset, appropriate verification, and complete evidence. Separate automated checks from human/model-graded tasks. Compare time and tool calls per correct, verified outcome—not saves, test counts, agent count, or generated volume. See `workflow-eval` for replay methodology.
