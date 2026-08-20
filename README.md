# Antique AI Game

An AI-native antique appraisal and simulation game built around a deterministic game core, constrained LLM agents, knowledge-driven appraisal, relationship/channel progression, and object-centered stories.

## Current Status
Pre-production / engineering foundation.

The immediate goal is to build a small 30–60 minute playable prototype while dogfooding an agent-driven development workflow based on GitHub Issues, GitHub Actions, DeepSeek Harness, automated testing, and human architecture gates.

## Architecture Principle

> LLMs may narrate, interpret, reason, and propose. They may never directly mutate canonical game state.

See:
- [`docs/GAME_VISION.md`](docs/GAME_VISION.md)
- [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md)
- [`docs/AI_RUNTIME.md`](docs/AI_RUNTIME.md)
- [`docs/DECISIONS.md`](docs/DECISIONS.md)

## Development Workflow

```text
GitHub Issue
    -> approved task contract
    -> autonomous coding agent
    -> feature branch / pull request
    -> CI + policy checks
    -> human review
    -> main
```

The first automation target is to use DeepSeek Harness as the coding harness, then develop a dedicated task-contract plugin that enforces allowed paths, execution policy, bounded retries, and audit logs.

## Portfolio Goals
This repository is intentionally public to document:
- AI-native game architecture;
- deterministic state validation around LLM agents;
- model/provider abstraction and inference-cost controls;
- autonomous Vibe Coding workflow design;
- development of a DeepSeek Harness plugin used to build the game itself.

## Security
Never commit API keys, tokens, credentials, `.env` files, or other secrets. Use GitHub Actions Secrets and local environment variables.
