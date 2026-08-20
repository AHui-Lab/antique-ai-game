# Project Rules

Before coding:
1. Read `docs/GAME_VISION.md`.
2. Read `docs/ARCHITECTURE.md`.
3. Read `docs/DECISIONS.md`.
4. Read the active GitHub Issue / task contract.

Critical invariants:
- The LLM may narrate, interpret, reason, and propose, but must never directly mutate canonical game state.
- All AI-proposed state changes must pass deterministic validation before execution.
- Core game rules must not depend on UI/presentation code.
- Content definitions must stay data-driven wherever practical.
- Every persistent game entity must use a stable unique ID.
- Do not modify files outside the task's allowed paths.
- Do not perform unrelated refactors while implementing a task.
- New core behavior requires automated tests.
- Never commit API keys, tokens, `.env` files, credentials, or secrets.

After coding:
1. Run the tests required by the active task.
2. Report changed files and test results.
3. Report unresolved risks or assumptions.
4. Update relevant documentation when an architectural decision changes.

Human approval is required for:
- changes to core architecture;
- changes to game vision or product scope;
- weakening validation or safety boundaries;
- merging work into `main`.
