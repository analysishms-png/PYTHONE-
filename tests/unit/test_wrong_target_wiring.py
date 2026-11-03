"""P9 WRONG_TARGET wiring sweep (VB6-vs-Python UI bug report ke 10 cases).

Har leaf ka live _form_registry() resolver uske VB6-faithful target se
match hota hai — resolver ke SOURCE ko inspect karke:

  MUST_CALL  : resolver is target ko call kare (ya uske saath guard ho)
  FORBIDDEN  : resolver ab purane (galat) target ko call na kare

Regression guard: koi bhi wiring wapas purge/galat target par na chale
(jaise pehle "Reverse Check Out" -> open_checkout(tab=0) tha, jabki VB6
FdRevCheckOut ka matlab reverse flow hai).

Evidence: VB6_PYTHON_UI_BUGS.txt WRONG_TARGET table + FODER/*.frm
(FaTDSChal, FaCurrBalUpdate, frmReNightAudit, fdAcPostChrg, HallAcPostChrg,
MembershipMast, SmartCardRegistration).
"""
import inspect
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit

# ---------------------------------------------------------------------------
# Wiring contracts: leaf -> (must_contain, must_not_contain)
# Patterns resolver ke inspect.getsource() me check hote hain.
# MUST mein alternates '|' se — pehla preferred (faithful) target, baaki
# graceful fallbacks (jaise card master jab registration UI load na ho).
# ---------------------------------------------------------------------------
WRONG_TARGET_CONTRACTS: dict[str, tuple[str, str]] = {
    # VB6 FdRevCheckOut: reverse checkout flow (Checked-Out tab + btnReverse),
    # sirf open_checkout(tab=0) galat tha
    "Reverse Check Out": (
        r"open_checkout\(w, user=w\.user, reverse=True\)",
        r"open_checkout\(w, user=w\.user\)(?!, reverse)",
    ),
    # VB6 FaAdjustDel: dedicated delete screen (partial_forms_ui),
    # plain open_fa_adjust(entry window) nahi
    "Adjustment Deletion": (
        r"open_fa_adjust\(w, delete=True\)|open_adjustment_delete",
        r"open_fa_adjust\(w\)(?!\s*,)",
    ),
    # VB6 FaTDSChal: dedicated challan UI (TDSChal/TDSChal1 + LEDGERTDS mark)
    "T.D.S. Challan Entry": (
        r"open_fa_tds_challan|open_voucher_entry",  # fallback: voucher (documented)
        r"^$",
    ),
    # VB6 FaCurrBalUpdate: currbal rebuild UI (SubGroupCurrBal/ACGroupCurrBal)
    "Current Balance Updation": (
        r"open_currbal_update|open_trial_balance",  # fallback documented
        r"^$",
    ),
    # VB6 fdAcPostChrg family: A/C posting runner (PostingUtility /
    # NightAuditProcess) — reports browser nahi
    "Charges Posting": (
        r"open_posting_utility|open_night_audit_process",
        r"open_nightaudit_reports",
    ),
    "Night Audit Process": (
        r"open_night_audit_process|open_posting_utility|open_nightaudit_reports",
        r"^$",
    ),
    # VB6 frmReNightAudit: reverse_night_audit core, reports browser nahi
    "Reverse Night Audit": (
        r"open_reverse_night_audit",
        r"open_nightaudit_reports",
    ),
    # VB6 MembershipMast: member master CRUD, billing nahi
    "Member Master": (
        r"open_member_master|open_member_billing",  # fallback: billing (no MemberMast table)
        r"^$",
    ),
    # VB6 SmartCardRegistration: registration entry (SmartCardRegistration
    # table CRUD), card master nahi
    "Card Registration": (
        r"open_card_registration|open_smartcard",  # fallback: master
        r"^$",
    ),
}

# Ye leaves ke liye reports-browser downgrade FORBIDDEN hai (strict — koi
# fallback nahi, kyunki faithful UI exist karta hai):
STRICT_REPORTS_BROWSER_FORBIDDEN = {
    "Charges Posting",
    "Reverse Night Audit",
}


def _norm(s: str) -> str:
    return " ".join(s.split()).lower()


@pytest.fixture(scope="module")
def registry() -> dict:
    from HMS_py.ui.shell import _form_registry

    return _form_registry()


def _resolver_source(registry: dict, leaf: str) -> str:
    fn = registry.get(leaf)
    if fn is None:
        return ""
    try:
        return inspect.getsource(fn)
    except (OSError, TypeError):
        return ""


def test_wrong_target_contracts_covered_by_registry(registry):
    """Har contract leaf live registry me hona chahiye."""
    normed = {_norm(k): k for k in registry}
    missing = [leaf for leaf in WRONG_TARGET_CONTRACTS
               if _norm(leaf) not in normed]
    assert not missing, (
        f"{len(missing)} contract leaves registry me missing: {missing}"
    )


