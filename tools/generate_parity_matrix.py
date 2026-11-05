#!/usr/bin/env python3
"""VB6 ↔ Python Parity Matrix Generator

Scans VB6 forms (LOGIC/VISUALBASIC/*.frm), extracts captions and table references,
probes database for table existence, and cross-references with Python shell registry.

Outputs: VB6_PARITY_MATRIX.txt at project root.
"""

import os
import re
import sys
import json
import difflib
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent
VB6_DIR = PROJECT_ROOT / "LOGIC" / "VISUALBASIC"
SHELL_PY = PROJECT_ROOT / "HMS_py" / "ui" / "shell" / "shell.py"
QA_DIR = PROJECT_ROOT / "_qa"
LIVE_TABLES_JSON = QA_DIR / "live_tables.json"

# Tables known to exist in DB (from live checks) — FALLBACK ONLY
# Used only when live DB probe fails and _qa/live_tables.json is missing.
KNOWN_TABLES = {
    # Front Office
    "GuestProf", "GuestFolio", "RoomOcc", "RoomMast", "RoomStatus", "RoomCategory",
    "GuestStatus", "GuestHistory", "GuestServices", "Depart", "Booking", "PlanDetails",
    "FolioLog", "PayCharge", "FixCharge", "MarketSegment", "BusinessSource", "Country",
    "State", "City", "Area", "CompanyMaster", "ForexMaster", "PackageMaster", "SeasonMaster",
    "FeatureMast", "Sundry", "VoucherSundry", "MemberMast", "MemCategory", "FacilityMast",
    # POS
    "POSSale", "POSKOT", "POSItem", "POSTable", "POSMaster", "POSDelivery", "POSPacking",
    "POSNA", "POSHall", "POSHappy", "POSDirectSale", "POSDirectItem", "KOTEntry",
    "KitchenClearStk", "Stock", "Purchase", "PurchaseReturn", "Issue", "StockAdjust",
    "Unit", "Supplier", "ItemGroup", "ItemCategory", "ConsumptionMaster", "LocationMaster",
    "OpeningStock", "ShiftMaster", "EnviroInventry", "SchemeMaster", "HappyHours",
    "ComboPack", "NCType", "CustomerHistory", "DeliveryBoy", "SessionMaster", "RateGroupMaster",
    "OpenItemConsumption", "OutletBillSundry", "ServerMaster", "TableMaster", "MenuGroup",
    "MenuCategory", "MenuItem", "MenuItemRate", "RateGroupMaster",
    # Finance
    "Ledger", "AcGroup", "NarrMast", "Voucher", "LedgerAdj", "TDSCat", "TDSCertificate",
    "TDSChallan", "Vtype", "Enviro", "Country", "State", "City", "CompMast",
    # Inventory
    "Item", "ItemGroup", "ItemCategory", "UnitMaster", "PartyMaster", "Department",
    "Purchase", "PurchaseReturn", "Issue", "StockAdjust", "StockReceive", "Indent1",
    "ConsumptionMaster", "LocationMaster", "OpeningStock", "ShiftMaster",
    # HR
    "EmployeeMast", "EmpCategory", "Designation", "HolidayMast", "Attendance", "Salary",
    # EPABX
    "TelCallTypeMast", "TelExtensionMast", "TelCallCodeMast", "TelCallControlMast",
    # Utility
    "UserMast", "UserPermission", "RWParameter", "CompMast", "SundryMast", "VoucherSundrySetting",
    "BlockMast", "SeasonMaster", "PlanMaster", "FeatureMast", "PaymentType",
    # Reports
    "SaleMIS", "GuestBirthAnniv",
}

# Tables known ABSENT (BLOCKED-TBL) — FALLBACK ONLY
# BookingInquiry and HallBook removed — they EXIST in live DB.
BLOCKED_TABLES = {
    "CateringBook", "EventMast", "HallBill", "BanquetSundry", "SmartCard",
    "RewardPoint", "TelCall", "DoorLock", "EInvoice",
    "MemberSMS", "JobScheduler", "TouchScreen", "CateringBooking",
}

