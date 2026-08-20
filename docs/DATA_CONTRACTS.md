# Data Contracts

This document tracks the stable interfaces that future implementation tasks will formalize.

## Planned Core Contracts

### CanonicalState
The authoritative persistent state of the game. Only deterministic commands may mutate it.

### EntityId
Stable unique identifier for every persistent entity.

### GameEvent
An immutable record describing a meaningful canonical event.

Expected fields (provisional):
- `event_id`
- `event_type`
- `timestamp`
- `actor_id`
- `target_ids`
- `payload`

### ItemDefinition
Static data describing an antique/item type and its canonical properties.

### NPCDefinition
Static character data: identity, personality anchors, knowledge/role metadata, relationship graph references, and authored story facts.

### AIRequest
Compact context for one AI interaction. Must never contain the entire save by default.

### AIResponse
Normalized provider response containing player-facing text plus optional structured proposals.

### AIAction
A structured proposed action. It has no authority until `ActionValidator` accepts it.

### AIBudgetPolicy
Defines request/token/cost/rate/timeout/retry boundaries.

## Contract Rule
Contracts remain provisional until their implementation task is approved. Once a contract is consumed across modules or persisted in save data, changes require an explicit migration/decision.
