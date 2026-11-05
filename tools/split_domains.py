"""Split legacy flat core/ files into domain subpackages.

Run from project root. Mirrors files by name into core/<domain>/.
Then a second pass moves the clearly-independent domains.
"""
from __future__ import annotations

import os
import shutil

ROOT = os.getcwd()
CORE_LEGACY = os.path.join(ROOT, "core")
CORE = os.path.join(ROOT, "HMS_py", "core")


def move(domain: str, files: list[str]) -> int:
    target = os.path.join(CORE, domain)
    os.makedirs(target, exist_ok=True)
    moved = 0
    for f in files:
        src = os.path.join(CORE_LEGACY, f)
        if os.path.isfile(src):
            shutil.move(src, os.path.join(target, f))
            moved += 1
    return moved


if __name__ == "__main__":
    front_office = [
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
        "enviro.py",
        "guestprof.py",
        "gueststatus.py",
        "featuremast.py",
        "fa_enviro.py",
    ]
    billing = [
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
    inventory = [
        "inventory.py",
        "item.py",
        "item_rate.py",
        "purchase.py",
    ]
    hr = [
        "hr_masters.py",
        "hr_payroll.py",
    ]
    security = [
        "auth.py",
        "door_lock.py",
        "godrej_locks.py",
        "smartcard.py",
        "smartcard_ops.py",
        "usermaster.py",
    ]
    messaging = [
        "sms_comm.py",
        "sms_enviro.py",
        "sms_http.py",
        "messaging_ops.py",
    ]
    epabx = [
        "epabx_masters.py",
        "epabx_ops.py",
    ]
    setup = [
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
    reporting = [
        "fa_reports.py",
        "reports.py",
        "revenue_budget.py",
        "rwparameter.py",
        "scheme.py",
        "seasonmaster.py",
        "tally_export.py",
        "nightaudit.py",
    ]
    api = [
        "http_client.py",
        "url_utils.py",
    ]

    total = 0
    total += move("front_office", front_office)
    total += move("billing", billing)
    total += move("inventory", inventory)
    total += move("hr", hr)
    total += move("security", security)
    total += move("messaging", messaging)
    total += move("epabx", epabx)
    total += move("setup", setup)
    total += move("reporting", reporting)
    total += move("api", api)
    print(f"Moved {total} files into domain packages.")
