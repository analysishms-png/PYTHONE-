# HMS_py VB6 → Python Migration Status

**Last Updated:** 2026-11-03  
**Source:** `LOGIC/VISUALBASIC/` (321 .frm, 32 .bas, .frx, .cls files)  
**Python Target:** `HMS_py/` (113 core + 101 UI modules)

---

## Phase Overview

| Phase | Domain | Status | VB6 Forms | Python Core | Python UI | Notes |
|-------|--------|--------|-----------|-------------|-----------|-------|
| 1 | **Core Infrastructure** | ✅ DONE | — | db.py, auth.py, company.py, menu.py, menu_help.py, error_handling.py, vb6_frontend.py, vb6_logic.py | shell.py, theme.py, desktop_style.py, glass.py | Foundation complete |
| 2 | **Front Office** | 🔄 IN PROGRESS | 23 forms | checkin.py, checkout.py, folio.py, fo_ops.py, guest_folio.py, guestprof.py, gueststatus.py, guest_history.py, reservation.py, roommaster.py, roomcategory.py, roomstatus.py, room_occ.py, marketsegment.py | frontoffice.py, checkout_ui.py, fd_forms_ui.py, walkin_rack_ui.py, roomstatus_ui.py, reservation_browser.py, guest_history_ui.py, guest_charges_ui.py, guest_lookup_ui.py | Room Change, Merge Charge, Re-Settlement DONE (v0.1.2) |
| 3 | **Point of Sale (POS)** | 🔄 IN PROGRESS | 35 forms | pos.py, pos_sales.py, pos_kot.py, pos_stock.py, pos_masters.py, pos_packing.py, pos_delivery.py, pos_happy.py, pos_table.py, pos_na.py, pos_hall.py, pos_entry.py | pos_sales_ui.py, pos_stock_ui.py, pos_masters_ui.py, pos_packing_ui.py, pos_delivery_ui.py, pos_happy_ui.py, pos_table_ui.py, kot_entry.py, kot_transfer_ui.py, pos_sub_forms_ui.py | KOT Transfer, Table Change DONE (v0.1.2) |
| 4 | **Night Audit** | ⏳ TODO | 8 forms | nightaudit.py, fa_voucher.py, fa_tds_ops.py, fa_reports.py, fa_masters_ops.py, fa_ledger_ops.py, fa_enviro.py, einvoice.py | nightaudit_reports_ui.py, fa_voucher_ui.py, fa_sub_forms_ui.py, fa_ledger_ui.py, fa_enviro_ui.py, einvoice_ui.py | GST/TDS critical path |
| 5 | **Finance/Accounts** | ⏳ TODO | 25 forms | ledger.py, taxmaster.py, taxstru.py, voucher_type.py, sundry.py, narr.py, expenseentry.py, fixcharge.py, tally_export.py | finance_masters_ui.py, taxstru_ui.py, tally_export_ui.py, fa_voucher_ui.py, expense_ui.py, posting_forms_ui.py, posting_utility_ui.py | Voucher env, TDS, Tally export |
| 6 | **Inventory** | ⏳ TODO | 18 forms | inventory.py, purchase.py, item.py, item_rate.py, unit.py, stock.py | inventory.py, stock_receive_ui.py, stock_issue_ui.py, stock_adjust_ui.py, purchase_order_ui.py, purchase_bill_ui.py, requisition_slip_ui.py | Purchase cycle, stock movement |
| 7 | **Members/Club** | ⏳ TODO | 22 forms | members_masters.py, member_billing.py, scheme.py, facility_billing.py | member_billing_ui.py, member_environment_ui.py, facility_billing_ui.py, scheme_tds_ui.py | Smart Card, Member billing |
| 8 | **Banquet/Catering** | ⏳ TODO | 15 forms | hall_booking.py, venue.py, banquet_ops.py | hall_booking_ui.py, banquet_masters_ui.py, banquet_ops_ui.py | Events, venue management |
| 9 | **HR/Payroll** | ⏳ TODO | 12 forms | hr_masters.py, hr_payroll.py | hr_members_ui.py, hr_payroll_ui.py | Employee, salary, attendance |
| 10 | **EPABX/Telephony** | ⏳ TODO | 10 forms | epabx_masters.py, epabx_ops.py, comport_config.py, door_lock.py, godrej_locks.py, sms_comm.py, sms_http.py, sms_enviro.py | epabx_ui.py, comport_ui.py, door_lock_ui.py, sms_ui.py, messaging_ui.py | Call accounting, SMS, Door locks |
| 11 | **Utility/Setup** | ⏳ TODO | 30 forms | company_profile.py, sys_config.py, rwparameter.py, db_backup.py, db_maintenance.py, general_setup.py, country.py, state.py, city.py, department.py, sundry_type.py, seasonmaster.py, planmaster.py, featuremast.py, paymenttype.py, unit.py | general_setup_ui.py, company_profile_ui.py, sys_config_ui.py, db_backup_ui.py, db_maintenance_ui.py, p2_masters.py, block_master_ui.py | Main Setup workbench items |
| 12 | **Reports Engine** | ⏳ TODO | 70+ reports | reports.py | reports_ui.py, business_logic_viewer.py | 70+ report types ported |

