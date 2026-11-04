#!/usr/bin/env python3
"""MenuHelp -> module-wise, option-by-option migration checklist.

Source of truth: live `MenuHelp` table (the VB6 menu tree with Opt1..Opt4 levels,
Flag N=group / E=executable form / R=report, Module_Name, Param_Str rights mask).

Cross-references:
  - LOGIC/VISUALBASIC/*.frm   -> VB6 form file for each option caption
  - ui/shell.py:_form_registry() -> Python wiring status

Outputs:
  MENU_MODULE_CHECKLIST.md   (human checklist, grouped by module)
  _qa/menu_checklist.json    (machine-readable, for later tooling)

Run:  python tools/generate_menu_checklist.py
"""

from __future__ import annotations

import difflib
import json
import re
import sys
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
VB6_DIR = PROJECT_ROOT / "LOGIC" / "VISUALBASIC"
SHELL_PY = PROJECT_ROOT / "HMS_py" / "ui" / "shell" / "shell.py"
OUT_MD = PROJECT_ROOT / "MENU_MODULE_CHECKLIST.md"
OUT_JSON = PROJECT_ROOT / "_qa" / "menu_checklist.json"

# Explicit caption -> registry key aliases (VB6 menu wording vs shell registry wording)
ALIAS_MAP = {
    "T.D.S.Category Entry": "T.D.S. Category",
    "Environment Setting": "FA Environment",
    "T.D.S.Challan Entry": "T.D.S. Challan Entry",
    "T.D.S.Certificate Entry": "T.D.S. Certificate Entry",
    "Adjustment Delete": "Adjustment Deletion",
    "Cheque/DD Clearing Entry": "Cheque Clearing",
    "Profit And Loss A/c": "Profit And Loss Account",
    "Trial Balance": "Trial Balance",
}

# MenuHelp Module_Name -> friendly module label (fallback = Module_Name)
MODULE_LABELS = {
    "FA": "Finance",
    "Mast": "Main Setup",
    "GEN": "General Setup",
    "FO": "Front Office",
    "Pos": "Point of Sale",
    "HL": "Banquet",
    "CCenter": "Inventory",
    "HK": "House Keeping",
    "HR": "HR / Payroll",
    "Mem": "Membership",
    "Util": "Utility",
    "Rep": "Reports",
}


def _norm(s: str) -> str:
    return re.sub(r"[^a-z0-9]", "", (s or "").lower())


def load_menu_rows(user: str = "SA") -> list[dict]:
    sys.path.insert(0, str(PROJECT_ROOT))
    from core import db

    cn = db.connect()
    cur = cn.cursor()
    cur.execute(
        """SELECT Code, [Option], Opt1, Opt2, Opt3, Opt4, Module_Name, Flag,
                  Param_Str, Menu_Index, Menu_Visible, ShowInList, OutletCode
           FROM MenuHelp WHERE UserName = ? ORDER BY Code""",
        user,
    )
    cols = [d[0] for d in cur.description]
    rows = [dict(zip(cols, r)) for r in cur.fetchall()]
    cn.close()
    return rows


def load_vb6_captions() -> dict[str, str]:
    """normalized caption -> .frm filename (first Caption in file)."""
    out: dict[str, str] = {}
    for frm in sorted(VB6_DIR.glob("*.frm")):
        try:
            head = frm.read_text(encoding="latin-1", errors="ignore")[:4000]
        except OSError:
            continue
        m = re.search(r'Caption\s*=\s*"([^"]+)"', head)
        cap = m.group(1) if m else frm.stem
        out.setdefault(_norm(cap), frm.name)
        out.setdefault(_norm(frm.stem), frm.name)
    return out


def load_registry_keys() -> list[str]:
    """Collect every literal dict key used inside `_form_registry()`.

    AST-based: string keys of all dict literals (including nested `**{...}`
    spreads) inside the function body. This survives lambdas, line wrapping
    and tuple-valued entries, unlike a regex over the source text.
    """
    import ast

    try:
        tree = ast.parse(SHELL_PY.read_text(encoding="utf-8"))
    except (OSError, SyntaxError) as exc:  # pragma: no cover - tooling guard
        print(f"WARN: cannot parse {SHELL_PY}: {exc}", file=sys.stderr)
        return []

    func = next(
        (
            node
            for node in ast.walk(tree)
            if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef))
            and node.name == "_form_registry"
        ),
        None,
    )
    if func is None:
        return []

    keys: set[str] = set()
    for node in ast.walk(func):
        if not isinstance(node, ast.Dict):
            continue
        for key in node.keys:
            if isinstance(key, ast.Constant) and isinstance(key.value, str):
                keys.add(key.value)

    # `_form_registry()` also spreads the report caption map at runtime
    # (`**{cap: _open_report(cap) for cap in menu_caption_map()}`), which the
    # AST cannot see because those keys are computed. Ask the engine directly.
    try:
        sys.path.insert(0, str(PROJECT_ROOT))
        from HMS_py.core.reporting.reports import menu_caption_map

        keys.update(menu_caption_map())
    except Exception as exc:  # pragma: no cover - tooling guard
        print(f"WARN: report caption map unavailable: {exc}", file=sys.stderr)

    return sorted(keys)


def match_registry(caption: str, reg_norm: dict[str, str], reg_keys: list[str]) -> tuple[str | None, str]:
    n = _norm(caption)
    if not n:
        return None, "none"
    if n in reg_norm:
        return reg_norm[n], "exact"
    alias = ALIAS_MAP.get(caption)
    if alias and _norm(alias) in reg_norm:
        return reg_norm[_norm(alias)], "alias"
    close = difflib.get_close_matches(n, list(reg_norm), n=1, cutoff=0.86)
    if close:
        return reg_norm[close[0]], "fuzzy"
    return None, "none"