# SQL keywords / noise to ignore when checking table references
SQL_KEYWORDS = {
    "SELECT", "WHERE", "AND", "OR", "ORDER", "BY", "GROUP", "HAVING",
    "LEFT", "RIGHT", "INNER", "OUTER", "ON", "AS", "SET", "VALUES",
    "FROM", "INSERT", "INTO", "UPDATE", "JOIN", "DELETE", "CREATE",
    "TABLE", "INDEX", "VIEW", "PROC", "FUNCTION", "TRIGGER",
    "TOP", "DISTINCT", "COUNT", "SUM", "MAX", "MIN", "AVG",
    "CASE", "WHEN", "THEN", "ELSE", "END", "IS", "NULL", "NOT",
    "IN", "LIKE", "BETWEEN", "EXISTS", "UNION", "ALL", "DISTINCT",
}

# Explicit alias map: VB6 caption -> registry key (or list of candidates)
# First candidate that exists in registry_keys is used.
ALIAS_MAP = {
    "T.D.S.Category Entry": "T.D.S. Category",
    "Environment Setting": "FA Environment",
    "T.D.S.Challan Entry": "T.D.S. Challan Entry",
    "T.D.S.Certificate Entry": "T.D.S. Certificate Entry",
}


def _norm(s: str) -> str:
    """Normalize string: lowercase, keep only alphanumeric."""
    return re.sub(r"[^a-z0-9]", "", s.lower())


def load_live_tables() -> set[str] | None:
    """Try to fetch live table list from SQL Server.
    Returns set of table names on success, None on failure."""
    try:
        # Ensure project root is on sys.path for `from core import db`
        sys.path.insert(0, str(PROJECT_ROOT))
        from core import db
        cn = db.connect()
        cur = cn.cursor()
        cur.execute("SELECT name FROM sys.tables ORDER BY name")
        tables = {row[0] for row in cur.fetchall()}
        cn.close()
        return tables
    except Exception as e:
        print(f"Warning: Live DB probe failed: {e}")
        return None


def get_live_table_set() -> set[str]:
    """Get the live table set, with fallback chain:
    1. Live DB probe
    2. _qa/live_tables.json (cached from previous successful probe)
    3. Hardcoded KNOWN_TABLES ∪ BLOCKED_TABLES (legacy fallback)
    """
    # Try live DB
    live = load_live_tables()
    if live is not None:
        # Cache to _qa/live_tables.json
        QA_DIR.mkdir(parents=True, exist_ok=True)
        with open(LIVE_TABLES_JSON, "w", encoding="utf-8") as f:
            json.dump(sorted(live), f, indent=2)
        print(f"Live DB probe succeeded: {len(live)} tables cached to {LIVE_TABLES_JSON}")
        return live

    # Fallback to cached JSON
    if LIVE_TABLES_JSON.exists():
        try:
            with open(LIVE_TABLES_JSON, "r", encoding="utf-8") as f:
                cached = set(json.load(f))
            print(f"Using cached live tables from {LIVE_TABLES_JSON}: {len(cached)} tables")
            return cached
        except Exception as e:
            print(f"Warning: Failed to read cached live tables: {e}")

    # Final fallback: hardcoded sets
    print("Warning: Using hardcoded KNOWN_TABLES/BLOCKED_TABLES fallback (stale)")
    return KNOWN_TABLES | BLOCKED_TABLES


