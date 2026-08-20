# Task System

GitHub Issues are the source of truth for active implementation tasks. This file defines task conventions rather than duplicating the backlog.

## Task Lifecycle

```text
BACKLOG -> SPEC -> READY -> IN PROGRESS -> REVIEW -> DONE
```

Only tasks explicitly moved to `READY` (and later marked with the automation label) may be executed by an autonomous coding agent.

## Task Size
Target one independently verifiable change per task. Prefer work that can be completed in a few hours. If a task spans multiple systems or cannot be tested independently, split it.

## Required Task Contract
Every implementation task must define:
- Goal
- Why
- Allowed paths
- Forbidden paths
- Requirements
- Acceptance criteria
- Required tests
- Dependencies
- Documentation impact

## Automation Rules
- Agent work happens on a non-main branch.
- The agent may not modify paths outside the task contract.
- CI success is necessary but not sufficient for merge.
- Architecture changes stop for human approval.
- Automated repair attempts are bounded.
- Failed tasks must become visible rather than looping indefinitely.
