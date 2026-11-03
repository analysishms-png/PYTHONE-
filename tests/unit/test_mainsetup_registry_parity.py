"""VB6-parity regression: har Main Setup menu leaf (core/mdi_menu.json)
live HMS_py.ui.shell._form_registry() me resolve hona chahiye.

Guards:
- registry se koi leaf silently drop hona
- wired leaf ka chupchap _coming_soon() me downgrade hona
- debug tooling ke stale fallback registry me chhupi regressions
- conditionally-imported UI modules ka import-tutna (fa_sub_forms_ui
  IndentationError class of bug) — _form_registry() live call is case me
  raise karega aur ye test fail hoga, fallback par nahi girega.
"""
import json
import os
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit

# tests/unit -> tests -> HMS_py package root (jahan core/ aur ui/ hain)
PACKAGE_ROOT = Path(__file__).resolve().parents[2]
MDI_MENU_JSON = PACKAGE_ROOT / "core" / "mdi_menu.json"

# VB6-evidence wale genuinely-blocked leaves:
ALLOWED_MISSING = frozenset()  # Com Port Properties ab ported (ui/comport_ui.py)

# Registry me hain par documented-skip (_coming_soon) resolver par:
ALLOWED_INACTIVE = frozenset({
    # VB6 evidence (EXTRAS.text): menu registration tha (loc_1EE8F78, kind=2)
    # par dispatch chain (loc_1E397E3-1E398DD) me is caption ka koi case nahi —
    # VB6 me bhi click dead tha. SundryTypeFix table live hai, isliye jab
    # real UI bane to yahan se hatao.
    "Member Bill Sundry Setting",
})

# _coming_soon() ke andar wale closure ka qualname (ui/shell.py)
_COMING_SOON_QUALNAME = "_coming_soon.<locals>.go"


def _load_mainsetup_leaves() -> set[str]:
    """mdi_menu.json se &Main Setup subtree ke sab leaf captions nikaalo."""
    menu = json.loads(MDI_MENU_JSON.read_text(encoding="utf-8"))
    leaves: set[str] = set()

    def walk(node, in_main_setup=False):
        caption = node.get("caption", "")
        if caption == "&Main Setup":
            in_main_setup = True
        children = node.get("children", [])
        if in_main_setup and not children:
            cap = caption.strip()
            if cap and cap != "-":  # VB6 separator rows clickable nahi hote
                leaves.add(cap)
        for child in children:
            walk(child, in_main_setup)

    for top in menu.get("children", []):
        walk(top)
    return leaves


def _norm(s: str) -> str:
    # menuHelp captions lowercase + irregular spacing ke saath aate hain;
    # registry keys original-case hain -> case-insensitive + whitespace-collapsed.
    return " ".join(s.split()).lower()


def test_mdi_menu_json_exists_with_mainsetup_leaves():
    assert MDI_MENU_JSON.exists(), f"missing: {MDI_MENU_JSON}"
    leaves = _load_mainsetup_leaves()
    assert len(leaves) >= 120, (
        f"Main Setup leaves extract nahi hue ({len(leaves)}) — "
        "mdi_menu.json ka &Main Setup subtree badla gaya hai ya walker toota hai"
    )


def test_allowed_missing_leaves_still_in_vb6_menu():
    """Allowlist rot guard: menu se hata/typo hua allowlisted leaf pakdo."""
    leaves = _load_mainsetup_leaves()
    normed = {_norm(x) for x in leaves}
    for label, group in (("ALLOWED_MISSING", ALLOWED_MISSING),
                         ("ALLOWED_INACTIVE", ALLOWED_INACTIVE)):
        stale = {x for x in group if _norm(x) not in normed}
        assert not stale, (
            f"{label} me stale entries (VB6 menu me ab nahi hain): {sorted(stale)} "
            "— allowlist update karo ya leaf dobara wire karo"
        )


def test_all_mainsetup_leaves_in_live_form_registry():
    """Live registry check — fallback registry par kabhi nahi girega."""
    from HMS_py.ui.shell import _form_registry

    registry = _form_registry()
    assert isinstance(registry, dict)
    normed_keys = {_norm(k) for k in registry}
    allowed = {_norm(x) for x in ALLOWED_MISSING}

    leaves = _load_mainsetup_leaves()
    missing = sorted(
        leaf for leaf in leaves
        if _norm(leaf) not in normed_keys and _norm(leaf) not in allowed
    )
    assert not missing, (
        f"{len(missing)} VB6 Main Setup leaves live _form_registry() me missing:\n"
        + "\n".join(f"  - {m}" for m in missing)
    )


def test_mainsetup_registry_resolvers_are_callable():
    from HMS_py.ui.shell import _form_registry

    registry = _form_registry()
    normed = {_norm(k): v for k, v in registry.items()}
    allowed = {_norm(x) for x in ALLOWED_MISSING}

    leaves = _load_mainsetup_leaves()
    resolved = [
        leaf for leaf in leaves
        if _norm(leaf) in normed and _norm(leaf) not in allowed
    ]
    # Har non-allowlisted leaf resolve ho
    assert len(resolved) >= len(leaves) - len(ALLOWED_MISSING)
    for leaf in resolved:
        assert callable(normed[_norm(leaf)]), f"resolver callable nahi: {leaf}"


def test_mainsetup_leaves_not_silently_downgraded_to_coming_soon():
    """Wired leaf ka _coming_soon() me silent downgrade pakdo.

    ALLOWED_INACTIVE ke alawa koi bhi Main Setup leaf _coming_soon closure
    (qualname '_coming_soon.<locals>.go') resolve nahi kare. Conditional-import
    fallback bhi isi qualname me girta hai, isliye koi UI module tootega
    (fa_sub_forms_ui-class bug) to ye test red hoga.
    """
    from HMS_py.ui.shell import _form_registry

    registry = _form_registry()
    normed = {_norm(k): v for k, v in registry.items()}
    exempt = {_norm(x) for x in ALLOWED_MISSING | ALLOWED_INACTIVE}

    leaves = _load_mainsetup_leaves()
    downgraded = sorted(
        leaf for leaf in leaves
        if _norm(leaf) in normed
        and _norm(leaf) not in exempt
        and getattr(normed[_norm(leaf)], "__qualname__", "")
        == _COMING_SOON_QUALNAME
    )
    assert not downgraded, (
        f"{len(downgraded)} Main Setup leaves _coming_soon() par downgrade ho gaye:\n"
        + "\n".join(f"  - {m}" for m in downgraded)
        + "\n(ya to real UI wire karo, ya evidence ke saath ALLOWED_INACTIVE me doc karo)"
    )