def extract_vb6_forms(live_tables: set[str]):
    """Extract form captions and table references from .frm files."""
    # Build case-insensitive lookup for live tables
    live_lower = {t.lower(): t for t in live_tables}
    # Build whitelist for filtering: only BLOCKED_TABLES (known absent) + live tables
    # KNOWN_TABLES is stale (VB6-era names) and should NOT be used for filtering
    blocked_upper = {t.upper() for t in BLOCKED_TABLES}
    blocked_lower = {t.lower() for t in BLOCKED_TABLES}

    forms = []
    for frm_file in VB6_DIR.glob("*.frm"):
        try:
            content = frm_file.read_text(encoding="latin-1", errors="ignore")
        except Exception as e:
            print(f"Warning: Could not read {frm_file}: {e}")
            continue

        # Extract Caption (usually line 2-4: Caption = "...")
        caption_match = re.search(r'Caption\s*=\s*"([^"]+)"', content)
        caption = caption_match.group(1) if caption_match else frm_file.stem

        # Extract table references from SQL
        candidates = []  # keep original casing from .frm
        sql_patterns = [
            r'FROM\s+\[?(\w+)\]?',
            r'INSERT\s+INTO\s+\[?(\w+)\]?',
            r'UPDATE\s+\[?(\w+)\]?',
            r'JOIN\s+\[?(\w+)\]?',
            r'INTO\s+\[?(\w+)\]?',
        ]
        for pattern in sql_patterns:
            matches = re.findall(pattern, content, re.IGNORECASE)
            for m in matches:
                if m.upper() not in SQL_KEYWORDS:
                    candidates.append(m)

        # Also extract from quoted strings (dynamic SQL in VB6)
        # Find double-quoted strings that contain SQL keywords, then extract whitelisted identifiers
        quoted_strings = re.findall(r'"([^"]*)"', content)
        for qs in quoted_strings:
            # Only process strings that look like SQL
            qs_upper = qs.upper()
            if any(kw in qs_upper for kw in ('SELECT', 'INSERT', 'UPDATE', 'DELETE', 'FROM', 'JOIN', 'WHERE')):
                # Extract identifiers from this string that are in our whitelist
                words = re.findall(r'\b(\w+)\b', qs)
                for w in words:
                    if w.lower() in blocked_lower and w.upper() not in SQL_KEYWORDS:
                        candidates.append(w)

        # Keep only candidates that are in BLOCKED_TABLES whitelist OR exist in live DB (case-insensitive)
        filtered_candidates = [
            c for c in candidates
            if c.upper() in blocked_upper or c.lower() in live_lower
        ]

        # Separate into existing tables (with correct live casing) and missing tables
        tables = []
        missing_tables = []
        for c in filtered_candidates:
            cl = c.lower()
            if cl in live_lower:
                tables.append(live_lower[cl])  # use live DB casing
            else:
                missing_tables.append(c)  # keep original .frm casing for reporting

        forms.append({
            "file": frm_file.name,
            "caption": caption,
            "tables": sorted(set(tables)),
            "missing_tables": sorted(set(missing_tables)),
            "has_content": len(content) > 1000,
        })
    return forms


def get_shell_registry():
    """Extract registry keys from shell.py _form_registry()."""
    content = SHELL_PY.read_text(encoding="utf-8")
    registry_match = re.search(
        r'def _form_registry\(\) -> dict\[str, callable\]:.*?return\s+(\{.*?\})\s*(?:def|class|\$)',
        content, re.DOTALL | re.MULTILINE
    )
    if not registry_match:
        return set()
    registry_text = registry_match.group(1)
    keys = re.findall(r'"([^"]+)"\s*:', registry_text)
    keys += re.findall(r"'([^']+)'\s*:", registry_text)
    return set(keys)


def find_registry_match(caption: str, registry_keys: set[str],
                        reg_index: dict[str, str]) -> tuple[str | None, str]:
    """Find best registry match for a VB6 caption.

    Returns: (matched_registry_key, match_type)
    match_type: 'exact', 'normalised', 'alias', 'fuzzy', or 'none'
    """
    # 1. Exact match
    if caption in registry_keys:
        return caption, "exact"

    # 2. Normalized exact match
    norm_caption = _norm(caption)
    if norm_caption in reg_index:
        return reg_index[norm_caption], "normalised"

    # 3. Explicit alias map
    if caption in ALIAS_MAP:
        alias_target = ALIAS_MAP[caption]
        if isinstance(alias_target, list):
            for candidate in alias_target:
                if candidate in registry_keys:
                    return candidate, "alias"
        else:
            if alias_target in registry_keys:
                return alias_target, "alias"

    # 4. Fuzzy match on normalized strings
    norm_keys = list(reg_index.keys())
    close = difflib.get_close_matches(norm_caption, norm_keys, n=1, cutoff=0.86)
    if close:
        return reg_index[close[0]], "fuzzy"

    return None, "none"


def find_near_matches(caption: str, registry_keys: set[str], n: int = 2) -> list[str]:
    """Find up to n near matches for MISSING section (cutoff 0.6 on normalized)."""
    norm_caption = _norm(caption)
    norm_keys = {_norm(k): k for k in registry_keys}
    close = difflib.get_close_matches(norm_caption, list(norm_keys.keys()), n=n, cutoff=0.6)
    return [norm_keys[k] for k in close]


def probe_table_exists(table_name: str, live_tables: set[str]) -> bool | None:
    """Check if table exists using live table set first."""
    if table_name in live_tables:
        return True
    if table_name in BLOCKED_TABLES:
        return False
    if table_name in KNOWN_TABLES:
        return True
    return None  # Unknown