---

## Per-Form Status (Sample - Auto-generated from Parity Matrix)

| VB6 Form | Caption | Tables Used | Python UI | Python Core | Status | Priority |
|----------|---------|-------------|-----------|-------------|--------|----------|
| fdCheckIn.frm | Check In | GuestProf, GuestFolio, RoomOcc, RoomMast | frontoffice.py:open_checkin | checkin.py | ✅ DONE | P0 |
| FdCheckOut.frm | Check Out | GuestFolio, RoomOcc, PayCharge, RoomMast | checkout_ui.py:open_checkout | checkout.py, fo_ops.py | ✅ DONE | P0 |
| fdRoomChange.frm | Room Change | RoomOcc, GuestFolio, PlanDetails, Booking | fo_sub_forms_ui.py:RoomChangeWindow | fo_ops.py:room_change | ✅ DONE | P0 |
| FdReSetlement.frm | Re-Settlement | PayCharge, GuestFolio | fo_sub_forms_ui.py:ReSettlementWindow | fo_ops.py:re_settlement | ✅ DONE | P0 |
| fdPostChrg.frm | Post Charges | FolioLog, GuestFolio | fd_forms_ui.py | folio.py | 🔄 PARTIAL | P1 |
| fdPaymentCharge.frm | Payment/Charge | PayCharge, GuestFolio | fd_forms_ui.py | folio.py | 🔄 PARTIAL | P1 |
| RSSaleBill.frm | POS Sale Bill | POSSale, POSKOT, POSItem | pos_sales_ui.py | pos_sales.py | ✅ DONE | P0 |
| RsKOTEntry.frm | KOT Entry | POSKOT, POSItem | kot_entry.py:open_kot_entry | pos_kot.py | ✅ DONE | P0 |
| RsKOTTransfer.frm | KOT Transfer | POSKOT | kot_transfer_ui.py:KOTTransferWindow | pos_kot.py:kot_transfer | ✅ DONE | P0 |
| RsTbChange.frm | Table Change | POSKOT | kot_transfer_ui.py:TableChangeWindow | pos_kot.py:table_change | ✅ DONE | P0 |
| FaVrEnt.frm | Voucher Entry | Ledger, Voucher, LedgerAdj | fa_voucher_ui.py | fa_voucher.py | 🔄 PARTIAL | P1 |
| FaGrEnt.frm | Group Entry | Ledger, Voucher | partial_forms_ui.py | fa_masters_ops.py | 🔄 PARTIAL | P2 |
| FDWalkInEntry.frm | Walk-In Entry | GuestProf, RoomOcc, GuestFolio | walkin_rack_ui.py | checkin.py | ✅ DONE | P0 |
| FrmVenueFeat.frm | Venue Feature | FeatureMast | block_master_ui.py | venue.py | ✅ DONE | P1 |

---

## Blocked by Missing Tables (BLOCKED-TBL)

| VB6 Form | Missing Table(s) | Notes |
|----------|------------------|-------|
| CateringBooking.frm | CateringBook, EventMast, HallBill | Banquet tables absent |
| SmartCardRegistration.frm | SmartCard, RewardPoint | Smart Card tables absent |
| TelCallEntry.frm | TelCall, TelCallTypeMast, Extension | EPABX tables absent |
| FrmGodrejLockSettings.frm | DoorLock | Hardware integration |
| eInvoice.bas | EInvoice | GST API integration |

---

## Known Python Bugs (from README v0.1.2)

1. **pos_sales.py** - `vals[50]` duplicate index access
2. **inventory.py** - Hardcoded `KK000265` supplier
3. **8 more** - See `MIGRATION_MASTER_BUG_REGISTER.md` (to be created)

---

## Next Actions (Priority Order)

1. **Complete Night Audit + Finance** (GST compliance critical)
2. **Finish Inventory purchase cycle** (Stock Receive/Issue/Adjust wired)
3. **Member Billing + Smart Card** (if tables exist)
4. **Banquet/Catering** (after table check)
5. **HR/Payroll** (Employee Master, Salary Creation)
6. **EPABX/SMS/Door Lock** (hardware integration)
7. **Utility/Main Setup completion** (all workbench items wired)
8. **Reports Engine full parity** (70+ reports)

---

## Verification Checklist

- [ ] Parity matrix generated (`VB6_PARITY_MATRIX.txt`)
- [ ] All tests pass: `python -m pytest -x -q` (137 unit, 162 live-DB, 62 UI)
- [ ] Schema probe for all VB6 tables
- [ ] MenuHelp audit vs shell registry complete
- [ ] Form Migration Ledger updated
- [ ] Bug Register updated