LEAF_FLAGS = {"E", "R", "V"}


def level_of(row: dict) -> int:
    """1 = top-level module, 2 = submenu, 3+ = leaf item.

    Opt2==0 but Opt3>0 happens for a handful of special entries; they are
    treated as leaves under their top-level module ("Special" submenu).
    """
    if (row.get("Opt3") or 0) > 0 or (row.get("Opt4") or 0) > 0:
        return 3
    if (row.get("Opt2") or 0) > 0:
        return 2
    return 1


def main() -> None:
    rows = load_menu_rows("SA")
    vb6 = load_vb6_captions()
    reg_keys = load_registry_keys()
    reg_norm = {_norm(k): k for k in reg_keys}

    # group tree
    l1 = [r for r in rows if level_of(r) == 1]
    opt1_name = {(r["Opt1"] or 0): (r["Option"] or "").strip() for r in l1}
    opt2_name = {
        ((r["Opt1"] or 0), (r["Opt2"] or 0)): (r["Option"] or "").strip()
        for r in rows
        if (r["Opt2"] or 0) > 0 and (r["Opt3"] or 0) == 0
    }

    out_items: list[dict] = []

    for r in rows:
        if level_of(r) < 3:
            continue
        flag = (r["Flag"] or "").strip().upper()
        if flag not in LEAF_FLAGS:
            continue
        caption = (r["Option"] or "").strip()
        mod = (r["Module_Name"] or "").strip()
        reg_key, match_type = match_registry(caption, reg_norm, reg_keys)
        frm = vb6.get(_norm(caption))
        if flag == "R":
            status = "REPORT"
        elif reg_key and match_type in ("exact", "alias"):
            status = "DONE"
        elif reg_key and match_type == "fuzzy":
            status = "DONE?"
        else:
            status = "MISSING"
        out_items.append(
            {
                "code": r["Code"],
                "level": 3,
                "flag": flag,
                "option": caption,
                "module": mod,
                "param": (r["Param_Str"] or "").strip(),
                "vb6_form": frm or "",
                "registry_key": reg_key or "",
                "match": match_type,
                "status": status,
                "opt1": r.get("Opt1") or 0,
                "opt2": r.get("Opt2") or 0,
                "opt3": r.get("Opt3") or 0,
                "outlet": (r.get("OutletCode") or "").strip(),
            }
        )

    sections: dict[str, dict] = {}
    for it in out_items:
        top = opt1_name.get(it["opt1"], "Other")
        sub = opt2_name.get((it["opt1"], it["opt2"]), "Special")
        sections.setdefault(top, {}).setdefault(sub, []).append(it)

    # summary
    def counts(items):
        c = {"DONE": 0, "DONE?": 0, "REPORT": 0, "MISSING": 0}
        for i in items:
            c[i["status"]] = c.get(i["status"], 0) + 1
        return c

    total = counts(out_items)
    lines: list[str] = []
    lines.append("# MENU MODULE CHECKLIST — option by option")
    lines.append("")
    lines.append("Generated from the live `MenuHelp` table (user `SA`), cross-referenced with")
    lines.append("`LOGIC/VISUALBASIC/*.frm` captions and `ui/shell.py:_form_registry()`.")
    lines.append("")
    lines.append("**Legend** — `E` executable form, `R` report, `N` group. Status:")
    lines.append("`DONE` wired exact/alias · `DONE?` wired by fuzzy caption match (verify) ·")
    lines.append("`REPORT` report entry (engine present, per-report parity not verified) ·")
    lines.append("`MISSING` no Python wiring.")
    lines.append("")
    lines.append("## Summary")
    lines.append("")
    lines.append("| Module | Options | DONE | DONE? | REPORT | MISSING |")
    lines.append("|---|---:|---:|---:|---:|---:|")
    for top, subs in sections.items():
        items = [i for s in subs.values() for i in s]
        c = counts(items)
        lines.append(
            f"| {top} | {len(items)} | {c['DONE']} | {c['DONE?']} | {c['REPORT']} | {c['MISSING']} |"
        )
    lines.append(
        f"| **TOTAL** | **{len(out_items)}** | **{total['DONE']}** | **{total['DONE?']}** | "
        f"**{total['REPORT']}** | **{total['MISSING']}** |"
    )
    lines.append("")

    for top, subs in sections.items():
        items = [i for s in subs.values() for i in s]
        c = counts(items)
        lines.append(f"## {top}  ({len(items)} options · {c['MISSING']} missing)")
        lines.append("")
        for sub, sub_items in subs.items():
            lines.append(f"### {top} → {sub}")
            lines.append("")
            lines.append("| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |")
            lines.append("|---:|:--:|---|---|---|---|---|---|")
            for i in sub_items:
                target = i["registry_key"] or "—"
                lines.append(
                    f"| {i['code']} | {i['flag']} | {i['option']} | {i['module']} | "
                    f"{i['param']} | {i['vb6_form'] or '—'} | {i['status']} | {target} |"
                )
            lines.append("")

    OUT_MD.write_text("\n".join(lines), encoding="utf-8")
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(out_items, indent=2, ensure_ascii=False), encoding="utf-8")

    print(f"MenuHelp rows (SA): {len(rows)} | leaf options: {len(out_items)}")
    print(f"Summary: {total}")
    print(f"Written: {OUT_MD}")
    print(f"Written: {OUT_JSON}")


if __name__ == "__main__":
    main()
