# FULL MIGRATION TASK LIST - HMS_py Python/PyQt6

## 🎯 CRITICAL PATH (P0 - Must Complete for Production)

### 1. FRONT OFFICE - Group Operations
- [x] **Group Check-Out** (`FdGrpCheckOut.frm` 1.5MB) ✅ **DONE**
  - Core: `core/front_office/checkout.py:group_checkout()` ✅
  - UI: `ui/front_office/group_checkout_ui.py:GroupCheckoutWindow` ✅
  - Shell: Wire "Group Check Out" / "Group Check Out Entry (Detail)" ✅
  - Tests: `tests/unit/test_group_checkout_ui.py` ✅ (6 tests passing)

- [x] **Group Detailed Check-Out** (`FdGrpdetCheckOut.frm` 262KB) ✅ **DONE** (same window)
  - Core: `core/front_office/checkout.py:group_detail_checkout()` (use same as Group Check-Out)
  - UI: `ui/front_office/group_checkout_ui.py:GroupCheckoutWindow` (same window)
  - Shell: Wire "Group Check Out Entry (Detail)" ✅ (wired to same window)

- [x] **Reverse Check-Out** (`FdRevCheckOut.frm` 103KB) ✅ **EXISTS**
  - Core: `core/front_office/checkout.py:reverse_checkout()` ✅ EXISTS
  - UI: `ui/front_office/checkout_ui.py:ReverseCheckoutWindow`
  - Shell: Wire "Reverse Check Out" / "Check Out Cancel" ✅

- [x] **Reservation Room No/Type Masters** (`resRoomNo.frm`, `resRoomType.frm`) ✅ **DONE**
  - Core: `core/front_office/reservation.py` + `roomstatus.py` ✅
  - UI: `ui/front_office/reservation_browser.py:RoomWiseReservationLookup`, `RoomTypeWiseReservationLookup` ✅
  - Shell: Wire "Reservation Look Up Room Wise", "Room Category Wise Reservation Look Up" ✅

- [x] **Reservation Status Screen** (`FrmReservationStatus.frm` 41KB) ✅ **DONE**
  - Core: `core/front_office/reservation.py` + `roomstatus.py` ✅
  - UI: `ui/front_office/reservation_browser.py:ReservationStatusScreen` ✅
  - Shell: Wire "Reservation Status" ✅
  - 5 view modes: Expected Arrival, Guest In House, ConFirm, Tentative, With advance
  - Date navigation (Prev/Next day), Room type filter, Color-coded grid

- [x] **Group Reservation** (`resGroup.frm` 103KB) ✅ **DONE**
  - Core: `core/front_office/group_booking.py` ✅
  - UI: `ui/front_office/group_booking_ui.py` ✅ (GroupReservationBrowser, GroupBookingDialog, SubBookingDialog, GroupDetailDialog)
  - Shell: Wire "Group Reservation" ✅
  - Tests: `tests/unit/test_group_reservation_ui.py` (TODO)

- [x] **Banquet Booking** (`HallBooking.frm`) ✅ **DONE**
  - Core: `core/front_office/hall_booking.py` ✅
  - UI: `ui/front_office/hall_booking_ui.py:HallBookingDialog` ✅
  - Shell: Wire "Banquet Booking" ✅

- [x] **Banquet Operations** (Billing, Estimates, Advance, Settlement, etc.) ✅ **DONE**
  - Billing: `banquet_ops.py:open_banquet_billing` ✅
  - Estimates: `banquet_ops.py:open_banquet_estimate` ✅
  - Advance: `banquet_ops.py:open_banquet_advance` ✅
  - Settlement: `banquet_ops.py:open_banquet_settlement` ✅
  - Venue Availability: `banquet_ops.py:open_venue_availability` ✅
  - Chef Pre-Costing: `banquet_ops.py:open_chef_precosting` ✅
  - Catalog Selection: `banquet_ops.py:open_catalog_selection` ✅
  - Bill Sundry Setting: `banquet_ops.py:open_banquet_sundry_setting` ✅
  - Guest Comments: `banquet_ops.py:open_guest_comments` ✅
  - Shell: All wired ✅

### 2. POS - Payment & Token
- [x] **POS Payment Receive** (`RsPaymentReceice.frm` 188KB) ✅ **DONE**
  - Core: `core/pos/pos_payment.py` ✅ (payment_type_list, payment_receive_insert, etc.)
  - UI: `ui/pos/pos_payment_ui.py` ✅ (PaymentReceiveBrowser, PaymentReceiveDialog)
  - Shell: Wire "Payment Receive Entry" / "Receive Payment" ✅
  - Tests: (TODO - add tests)