def main():
    print("Generating VB6 ↔ Python Parity Matrix...")

    # Get live table set first (also caches to _qa/live_tables.json)
    live_tables = get_live_table_set()

    forms = extract_vb6_forms(live_tables)
    registry_keys = get_shell_registry()

    # Build normalized index for fuzzy matching
    reg_index = {_norm(k): k for k in registry_keys}

    print(f"Found {len(forms)} VB6 forms")
    print(f"Found {len(registry_keys)} Python registry entries")
    print(f"Live table set: {len(live_tables)} tables")

    # Categorize
    done = []
    done_fuzzy = []
    partial = []
    ui_only = []
    blocked = []
    missing = []

    for form in forms:
        caption = form["caption"]
        tables = form["tables"]
        missing_tables = form["missing_tables"]

        # Find registry match
        matched_key, match_type = find_registry_match(caption, registry_keys, reg_index)
        in_registry = matched_key is not None

        # Check for blocked tables (missing from live DB)
        blocked_tables_for_form = missing_tables

        has_blocked = len(blocked_tables_for_form) > 0

        # Determine status (BLOCKED-TBL takes precedence over DONE)
        if has_blocked:
            status = "BLOCKED-TBL"
            form["blocked_tables"] = blocked_tables_for_form
            blocked.append(form)
        elif in_registry:
            if match_type == "fuzzy":
                status = "DONE-FUZZY"
                done_fuzzy.append(form)
            elif match_type in ("exact", "normalised", "alias"):
                if form["has_content"]:
                    status = "DONE"
                    done.append(form)
                else:
                    status = "UI-ONLY"
                    ui_only.append(form)
            else:
                status = "MISSING"
                missing.append(form)
        else:
            status = "MISSING"
            missing.append(form)

        form["status"] = status
        form["in_registry"] = in_registry
        form["matched_key"] = matched_key if matched_key else "-"
        form["match_type"] = match_type

    # Write output
    output_path = PROJECT_ROOT / "VB6_PARITY_MATRIX.txt"
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("VB6 ↔ PYTHON PARITY MATRIX\n")
        f.write("=" * 80 + "\n\n")
        f.write(f"Generated: {__import__('datetime').datetime.now().isoformat()}\n")
        f.write(f"VB6 Forms: {len(forms)} | Registry Entries: {len(registry_keys)} | Live Tables: {len(live_tables)}\n\n")

        f.write("SUMMARY\n")
        f.write("-" * 40 + "\n")
        f.write(f"DONE:         {len(done):4d}\n")
        f.write(f"DONE-FUZZY:   {len(done_fuzzy):4d}\n")
        f.write(f"PARTIAL:      {len(partial):4d}\n")
        f.write(f"UI-ONLY:      {len(ui_only):4d}\n")
        f.write(f"BLOCKED-TBL:  {len(blocked):4d}\n")
        f.write(f"MISSING:      {len(missing):4d}\n")
        f.write(f"TOTAL:        {len(forms):4d}\n\n")

        for section_name, section_forms in [
            ("DONE", done),
            ("DONE-FUZZY", done_fuzzy),
            ("PARTIAL", partial),
            ("UI-ONLY", ui_only),
            ("BLOCKED-TBL", blocked),
            ("MISSING", missing),
        ]:
            f.write(f"\n{section_name} ({len(section_forms)})\n")
            f.write("=" * 80 + "\n")
            for form in sorted(section_forms, key=lambda x: x["caption"]):
                tables_str = ", ".join(form["tables"]) if form["tables"] else "(no tables found)"
                reg_marker = "✓" if form["in_registry"] else "✗"
                reg_key = form["matched_key"]
                near = ""
                if section_name == "MISSING":
                    near_matches = find_near_matches(form["caption"], registry_keys)
                    near = f" | near: {', '.join(near_matches) if near_matches else '-'}"
                blocked_info = ""
                if section_name == "BLOCKED-TBL" and form.get("blocked_tables"):
                    blocked_info = f" | BLOCKED BY: {', '.join(form['blocked_tables'])}"
                f.write(f"  [{reg_marker}] {form['caption']:<50} | {form['file']:<35} | Tables: {tables_str} | Registry: {reg_key}{blocked_info}{near}\n")

    print(f"\nParity matrix written to {output_path}")
    print(f"\nSummary:")
    print(f"  DONE:         {len(done)}")
    print(f"  DONE-FUZZY:   {len(done_fuzzy)}")
    print(f"  PARTIAL:      {len(partial)}")
    print(f"  UI-ONLY:      {len(ui_only)}")
    print(f"  BLOCKED-TBL:  {len(blocked)}")
    print(f"  MISSING:      {len(missing)}")
    print(f"  TOTAL:        {len(forms)}")


if __name__ == "__main__":
    main()