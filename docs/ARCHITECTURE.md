# Architecture

## Architectural Goal
Keep game truth deterministic and testable while using LLMs for language, interpretation, reasoning, and expressive variation.

## High-Level Layers

```text
Presentation (Godot UI / item viewer)
        |
        v
Deterministic Game Core
        |
        v
Canonical State <-> Event Log / Save
        |
        v
Context Builder
        |
        v
AI Gateway / Model Provider
        |
        v
Structured AI Proposal
        |
        v
Action Validator
        |
        v
Validated Game Command
        |
        v
Canonical State
```

## Core Invariant
**LLM may narrate, interpret, reason, and propose. LLM may never directly mutate canonical game state.**

## Planned Modules
- `core/state` — canonical state and stable entity identity.
- `core/events` — deterministic game events and event log.
- `core/items` — antique/item definitions and instances.
- `core/knowledge` — player knowledge state and visible feature resolution.
- `core/trading` — deterministic pricing/transaction rules.
- `core/relationships` — persistent relationship facts and thresholds.
- `core/channels` — access/availability rules for people and sources.
- `ai/context` — selects relevant state and memories for a request.
- `ai/providers` — provider abstraction for hosted/BYOK/local models.
- `ai/validation` — validates structured AI-proposed actions.
- `ai/budget` — token/request/cost budgets and rate limits.
- `save` — versioned serialization and migrations.
- `presentation` — Godot UI and 3D antique viewer.

## Early Technology Direction
- Engine: Godot 4.x.
- Primary language: GDScript unless a task justifies another language.
- CI: GitHub Actions using standard public-repository runners.
- Development automation: DeepSeek Harness + project-specific task-contract plugin + GitHub Actions orchestration.
- Runtime model layer: provider-agnostic; no model vendor may be hard-coded into game rules.

## Data Rules
- Persistent entities require stable IDs.
- Canonical item truth is stored in deterministic data.
- Player-visible information is derived from canonical item truth + player knowledge.
- NPC dialogue output is not canonical unless converted into a validated game command/event.
- Secrets must never be committed to the repository.

## Change Control
Architecture changes require an explicit decision record in `docs/DECISIONS.md` before implementation whenever they alter a core invariant, public data contract, provider boundary, save format, or validation boundary.
