# Procedure Migration Ledger

**Format:** `| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |`

---

## Core Database Procedures

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| HMS.bas | `OpenDB()` | db.py | `connect()` | ✅ DONE | Driver chain, lock timeout | 2026-09-15 |
| HMS.bas | `GetSiteCode()` | db.py | `get_site_code()` | ✅ DONE | Analysis.ini key 7 + env override | 2026-09-21 |
| HMS.bas | `GetUser()` | db.py | `get_user()` | ✅ DONE | Env HMS_USER, default PYADMIN | 2026-09-21 |
| HMS.bas | `GetVPrefix()` | db.py | `get_vprefix()` | ✅ DONE | Env HMS_VPREFIX, default current year | 2026-09-21 |
| HMS.bas | `NextVNo(table, vtype, vprefix)` | db.py | `next_vno()` | ✅ DONE | UPDLOCK/HOLDLOCK race-safe | 2026-09-21 |
| HMS.bas | `BeginTrans/CommitTrans/RollbackTrans` | db.py | `transaction()` | ✅ DONE | Context manager, nested support | 2026-09-15 |

---

## Front Office Procedures (checkin.py, checkout.py, fo_ops.py, folio.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| fdCheckIn.frm:CmdSave_Click | `CheckIn(room_no, guest_code, ...)` | checkin.py | `checkin()` | ✅ DONE | RoomOcc insert, GuestFolio, RoomMast update | 2026-09-21 |
| FdCheckOut.frm:CmdSave_Click | `CheckOut(folio_no, ...)` | checkout.py | `checkout()` | ✅ DONE | Balance calc, RoomMast='Dirty', GuestStatus | 2026-09-21 |
| fdRoomChange.frm:CmdSave_Click | `RoomChange(folio_no, new_room, reason)` | fo_ops.py | `room_change()` | ✅ DONE | RoomOcc new row + old checkout, PlanDetails re-link, EPABX audit | 2026-09-22 |
| FrmMergeCharge.frm:CmdSave_Click | `MergeCharge(from_room, to_room)` | fo_ops.py | `merge_charge()` | ✅ DONE | PayCharge FolioNoDocId mesh, same-folio guard | 2026-09-22 |
| FdReSetlement.frm:CmdSave_Click | `ReSettlement(docid, lines)` | fo_ops.py | `re_settlement()` | ✅ DONE | Last REC reverse + re-post, race-safe VNo, sum guard | 2026-09-22 |
| fdPostChrg.frm:CmdSave_Click | `PostCharge(folio_no, type, amount, desc)` | folio.py | `post_charge()` | 🔄 PARTIAL | Logic inline in fd_forms_ui.py | — |
| fdPaymentCharge.frm:CmdSave_Click | `MakePayment(folio_no, amount, mode)` | folio.py | `make_payment()` | 🔄 PARTIAL | Logic inline in fd_forms_ui.py | — |
| fdAmendEntry.frm:CmdSave_Click | `AmendStay(booking_no, new_dates)` | fo_ops.py | `amend_stay()` | ⏳ TODO | — | — |
| FdRevCheckOut.frm:CmdSave_Click | `ReverseCheckout(room_no)` | fo_ops.py | `reverse_checkout()` | ⏳ TODO | — | — |
| FOMModule.bas:Proc_146_1_1334068 | `PrintAdvanceReceipt(docids)` | reports.py | `advance_receipt()` | ✅ DONE | — | 2026-09-21 |

---

