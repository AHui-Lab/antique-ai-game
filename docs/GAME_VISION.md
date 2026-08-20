# Game Vision

## Working Title
Antique AI Game (working repository name)

## Product Vision
A single-player antique appraisal and simulation game where the player grows from an outsider into a trusted participant in the antique world through knowledge, relationships, channels, reputation, stories, and assets.

The game is not primarily about leveling up or maximizing money. The core fantasy is: **the player gradually learns to see what they could not see before, and the world gradually treats them differently because of what they know and who trusts them.**

## Core Experience Pillars
1. **Learn to See** — knowledge increases information resolution rather than adding abstract success percentages.
2. **Earn Access** — relationships and trust open people, information, and channels that money alone cannot buy.
3. **Judge Under Uncertainty** — the game should present evidence rather than a simple authenticity-percentage answer.
4. **Objects Carry Stories** — provenance, previous owners, clues, and relationships can turn an object into a narrative thread.
5. **A Living Social World** — LLM-driven expression makes NPCs responsive, but canonical facts remain deterministic.

## AI-Native Direction
The game uses a lightweight deterministic Game Core plus a constrained LLM Agent Runtime.

The LLM may:
- converse;
- interpret player language;
- recall selected memories;
- express personality and relationship changes;
- propose narrative or social actions.

The LLM may not directly change:
- item authenticity;
- canonical provenance;
- player money or inventory;
- persistent relationship state;
- knowledge ownership;
- story facts;
- market truth.

All proposed actions must be validated by deterministic game rules.

## First Playable Target
A 30–60 minute vertical-slice prototype centered on:
- one antique-market location;
- one primary NPC (working name: Lao Zhou);
- three ceramic objects;
- one complete transaction loop;
- one knowledge-learning moment that changes what the player can perceive;
- one remembered NPC interaction;
- one small relationship/channel unlock.

## Non-Goals for Early Development
- open world;
- multiplayer;
- full voice acting;
- dozens of antique categories;
- fully autonomous always-running NPC agents;
- procedural generation of canonical authenticity/facts;
- complex 3D character navigation;
- production backend infrastructure before the core loop is validated.