- [x] **POS Token Entry / KOT Transfer / Table Change** (`RsTokenEntry.frm` 487KB, `RsKOTTransfer.frm`, `RsTbChange.frm`) ✅ **DONE**
  - Core: `core/pos/pos_kot.py` ✅ (pending_kot_list, pending_kot_tables, table_change, kot_transfer)
  - UI: `ui/pos/kot_transfer_ui.py` ✅ (KOTTransferWindow, TableChangeWindow)
  - Shell: Wire "Token Entry" / "KOT Transfer" / "Table Change" / "KOT Entry" ✅

- [x] **POS Order Booking / Order Booking Advance** (`RsBookingEntry.frm` / `RsBookingEntryAdvance.frm` / `RsTouchScreenBookingEntry.frm`) ✅ **DONE**
  - Core: `core/front_office/booking.py` ✅ (list_all, get, insert, update, cancel)
  - UI: `ui/pos/pos_order_booking_ui.py` ✅ (OrderBookingBrowser, OrderBookingDialog, AdvancePaymentDialog)
  - Shell: Wire "Order Booking" / "Order Booking Advance" / "Bill Lookup" ✅

- [x] **POS Touch Screen Variants** (reuse core)
  - `RsTouchScreenSaleBill.frm` → Touch mode flag in `pos_sales_ui.py` ✅
  - `RsTouchScreenKOTEntry.frm` → Touch mode flag in `kot_entry.py` ✅
  - `RsTouchScreenTokenEntry.frm` → Touch mode flag in `pos_payment_ui.py` ✅

### 3. HOUSEKEEPING - Linen & Stock
- [x] **HK House Operation Stock** (`HKHouseOpStk.frm` 97KB) ✅ **DONE**
  - Core: `core/housekeeping/linen.py:hk_house_op_stock_list()` ✅
  - UI: `ui/housekeeping/hk_house_op_stock_ui.py:HKHouseOpStockBrowser` ✅
  - Shell: Wire "House Keeping Op.Stock Entry" ✅
  - Tests: (TODO - add tests)

- [x] **HK Room Operation Stock** (`HKRoomOpStk.frm` 101KB) ✅ **DONE**
  - Core: `core/housekeeping/linen.py:hk_room_op_stock_list()` ✅
  - UI: `ui/housekeeping/hk_room_op_stock_ui.py:HKRoomOpStockBrowser` ✅
  - Shell: Wire "HK Room Op Stock Entry" ✅
  - Tests: (TODO - add tests)

- [x] **HK Issue/Receive** (`HKIssRec.frm` 115KB) ✅ **DONE**
  - Core: `core/housekeeping/linen.py:hk_iss_rec_list()`, `hk_iss_rec_create()` ✅
  - UI: `ui/housekeeping/hk_iss_rec_ui.py:HKIssueReceiveBrowser` ✅
  - Shell: Wire "HK Issue/Receive Entry" ✅
  - Tests: (TODO - add tests)

- [x] **HK Room Block** (`HKRoomBlock.frm` 91KB) ✅ **DONE**
  - Core: `core/housekeeping/linen.py:hk_room_block_list()`, `hk_room_block_create()`, `hk_room_block_remove()` ✅
  - UI: `ui/housekeeping/hk_room_block_ui.py:HKRoomBlockBrowser` ✅
  - Shell: Wire "HK Room Block Entry" ✅
  - Tests: (TODO - add tests)

### 4. SYSTEM - Job Scheduler & Upload
- [ ] **Job Scheduler** (`FrmJobScheduler.frm` 81KB)
  - Core: `core/setup/job_scheduler.py`
  - UI: `ui/misc/job_scheduler_ui.py`
  - Shell: Wire "Task Scheduler"

- [ ] **Upload Process** (`FrmUploadProcess.frm` 18KB)
  - Core: `core/api/legacy/upload.py`
  - UI: `ui/misc/upload_ui.py`
  - Shell: Wire "Upload Process"

- [ ] **Data Receiving** (`FrmDataRecieving.frm` 18KB)
  - Core: `core/api/legacy/data_receiving.py`
  - UI: `ui/misc/data_receiving_ui.py`
  - Shell: Wire "Data Recieving", "Data Transfer", "Data Transfer (POS)"

