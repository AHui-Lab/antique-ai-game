#!/usr/bin/env bash
set -euo pipefail

GODOT_BIN="${GODOT_BIN:-godot}"

printf 'Using Godot: '
"${GODOT_BIN}" --version

printf '\n[1/2] Booting project headlessly...\n'
"${GODOT_BIN}" --headless --path game --quit

printf '\n[2/2] Running smoke test...\n'
"${GODOT_BIN}" --headless --path game --script res://tests/smoke_test.gd

printf '\nAll TASK-001 tests passed.\n'
