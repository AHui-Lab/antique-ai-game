# Tests

TASK-001 intentionally starts with a minimal Godot smoke-test baseline.

The executable test entry point is:

```bash
./scripts/test.sh
```

Current smoke coverage verifies that:
- the Godot project boots headlessly;
- a GDScript test script is actually executed;
- a failed assertion exits with a non-zero status.

A fuller unit-test framework should only be introduced when core gameplay logic justifies it.