- [ ] **User Payment Collection** (`FrmUserPaymentCollection.frm` 63KB)
  - Core: `core/billing/member_billing.py:user_payment_collection()`
  - UI: `ui/billing/member_billing_ui.py:UserPaymentCollectionDialog`
  - Shell: Wire "User Payment Collection"

### 5. INVENTORY - Missing Forms
- [ ] **Denomination** (`FrmDenomination.frm` 84KB)
  - Core: `core/inventory/inventory.py:denomination_master()`
  - UI: `ui/inventory/inventory.py:DenominationMasterDialog`
  - Shell: Wire "Denomination"

- [ ] **Items Issued on Cleaning** (`FrmItemIssuedOnCleaning.frm` 68KB)
  - Core: `core/inventory/inventory.py:items_issued_cleaning()`
  - UI: `ui/inventory/inventory.py:ItemsIssuedCleaningDialog`
  - Shell: Wire "Item Issued On Cleaning"

### 6. HR - Missing
- [ ] **Salary Component Profile** (`salmarCompProfile.frm` 22KB)
  - Core: `core/hr/hr_payroll.py:salary_component_profile()`
  - UI: `ui/hr/hr_payroll_ui.py:SalaryComponentProfileDialog`
  - Shell: Wire "Salary Component Profile"

### 7. MEMBERSHIP - Missing
- [ ] **Member Family** (`MemFamily.frm`)
  - Core: `core/membership/member.py:family_master()`
  - UI: `ui/hr/member_environment_ui.py:MemberFamilyDialog`
  - Shell: Wire "Member Family"

- [ ] **Proposed Member Info** (`MemProposedMemInf.frm` 41KB)
  - Core: `core/membership/member.py:proposed_member()`
  - UI: `ui/hr/member_environment_ui.py:ProposedMemberDialog`
  - Shell: Wire "Proposed Member Info"

- [ ] **Member Tagada Letter** (`MemTagadaLetter.frm` 134KB)
  - Core: `core/membership/member.py:tagada_letter()`
  - UI: `ui/hr/member_environment_ui.py:TagadaLetterDialog`
  - Shell: Wire "Member Tagada Letter"

- [ ] **Member Age Revenue Master** (`memAgeRevMast.frm` 70KB)
  - Core: `core/membership/member.py:age_revenue_master()`
  - UI: `ui/hr/member_environment_ui.py:AgeRevenueMasterDialog`
  - Shell: Wire "Member Age Wise Revenue"

### 8. HOUSEKEEPING - Missing
- [ ] **HK Room Block** (`HKRoomBlock.frm` 91KB) - Core exists, UI needed
- [ ] **WI History** (`HWIHistory.frm` 43KB)
- [ ] **Check Out Clearance Screen** (`HRoomCheckOutClearance.frm` 52KB) - Core exists

### 9. SYSTEM - Missing
- [ ] **Job Scheduler** (`FrmJobScheduler.frm` 81KB)
- [ ] **Upload Process** (`FrmUploadProcess.frm` 18KB)
- [ ] **Data Receiving** (`FrmDataRecieving.frm` 18KB)
- [ ] **Delivered Item Detail** (`FrmDeliveredItemDetail.frm` 40KB)
- [ ] **User Payment Collection** (`FrmUserPaymentCollection.frm` 63KB)

---

## 🔄 PARTIAL - NEEDS COMPLETION

### Front Office
- [ ] `fdPostChrg.frm` / `fdPaymentCharge.frm` - UI in `fd_forms_ui.py` needs completion
- [ ] `FdReSetlement.frm` - Core exists, UI `fosub_ui.py` needs `ReSettlementWindow`
- [ ] `FrmMergeCharge.frm` - Core exists, UI `fosub_ui.py` needs `MergeChargeWindow`
- [ ] `fdRoomChange.frm` - Core exists, UI `fosub_ui.py` needs `RoomChangeWindow`

### POS
- [ ] Touch screen variants - Add touch mode to existing UIs
- [ ] `RsPaymentReceice.frm` - Payment receive dialog in `pos_sales_ui.py`
- [ ] `RsTokenEntry.frm` - Token entry dialog in `pos_sales_ui.py`

### Finance
- [ ] `FaVtype.frm` - Voucher Type Master UI in `fa_voucher_ui.py`
- [ ] `VoucherSundrySetting.frm` - UI in `fa_voucher_ui.py`
- [ ] `FrmRevMergeCharge.frm` - Revenue Merge Charge UI in `fa_voucher_ui.py`