## POS Procedures (pos_sales.py, pos_kot.py, pos_stock.py, pos_masters.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| RsKOTEntry.frm:CmdSave_Click | `CreateKOT(table_no, items)` | pos_kot.py | `create_kot()` | ✅ DONE | — | 2026-09-21 |
| RsKOTTransfer.frm:CmdSave_Click | `TransferKOT(kot_ref, to_outlet, to_table, to_waiter)` | pos_kot.py | `kot_transfer()` | ✅ DONE | Room Service: RoomOcc lookup for RoomCat | 2026-09-22 |
| RsTbChange.frm:CmdSave_Click | `ChangeTable(from_table, to_table)` | pos_kot.py | `table_change()` | ✅ DONE | Bulk RoomNo update + audit fields | 2026-09-22 |
| RSSaleBill.frm:CmdSave_Click | `CreateSale(table_no, items, payment)` | pos_sales.py | `create_sale()` | ✅ DONE | — | 2026-09-21 |
| RsSaleBillSplit.frm:CmdSave_Click | `SplitBill(sale_no, splits)` | pos_sales.py | `split_bill()` | ✅ DONE | — | 2026-09-21 |
| RsKitchenStk.frm:CmdSave_Click | `UpdateKitchenStock(items)` | pos_stock.py | `update_kitchen_stock()` | 🔄 PARTIAL | — | — |
| RsStoreRecEntry.frm:CmdSave_Click | `ReceiveStock(po_no, items)` | inventory.py | `receive_stock()` | ✅ DONE | — | 2026-09-21 |
| RsMenuItemEntry.frm:TopCtrl1_eSave | `SaveItem(code, name, grp, cat, rest, ...)` | pos_masters.py | `item_insert()` | ✅ DONE | Full CRUD via ItemAPI | 2026-11-03 |
| RsGravyItemEntry.frm:TopCtrl1_eSave | `SaveGravyItem(code, name, grp, cat, rest, ...)` | pos_masters.py | `gravy_insert()` | ✅ DONE | Full CRUD + BOM for Gravy items | 2026-11-03 |
| RsStoreRecEntry.frm:CmdSave_Click | `ReceiveStock(po_no, items)` | inventory.py | `receive_stock()` | ✅ DONE | — | 2026-09-21 |

---

## Finance Procedures (fa_voucher.py, fa_enviro.py, fa_tds_ops.py, fa_reports.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| FaVrEnt.frm:CmdSave_Click | `SaveVoucher(vtype, vdate, ledger, amount, ...)` | fa_voucher.py | `post_voucher()` | ✅ DONE | Core complete; validation included | 2026-11-03 |
| FaEnvron.frm:Form_Load | `LoadEnviro()` | fa_enviro.py | `get()` | ✅ DONE | Full settings load | 2026-11-03 |
| FaEnvron.frm:btnok_Click | `SaveEnviro()` | fa_enviro.py | `update_settings()` | ✅ DONE | Multi-setting update | 2026-11-03 |
| FaEnvron.frm:BtnIntegrity_Click | `IntegrityCheck()` | fa_enviro_ui.py | `_integrity_check()` | 🔄 PARTIAL | Placeholder; VB6 tool | 2026-11-03 |
| FaTDSCat.frm:CmdSave_Click | `SaveTDSCat(code, name, rate)` | fa_tds_ops.py | `tdscat_insert()` | ✅ DONE | Full CRUD via TDSCatAPI | 2026-11-03 |
| FaTDSChal.frm:CmdSave_Click | `GenerateTDSChallan(period)` | fa_tds_ops.py | `tdschal_insert()` | ✅ DONE | Header + Detail CRUD via TDSChalAPI | 2026-11-03 |
| FaTDSCertificate.frm:CmdSave_Click | `SaveTDSCertificate(certi_no, certi_date, code, ...)` | fa_tds_ops.py | `tdscerti_insert()` | ✅ DONE | Certificate CRUD via TDSCertificateAPI | 2026-11-03 |
| FaTDSChal.frm:btsadd_Click | `AddTDSEntries()` | fa_tds_ops.py | `generate_tds_challan()` | ✅ DONE | Pending LEDGERTDS → Challan | 2026-11-03 |
| FaTDSCertificate.frm:TopCtrl1_eSave | `SaveCertificate()` | fa_tds_ops.py | `tdscerti_insert()` | ✅ DONE | Certificate CRUD + Challan linkage | 2026-11-03 |
| FaRepView.frm:Form_Load | `ViewReport(report_type)` | fa_reports.py | `view_report()` | ✅ DONE | 10+ report types | 2026-11-03 |
| FaReports.frm:Form_Load | `ViewReport(report_type)` | fa_reports.py | `view_report()` | ✅ DONE | 10+ report types | 2026-11-03 |
| frmYearEnd.frm:CmdYrUpdate_Click | `YearEndUpdation()` | year_end.py | `carry_forward_balances()` | ✅ DONE | Balance carry-forward + budget reset | 2026-11-03 |
| frmTallyExport.frm:btnStart_Click | `ExportTallyXML()` | tally_export.py | `export_all()` | ✅ DONE | LedgerMaster.xml + Ledger.xml | 2026-11-03 |
| FaVoucher.bas:AutoVNo | `AutoVNo(vtype, vprefix)` | fa_voucher.py | `auto_vno()` | 🔄 PARTIAL | Uses db.next_vno() | — |