@pytest.mark.parametrize("leaf", sorted(WRONG_TARGET_CONTRACTS))
def test_wrong_target_wiring(registry, leaf):
    must, forbidden = WRONG_TARGET_CONTRACTS[leaf]
    src = _resolver_source(registry, leaf)
    assert src, f"'{leaf}' resolver ka source inspect nahi hua"

    import re

    if forbidden and forbidden != "^$":
        assert not re.search(forbidden, src), (
            f"'{leaf}' ab bhi FORBIDDEN pattern '{forbidden}' call kar raha hai "
            f"(WRONG_TARGET regression):\n{src.strip()[:300]}"
        )
    if must:
        assert re.search(must, src), (
            f"'{leaf}' MUST pattern '{must}' nahi mila — faithful target se "
            f"wire nahi hai:\n{src.strip()[:300]}"
        )


def test_strict_no_reports_browser_downgrade(registry):
    """Faithful UI wale leaves kabhi reports-browser par nahi gire."""
    import re

    normed = {_norm(k): v for k, v in registry.items()}
    bad = []
    for leaf in STRICT_REPORTS_BROWSER_FORBIDDEN:
        fn = normed.get(_norm(leaf))
        if fn is None:
            continue
        try:
            src = inspect.getsource(fn)
        except (OSError, TypeError):
            continue
        if re.search(r"open_nightaudit_reports", src):
            bad.append(leaf)
    assert not bad, (
        f"{len(bad)} leaves reports-browser par downgrade: {bad} — "
        "faithful UI (npu_ui/narep_ui) se wire karo"
    )


def test_fa_adjust_open_signature_supports_delete_mode():
    """FaAdjustDel parity: open_fa_adjust(delete=True) hona chahiye."""
    from HMS_py.ui import fa_sub_forms_ui as fasub

    assert hasattr(fasub, "open_fa_adjust")
    sig = inspect.signature(fasub.open_fa_adjust)
    assert "delete" in sig.parameters, (
        "open_fa_adjust me 'delete' param nahi — FaAdjustDel dedicated "
        "delete screen par route nahi hoga"
    )


def test_fa_tds_challan_dialog_exists():
    from HMS_py.ui import fa_sub_forms_ui as fasub

    assert hasattr(fasub, "open_fa_tds_challan"), (
        "TDSChallanWindow missing — 'T.D.S. Challan Entry' faithful UI nahi"
    )
    assert hasattr(fasub, "TDSChallanWindow")


def test_posting_utility_reverse_na_openers_exist():
    from HMS_py.ui import posting_utility_ui as npu

    assert hasattr(npu, "open_reverse_night_audit"), (
        "ReverseNightAuditWindow missing — 'Reverse Night Audit' "
        "faithful UI nahi"
    )
    assert hasattr(npu, "open_night_audit_process"), (
        "NightAuditProcessWindow missing — 'Night Audit Process' "
        "faithful UI nahi"
    )


def test_currbal_update_opener_exists():
    from HMS_py.ui import fa_voucher_ui as fvu

    assert hasattr(fvu, "open_currbal_update"), (
        "open_currbal_update missing — 'Current Balance Updation' "
        "faithful UI nahi (FaCurrBalUpdate parity)"
    )


def test_card_registration_opener_exists():
    from HMS_py.ui import pos_masters_ui as pm

    assert hasattr(pm, "open_card_registration"), (
        "open_card_registration missing — 'Card Registration' "
        "faithful UI nahi (SmartCardRegistration parity)"
    )


def test_fa_adjust_amount_validation_present():
    """BUG #1 guard: FaAdjustWindow._save me pending-amount validation hai."""
    from HMS_py.ui import fa_sub_forms_ui as fasub

    src = inspect.getsource(fasub.FaAdjustWindow._save)
    assert "adj_pending" in src, (
        "FaAdjustWindow._save me adj_pending check nahi — VB6 "
        "TXTADJ_AMT_Validate parity broken"
    )
    assert "Pendng Adj.Amt" in src or "Pending Adj.Amt" in src, (
        "VB6-style pending message missing"
    )


def test_fa_adjust_acgroup_real_list():
    """BUG #2 guard: FaAdjustWindow ACGROUP se real list load karta hai
    (hardcoded test accounts ka fallback nahi)."""
    from HMS_py.ui import fa_sub_forms_ui as fasub

    build_src = inspect.getsource(fasub.FaAdjustWindow)
    assert "Cash" not in build_src or "_acgroup" in build_src, (
        "FaAdjustWindow me hardcoded account list lagi hui hai"
    )
    assert "_load_acgroup_names" in build_src, (
        "FaAdjustWindow ACGROUP se real names load nahi karta "
        "(_load_acgroup_names missing)"
    )
    # hardcoded fallback entries kabhi wapas na aayein
    assert '"101", "name": "Bank"' not in build_src
    assert '"102", "name": "Customer"' not in build_src