### Inventory
- [ ] Raw material variants - `FrmItemMastRaw.frm`, `FrmItemGroupMastRaw.frm`, `FrmItemCatRaw.frm`, `FrmConsumMast9999.frm`

### System
- [ ] `pHappyHours.frm` - Touch variant of Happy Hours

---

## ✅ ALREADY COMPLETE (Verified)

| Module | Forms | Core | UI | Tests |
|--------|-------|------|-----|-------|
| Finance | 30 | ✅ | ✅ | ✅ |
| HR/Payroll | 12 | ✅ | ✅ | ⚠️ |
| Inventory | 17 | ✅ | ✅ | ⚠️ |
| Membership | 22 | ✅ | ✅ | ⚠️ |
| Banquet | 15 | ✅ | ✅ | ⚠️ |
| Room Mgmt | 11 | ✅ | ✅ | ❌ |
| Room Status | 8 | ✅ | ✅ | ❌ |
| Reservation Core | 9 | ✅ | ✅ | ✅ |
| Advance Deposit | 1 | ✅ | ✅ | ✅ |
| Amend Stay | 1 | ✅ | ✅ | ✅ |
| Check-in/Walk-in | 2 | ✅ | ✅ | ✅ |
| Check-out | 1 | ✅ | ✅ | ✅ |
| Group Check-Out | 2 | ✅ | ✅ | ✅ |
| Reverse Check-Out | 1 | ✅ | ✅ | ✅ |
| Reservation Room Lookup | 2 | ✅ | ✅ | ✅ |
| Reservation Status | 1 | ✅ | ✅ | ✅ |
| Group Reservation | 1 | ✅ | ✅ | ⚠️ |
| POS Core | 8 | ✅ | ✅ | ✅ |
| POS Touch Screen | 3 | ✅ | ✅ | ✅ |
| System/Utils | 35 | ✅ | ✅ | ⚠️ |

---

## 📋 EXECUTION ORDER

### Week 1: Group Operations (Front Office)
1. Group Check-Out core + UI
2. Group Detailed Check-Out
3. Reverse Check-Out UI
4. Reservation Room No/Type masters

### Week 2: Reservation & POS
1. Reservation Status Screen
2. Group Reservation
3. POS Payment Receive
4. POS Token Entry

### Week 3: Housekeeping & System
1. HK Linen/Stock (Op Stock, Room Op Stock, Issue/Receive)
2. Job Scheduler
3. Upload Process / Data Receiving

### Week 4: Remaining P0
1. Inventory Denomination, Items Issued Cleaning
2. Membership Family, Proposed Member, Tagada Letter, Age Revenue
3. HR Salary Component Profile
4. System Job Scheduler, Upload Process, Data Receiving

### Week 5: Partial Completion & Touch Variants
1. Complete fd_forms_ui.py (Post Charges, Payment, Re-Settlement, Merge Charge, Room Change)
2. POS Touch variants (Sale Bill, KOT, Token)
3. Finance Voucher Type, Sundry Setting, Revenue Merge
4. Inventory Raw variants

### Week 6: Touch Variants & Polish
1. All touch screen variants
2. Menu Help wiring for all new forms
2. Integration testing
3. EXE build verification

---

## 🧪 TESTING REQUIREMENTS

For EACH new form:
- [ ] Core function unit tests
- [ ] UI widget tests (pytest-qt)
- [ ] Integration test (DB write + rollback)
- [ ] Menu Help wiring test
4. Shell registry wiring test
5. EXE build test

---

## 📦 DELIVERABLES PER FORM

```
core/<module>/<feature>.py       # Business logic
ui/<module>/<feature>_ui.py      # PyQt6 dialog/window
ui/<module>/__init__.py          # Export open_<feature> function
tests/unit/test_<feature>.py     # Unit tests
tests/unit/test_<feature>_ui.py  # UI tests
shell.py registry entry          # _form_registry() wiring
menu_help.py                     # Permission mapping
```

---

## 🚀 START COMMAND

```bash
# Begin Week 1 - Group Check-Out
# 1. Create core/front_office/checkout.py:group_checkout()
# 2. Create ui/front_office/checkout_ui.py:GroupCheckoutWindow
# 3. Wire in shell.py _form_registry()
# 4. Add menu_help entries
# 5. Write tests
```

---

**Total Estimated: 6 weeks, 2 developers**
**Current: 71% → Target: 95%**