---
name: workflow-eval
description: Use when evaluating memory retrieval, delegation, handoffs, or workflow changes against historical failures. Separates automated helper checks from human/model-graded behavioral replays.
---

# Workflow evaluation

Evaluate verified outcomes, not save counts or generated volume. Keep two layers
separate:

1. **Automated mechanics:** run existing relevant helper or plugin regressions when available. Stub lifecycle and remote-service calls. Passing these tests is not end-to-end verification or proof of agent behavior.
2. **Behavioral replay:** use isolated agent runs with human-calibrated grading. Do not count these as passing when automated checks succeed.

This portable skill includes synthetic examples in `cases.tsv`, not workplace
session excerpts, a plugin test runner, or executed evaluation results. Prepare
self-contained fixtures and cite their local evidence before using a case. Mark
unprepared or unexecuted cases as not run.

## Replay procedure

- For a historical case, read its cited session and relevant current source; verify it still applies. Use captured or stubbed inputs when live state changes. Do not run commits, pushes, CI triggers, or deployments.
- Use development cases to refine the workflow. Reserve separate held-out cases before tuning. Once a held-out case is inspected or tuned against, replace its designation before making evaluation claims. The bundled examples are public development cases, not a blind benchmark.
- Compare baseline and candidate on identical inputs in fresh sessions. Run at least two trials per case. Grade the final action, answer, and evidence, not one prescribed tool sequence.
- For retrieval cases, use advertised memory/session tools or the memory skill's file-based fallback. Record the useful memory's rank within the first five where ranking is available. Reading a file is not proof of correct application.
- Record results in a separate TSV with columns `case_id`, `trial`, `variant`, `correct`, `useful_rank`, `calls`, `elapsed_s`, and `evidence`. Set `correct` to 1 or 0 only after grading; blank means ungraded. Leave rank blank for non-retrieval cases or no relevant hit. Retain failures and missing trials.
- Report completed/expected cases, correctness, first-five useful-memory recall, calls and elapsed time per correct result, and substantive user corrections. Keep missing evidence explicit. Do not infer time savings from tool counts.

## Executed replays

- Replay from the real base commit with the target removed, in checkouts without `.git`, when testing code-writing behavior independently of Git workflows. Forbid memory/session tools if later corrections would leak the expected answer. Deliver required guidance inline; optional skills may not be loaded reliably.
- Check the harness's actual delegation limits. A nested-agent requirement silently performed as self-review is not the same tested workflow.
- If agents share prepared checkouts, serialize the full mutation lifecycle (apply → run → restore) under the same lock as test runs. Use bounded kernel locks and signal forwarding, not directory-existence locks. Pin shared helpers for the run.
- An agent ending on "waiting for the run" is unverified. Re-verify outputs centrally on clean code and record diff hashes.
- Calibrate blind reviewers with historically rejected and accepted versions. Reject a reviewer that consistently ranks them backward.
- Check that planted bugs discriminate. If good and bad versions catch every mutant equally, mutation score cannot separate them.

## Grade consistently

A pass requires the case's distinct outcome and evidence. Reading the right
memory while ignoring its applicable supported setup is a failure of application.
Rejecting a stale note based on current source is a pass. Unavailable runtime or
API evidence remains unknown, not verified.

A small corpus is a regression pilot, not a productivity benchmark. Expand it
only when cases yield stable, useful judgments. Record model/harness versions and
changed files for every comparison. Structural checks do not prove semantic
compliance.
