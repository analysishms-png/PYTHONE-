# Migration Loop History — HMS_py

Bounded, checkpointed loop. One module at a time. Max 5 debug attempts per issue.

| Loop# | Module | Option | Step | Result | Checkpoint |
|-------|--------|--------|------|--------|------------|
| 1 | Infra | conftest.py PROJECT_ROOT | Fix | Fixed (off-by-one path) | MIGRATION_AUTOMATION_STATE.json |
| 2 | Infra | core/__init__.py + core/shared/__init__.py | Fix | Fixed (unterminated docstrings) | MIGRATION_AUTOMATION_STATE.json |
| 3 | Infra | core/db.py shim | Create | `from HMS_py.core import db` resolves | MIGRATION_AUTOMATION_STATE.json |
| 4 | Infra | generate_parity_matrix.py matcher | Fix | exact→normalised→alias→fuzzy + live probe | VB6_PARITY_MATRIX.txt regenerated |
| 5 | Infra | menu testing suite | Build | 1180 passed, 16 failed (report gaps), 1056 skipped | TEST_CASES.json + runner |
| 6 | Reservation | advance_deposit() | Implement | VB6 frmAdvanceDepDialog + Laravel AdvanceController; 4 tests pass | tests/unit/test_advance_deposit.py |

Next: Front Office Remaining module — Post Charges (fdPostChrg.frm) → extract to folio.py (BUG-028).
