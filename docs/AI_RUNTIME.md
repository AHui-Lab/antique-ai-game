# AI Runtime

## Purpose
Provide natural NPC dialogue, interpretation, memory-aware expression, and narrative proposals without giving the model authority over canonical game state.

## Runtime Responsibilities
1. Build a compact request context from relevant game state.
2. Route the request to a configured model/provider.
3. Require structured output for actions that can affect game systems.
4. Validate every proposed action.
5. Execute only validated deterministic commands.
6. Record request metadata, latency, token use, estimated cost, and validation outcome.

## Planned AI Modes
- Hosted mode — project-controlled backend/provider; subject to project budgets.
- BYOK mode — player supplies their own provider credential; credentials must not be stored in save files or logs.
- Local/OpenAI-compatible mode — future support for local endpoints such as LM Studio/Ollama-compatible gateways.
- No-AI fallback — game remains playable with deterministic/template interactions if AI is unavailable.

## Budget Controls
The runtime should eventually support:
- max input tokens per request;
- max output tokens per request;
- max requests per time window;
- per-session budget;
- hosted daily/monthly budget;
- task-specific model tiers;
- retry limits and timeout limits.

## Memory V1
Start small:
- canonical NPC facts;
- important event log entries;
- relationship memories;
- short recent conversation window.

Do not introduce a vector database until simple structured retrieval proves insufficient.

## Provider Boundary
Runtime code depends on a provider interface, not a model vendor. Provider adapters are replaceable.

A provider should expose, at minimum:
- model identifier;
- capability flags (structured output/tool calling/streaming if applicable);
- request execution;
- token/accounting metadata;
- normalized errors.
