"""Finalize domain placement for remaining core modules.

Run from project root.
"""
from __future__ import annotations

import os
import shutil

CORE = os.path.join(os.path.abspath(os.getcwd()), "core")


def move(domain: str, files: list[str]) -> int:
    target = os.path.join(CORE, domain)
    os.makedirs(target, exist_ok=True)
    moved = 0
    for f in files:
        src = os.path.join(CORE, f)
        if os.path.isfile(src):
            shutil.move(src, os.path.join(target, f))
            moved += 1
    return moved


if __name__ == "__main__":
    # Files still sitting in core/ root that belong to a domain.
    total = 0
    total += move("setup", ["comport_config.py", "country.py", "depart.py",
                             "db_backup.py", "db_maintenance.py",
                             "general_setup.py", "sys_config.py", "venue.py",
                             "year_end.py"])
    total += move("billing", ["marketsegment.py", "member_billing.py",
                              "members_masters.py", "sundry_type.py",
                              "taxmaster.py", "taxstru.py", "tdscat.py",
                              "tdscerti.py", "unit.py", "voucher_type.py",
                              "validation.py"])
    total += move("front_office", ["narr.py"])
    total += move("api", ["http_client.py", "url_utils.py"])
    total += move("security", ["error_handler.py", "error_handling.py",
                               "guestprof.py", "gueststatus.py", "featuremast.py"])
    total += move("api", ["http_client.py", "url_utils.py"])
    # db.py is the shared DB layer -> core/shared
    os.makedirs(os.path.join(CORE, "shared"), exist_ok=True)
    if os.path.isfile(os.path.join(CORE, "db.py")):
        shutil.move(os.path.join(CORE, "db.py"),
                    os.path.join(CORE, "shared", "db.py"))
        total += 1
    # einvoice.py -> api/invoice
    os.makedirs(os.path.join(CORE, "api", "invoice"), exist_ok=True)
    if os.path.isfile(os.path.join(CORE, "einvoice.py")):
        shutil.move(os.path.join(CORE, "einvoice.py"),
                    os.path.join(CORE, "api", "invoice", "einvoice.py"))
        total += 1
    # pos_*.py are POS sub-packaged; they live in core/pos
    os.makedirs(os.path.join(CORE, "pos"), exist_ok=True)
    for f in ["pos_delivery.py", "pos_entry.py", "pos_hall.py",
              "pos_happy.py", "pos_kot.py", "pos_masters.py",
              "pos_packing.py", "pos_sales.py", "pos_stock.py",
              "pos_table.py"]:
        if os.path.isfile(os.path.join(CORE, f)):
            shutil.move(os.path.join(CORE, f),
                        os.path.join(CORE, "pos", f))
            total += 1
    # vb6_* files -> core/api/legacy (bridge to VB6)
    os.makedirs(os.path.join(CORE, "api", "legacy"), exist_ok=True)
    for f in ["vb6_frontend.py", "vb6_logic.py"]:
        if os.path.isfile(os.path.join(CORE, f)):
            shutil.move(os.path.join(CORE, f),
                        os.path.join(CORE, "api", "legacy", f))
            total += 1
    # fa_enviro.py -> front_office (feedback/admin enviro)
    if os.path.isfile(os.path.join(CORE, "fa_enviro.py")):
        shutil.move(os.path.join(CORE, "fa_enviro.py"),
                    os.path.join(CORE, "front_office", "fa_enviro.py"))
        total += 1
    # error handling shared -> core/shared
    os.makedirs(os.path.join(CORE, "shared"), exist_ok=True)
    for f in ["error_handler.py", "error_handling.py"]:
        p = os.path.join(CORE, f)
        if os.path.isfile(p):
            shutil.move(p, os.path.join(CORE, "shared", f))
            total += 1
    print(f"Moved {total} remaining root files.")