---

## Inventory Procedures (inventory.py, purchase.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| PIndent.frm:CmdSave_Click | `CreateIndent(items)` | inventory.py | `create_indent()` | ✅ DONE | — | 2026-09-21 |
| pPOrder.frm:CmdSave_Click | `CreatePurchaseOrder(indent_no, supplier, items)` | purchase.py | `create_purchase_order()` | 🔄 PARTIAL | — | — |
| RsStoreRecEntry.frm:CmdSave_Click | `ReceivePurchase(po_no, items)` | inventory.py | `receive_purchase()` | ✅ DONE | — | 2026-09-21 |
| StockAdjust.frm:CmdSave_Click | `AdjustStock(item_code, qty, reason)` | inventory.py | `adjust_stock()` | ✅ DONE | — | 2026-09-21 |

---

## HR/Payroll Procedures (hr_payroll.py, hr_masters.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| prSalCreate.frm:CmdSave_Click | `CreateSalary(emp_code, month, da%, hra%, ot_days, ot_rate)` | hr_payroll.py | `create_salary_from_attendance()` | ✅ DONE | Work days calc, basic earned, net salary | 2026-09-22 |
| PrEmployee.frm:CmdSave_Click | `SaveEmployee(code, name, cat, desig, ...)` | hr_masters.py | `save_employee()` | ✅ DONE | — | 2026-09-21 |
| PrAttend.frm:Form_Load | `LoadAttendance(emp_code, month)` | hr_payroll.py | `load_attendance()` | ✅ DONE | — | 2026-09-21 |

---

## EPABX Procedures (epabx_ops.py, epabx_masters.py)

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| TelCallEntry.frm:Timer_Timer | `ProcessCalls()` | epabx_ops.py | `process_calls()` | BLOCKED-TBL | TelCall table absent | — |
| SMSModule.bas:SendSMS | `SendSMS(mobile, message)` | sms_http.py | `send_sms()` | ✅ DONE | HTTP API | 2026-09-21 |

---

## Utility/Setup Procedures

| VB6 Module/Proc | VB6 Signature | Python Module | Python Function | Status | Diff Notes | Date |
|-----------------|---------------|---------------|-----------------|--------|------------|------|
| UserMast.frm:CmdSave_Click | `SaveUser(code, name, password, role)` | usermaster.py | `save_user()` | ✅ DONE | — | 2026-09-21 |
| UserPermission.frm:Form_Load | `LoadPermissions(user_code)` | permission.py | `load_permissions()` | ✅ DONE | — | 2026-09-21 |
| CompMast.frm:CmdSave_Click | `SaveCompany(code, name, short, year)` | company_profile.py | `save_company()` | ✅ DONE | — | 2026-09-21 |
| FrmBlockMast.frm:CmdSave_Click | `SaveBlock(code, name)` | block_master_ui.py | `save_block()` | ✅ DONE | — | 2026-09-21 |

---

## Status Legend
- ✅ **DONE** — Ported + verified parity (steps 1-9)
- 🔄 **PARTIAL** — Ported but diff from VB6 (needs re-compare)
- ⏳ **TODO** — Not yet ported
- **BLOCKED-TBL** — Required table absent in DB

---

## Update Protocol
After each procedure port (step 9):
1. Update this ledger row with status, diff notes, date
2. Update corresponding FORM_MIGRATION_LEDGER.md row
3. Add any bugs to MIGRATION_MASTER_BUG_REGISTER.md
4. Commit changes