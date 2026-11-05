"""Migration helper: move core modules into domain packages.

Used once to reorganize the codebase. Run from the project root.
"""
from __future__ import annotations

import os
import shutil

ROOT = os.path.abspath(os.path.dirname(__file__))
CORE = os.path.join(ROOT, "core")


def move(domain: str, files: list[str]) -> int:
    target = os.path.join(CORE, domain)
    os.makedirs(target, exist_ok=True)
    moved = 0
    for f in files:
        src = os.path.join(CORE, f)
        if not os.path.isfile(src):
            continue
        shutil.move(src, os.path.join(target, f))
        moved += 1
    return moved


FRONT_OFFICE = [
    "banquet_masters.py",
    "banquet_ops.py",
    "businesssource.py",
    "city.py",
    "company.py",
    "company_profile.py",
    "companymaster.py",
    "booking.py",
    "checkin.py",
    "checkout.py",
    "hall_booking.py",
    "fo_ops.py",
    "folio.py",
    "guest_folio.py",
    "guest_services.py",
    "menu.py",
    "menu_help.py",
    "packagemaster.py",
    "plans.py",
    "room_occ.py",
    "roomcategory.py",
    "roommaster.py",
    "roomstatus.py",
    "reservation.py",
    "narr.py",
    "state.py",
]

BILLING = [
    "account_merge.py",
    "acgroup.py",
    "area.py",
    "expenseentry.py",
    "fa_ledger_ops.py",
    "fa_masters_ops.py",
    "fa_reports.py",
    "fa_tds_ops.py",
    "fa_voucher.py",
    "facility_billing.py",
    "fixcharge.py",
    "forexmaster.py",
    "ledger.py",
    "marketsegment.py",
    "member_billing.py",
    "members_masters.py",
    "sundry_type.py",
    "taxmaster.py",
    "taxstru.py",
    "tdscat.py",
    "tdscerti.py",
    "unit.py",
    "voucher_type.py",
    "validation.py",
]

INVENTORY = [
    "inventory.py",
    "item.py",
    "item_rate.py",
    "purchase.py",
]

HR = [
    "hr_masters.py",
    "hr_payroll.py",
]

SECURITY = [
    "auth.py",
    "door_lock.py",
    "godrej_locks.py",
    "smartcard.py",
    "smartcard_ops.py",
    "usermaster.py",
]

MESSAGING = [
    "sms_comm.py",
    "sms_enviro.py",
    "sms_http.py",
    "messaging_ops.py",
]

EPABX = [
    "epabx_masters.py",
    "epabx_ops.py",
]

SETUP = [
    "comport_config.py",
    "country.py",
    "depart.py",
    "db_backup.py",
    "db_maintenance.py",
    "general_setup.py",
    "sys_config.py",
    "venue.py",
    "year_end.py",
]

REPORTING = [
    "fa_reports.py",
    "reports.py",
    "revenue_budget.py",
    "rwparameter.py",
    "scheme.py",
    "seasonmaster.py",
    "tally_export.py",
    "nightaudit.py",
]

API = [
    "http_client.py",
    "url_utils.py",
]


if __name__ == "__main__":
    total = 0
    total += move("front_office", FRONT_OFFICE)
    total += move("billing", BILLING)
    total += move("inventory", INVENTORY)
    total += move("hr", HR)
    total += move("security", SECURITY)
    total += move("messaging", MESSAGING)
    total += move("epabx", EPABX)
    total += move("setup", SETUP)
    total += move("reporting", REPORTING)
    total += move("api", API)
    print(f"Moved {total} files into domain packages.")
