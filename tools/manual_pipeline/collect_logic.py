"""MenuHelp + code -> per-module _logic.json (DB READ-ONLY).

Usage:
    python -m HMS_py.tools.manual_pipeline.collect_logic --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import json
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3]))

from HMS_py.tools.manual_pipeline.modules_map import Module, get


def _xnorm(v) -> str:
    """Paren-preserving normalize (KI-10): `_norm_caption` jaisi cleanup
    (CR/LF, '- HMS' suffix, double-space) par trailing '(...)' NOT stripped.

    `_norm_caption` se drift-guard test: test_classify_norm_collision_exact_precedence.
    """
    s = str(v or "").replace("\r", "").replace("\n", "")
    s = s.replace("- HMS_py", "").replace("- HMS", "").strip()
    while "  " in s:
        s = s.replace("  ", " ")
    return s.lower()


def classify(rows: list[dict], mod: Module) -> dict:
    """Split menuHelp rows into Masters/Operations/Reports/hidden/other.

    Rules (spec §3 + HMS_MenuHelp_Wise README):
      flag R -> reports;  flag V -> hidden;
      paren-preserving EXACT caption match (case-insensitive) in curated
      masters/operations leaves first — KI-10 fix: _norm_caption strips
      trailing "(...)" so "SMS (API)/(Scheduled)/(Conditional)/SMS" sab
      "sms" ban jaate the aur curated masters leaf operations bucket
      swallow kar leti thi;
      then normalized caption in curated leaves['masters'] (paren leaves
      ka stripped norm legacy caps me EXCLUDE hota hai — collision root)
      OR module in master_modules -> masters;
      caption in/containing curated leaves['operations'] (variants e.g.
      "Walk In Check In") -> operations;  everything else -> other
      (counted, NEVER dropped).
    """
    from HMS_py.core.menu_help import _norm_caption

    masters_leaves = mod.leaves.get("masters", [])
    oper_leaves = mod.leaves.get("operations", [])
    master_exact = {_xnorm(c) for c in masters_leaves}
    oper_exact = {_xnorm(c) for c in oper_leaves}
    # paren leaves = exact-match only; stripped norm collision cause hai
    master_caps = {_norm_caption(c) for c in masters_leaves
                   if _norm_caption(c) == _xnorm(c)}
    oper_caps = {_norm_caption(c) for c in oper_leaves
                 if _norm_caption(c) == _xnorm(c)}
    out = {"masters": [], "operations": [], "reports": [],
           "hidden": [], "other": []}
    for r in rows:
        flag = (r.get("flag") or "").upper()
        cap = r.get("caption") or ""
        disp_x = _xnorm(r.get("caption_disp") or "")
        if flag == "V":
            out["hidden"].append(r)
        elif flag == "R":
            out["reports"].append(r)
        elif disp_x in master_exact:
            out["masters"].append(r)
        elif disp_x in oper_exact:
            out["operations"].append(r)
        elif cap in master_caps or r.get("module") in mod.master_modules:
            out["masters"].append(r)
        elif cap in oper_caps or any(o and o in cap for o in oper_caps):
            out["operations"].append(r)
        else:
            out["other"].append(r)
    return out


def _registry_hits(mod: Module) -> dict:
    """Curated leaves jo actually shell registry me exist karte hain."""
    from HMS_py.ui.shell import _form_registry
    reg = {k.strip().lower() for k in _form_registry()}
    out = {}
    for layer, leaves in mod.leaves.items():
        out[layer] = [l for l in leaves if l.strip().lower() in reg]
    return out


def _build(mod: Module, rows: list[dict], registry_hits: dict | None = None) -> dict:
    layers = classify(rows, mod)
    return {
        "module": mod.key,
        "name": mod.name,
        "sidebar": mod.sidebar,
        "generated_by": "collect_logic.py",
        "menuhelp": {
            "masters": layers["masters"],
            "operations": layers["operations"],
            "reports": layers["reports"],
            "hidden": layers["hidden"],
            "unclassified": layers["other"],
            "counts": {**{k: len(v) for k, v in layers.items()},
                       "unclassified": len(layers["other"])},
        },
        "registry_hits": registry_hits if registry_hits is not None
                         else {"masters": [], "operations": [], "reports": []},
        "core_files": list(mod.core_files),
        "module_names": list(mod.module_names),
    }


def collect(module_key: str, username: str = "SA") -> dict:
    from HMS_py.core import menu_help as mh
    mod = get(module_key)
    mh.clear_cache()
    tree = mh.module_tree(username=username)
    rows: list[dict] = []
    for name in mod.module_names:
        rows.extend(tree.get(name, []))
    hits = _registry_hits(mod)
    return _build(mod, rows, registry_hits=hits)


def write_json(mod: Module, rows: list[dict], out_path: pathlib.Path,
               registry_hits: dict | None = None) -> None:
    payload = _build(mod, rows, registry_hits)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(payload, indent=2, ensure_ascii=False),
                        encoding="utf-8")


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True, help="e.g. 04_FrontOffice")
    ap.add_argument("--username", default="SA")
    ap.add_argument("--out", default=None)
    a = ap.parse_args(argv)
    payload = collect(a.module, a.username)
    out = pathlib.Path(a.out) if a.out else (
        pathlib.Path(__file__).resolve().parents[2]
        / "MODULE_MANUALS_2026" / a.module / "_logic.json")
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(payload, indent=2, ensure_ascii=False),
                   encoding="utf-8")
    c = payload["menuhelp"]["counts"]
    print(f"{a.module}: masters={c['masters']} ops={c['operations']} "
          f"reports={c['reports']} hidden={c['hidden']} "
          f"other={c['other']} -> {out}")
    if c["other"]:
        print(f"NOTE: {c['other']} rows in 'other' bucket — manual me jaano")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
