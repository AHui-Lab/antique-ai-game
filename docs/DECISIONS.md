# Decisions

## DEC-001 — Public portfolio-first repository
**Status:** Accepted

The primary game repository is public from the beginning to preserve development history and support portfolio use.

## DEC-002 — Godot 4.x
**Status:** Accepted

Use Godot 4.x for the first playable prototype because the project is UI-heavy, uses focused 3D object inspection rather than an open world, and prioritizes rapid solo iteration.

## DEC-003 — Deterministic canonical state
**Status:** Accepted

LLMs must never directly mutate canonical game state.

## DEC-004 — Provider-agnostic AI runtime
**Status:** Accepted

The game and development automation must isolate model providers behind adapters/interfaces where practical.

## DEC-005 — Hosted + BYOK + future local AI
**Status:** Accepted

The runtime architecture reserves paths for official hosted inference, player BYOK, local/OpenAI-compatible endpoints, and no-AI fallback.

## DEC-006 — AI budget is a first-class constraint
**Status:** Accepted

Token, request, retry, timeout, and cost limits are treated as product/engineering constraints rather than post-launch optimizations.

## DEC-007 — DeepSeek Harness for autonomous development
**Status:** Accepted

Use DeepSeek Harness as the initial coding-agent harness instead of rebuilding generic file/shell/agent-loop infrastructure.

A project-specific DeepSeek Harness plugin will enforce task contracts and execution policies. Harness-specific details must be isolated so the automation can later adopt additional harnesses/providers without changing game architecture.

## DEC-008 — Human architecture gate
**Status:** Accepted

Automation may implement approved tasks autonomously, but changes to architecture, product scope, validation boundaries, and merges to `main` require human approval.
