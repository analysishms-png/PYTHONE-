"""Split legacy flat ui/ files into feature subpackages under HMS_py/ui.

Run from project root.
"""
from __future__ import annotations

import os
import shutil

ROOT = os.getcwd()
UI_LEGACY = os.path.join(ROOT, "ui")
UI = os.path.join(ROOT, "HMS_py", "ui")


def move(domain: str, files: list[str]) -> int:
    target = os.path.join(UI, domain)
    os.makedirs(target, exist_ok=True)
    moved = 0
    for f in files:
        src = os.path.join(UI_LEGACY, f)
        if os.path.isfile(src):
            shutil.move(src, os.path.join(target, f))
            moved += 1
    return moved


if __name__ == "__main__":
    login = [
        "account_merge_ui.py",
    ]
    shell = [
        "shell.py",
    ]
    main_window = [
        "base_master.py",
        "base_window.py",
        "business_logic_viewer.py",
        "channel_ui.py",
        "dashboard.py",
        "design.py",
        "desktop_style.py",
        "glass.py",
        "global_search.py",
        "theme.py",
        "theme_v2.py",
    ]
    front_office = [
        "booking_ops_ui.py",
        "checkout_ui.py",
        "company_profile_ui.py",
        "door_lock_ui.py",
        "fo_sub_forms_ui.py",
        "folio_ui.py",
        "front_office_dashboard.py",
        "frontoffice.py",
        "guest_charges_ui.py",
        "guest_history_ui.py",
        "guest_lookup_ui.py",
        "guest_services_ui.py",
        "hall_booking_ui.py",
        "hr_members_ui.py",
        "hr_payroll_ui.py",
        "roomstatus_ui.py",
        "reservation_browser.py",
        "sys_config_ui.py",
        "usermaster_ui.py",
        "user_permissions_ui.py",
        "voucher_environment_ui.py",
    ]
    billing = [
        "fa_ledger_ui.py",
        "fa_voucher_ui.py",
        "fa_sub_forms_ui.py",
        "finance_masters_ui.py",
        "posting_forms_ui.py",
        "posting_utility_ui.py",
        "purchase_bill_ui.py",
        "purchase_order_ui.py",
        "revenue_budget_ui.py",
        "tally_ui.py",
        "taxstru_ui.py",
    ]
    housekeeping = [
        "block_master_ui.py",
        "kitchen_clstk_ui.py",
        "partial_forms_ui.py",
    ]
    inventory = [
        "inventory.py",
        "item_rate_ui.py",
    ]
    hr = [
        "member_billing_ui.py",
        "member_environment_ui.py",
    ]
    pos = [
        "pos_delivery_ui.py",
        "pos_happy_ui.py",
        "pos_masters_ui.py",
        "pos_na.py",
        "pos_packing_ui.py",
        "pos_sales_ui.py",
        "pos_stock_ui.py",
        "pos_sub_forms_ui.py",
        "pos_table_ui.py",
        "kot_entry.py",
        "kot_transfer_ui.py",
        "redesign_v2.py",
    ]
    epabx = [
        "epabx_ui.py",
        "comport_ui.py",
    ]
    sms = [
        "messaging_ui.py",
        "sms_http_ui.py",
        "sms_ui.py",
    ]
    reporting = [
        "reports_ui.py",
        "nightaudit_reports_ui.py",
        "requisition_slip_ui.py",
    ]
    misc = [
        "business_logic_viewer.py",
        "db_backup_ui.py",
        "db_maintenance_ui.py",
        "design.py",
        "desktop_style.py",
        "door_lock_ui.py",
        "edi_forms.py",
        "enviro_ui.py",
        "fa_enviro_ui.py",
        "fd_forms_ui.py",
        "food_and_beverage.py",
        "general_setup_ui.py",
        "grooming.py",
        "gst_forms.py",
        "logging.py",
        "misc_sub_forms_ui.py",
        "misc_vb6_ui.py",
        "print_preview.py",
        "production_forms.py",
        "purchases.py",
        "sales_forms.py",
        "setting_utilities.py",
        "stock_adjust_ui.py",
        "stock_issue_ui.py",
        "stock_receive_ui.py",
        "stock_transfer_ui.py",
        "tally_export_ui.py",
        "test_sidebar_buttons.py",
        "utility_forms_ui.py",
        "walkin_rack_ui.py",
        "year_end_ui.py",
    ]

    total = 0
    total += move("login", login)
    total += move("main_window", main_window)
    total += move("front_office", front_office)
    total += move("billing", billing)
    total += move("housekeeping", housekeeping)
    total += move("inventory", inventory)
    total += move("hr", hr)
    total += move("pos", pos)
    total += move("epabx", epabx)
    total += move("sms", sms)
    total += move("reporting", reporting)
    total += move("misc", misc)
    print(f"Moved {total} files into UI feature packages.")
