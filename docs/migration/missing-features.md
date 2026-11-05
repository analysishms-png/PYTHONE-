# Missing Features Analysis

## Overview
This document catalogs all VB6 functionality that is missing from the Laravel implementation, organized by priority and module.

---

## Front Office - Missing Features

### 1. Reservation Management (CRITICAL - P0)
**VB6 Forms**: `RrRoomReservation.frm` (1.1MB), `FrmBookingInquiry.frm`, `FrmReservationStatus.frm`, `resRoomNo.frm`, `resRoomType.frm`, `resGroup.frm`, `resBanq.frm`

**Missing Laravel**:
- No `ReservationController` for CRUD operations
- No booking creation/modification/cancellation
- No availability check by date/room type
- No rate plan selection with meal packages
- No advance deposit handling for reservations
- No group booking management
- No confirmation letter generation
- No cancellation policy enforcement
- No booking source/travel agent management
- No waitlist management

**Database Tables Needed**: `Bookings`, `GrpBookingDetails`, `BookingPlanDetail`, `BookingSource`, `MarketSeg`, `BussSource`, `TravelAgent`

**VB6 Key Logic**:
- Booking DocId: `B` + Site + `BKG` + Year + SeqNo
- Status: Tentative → Confirmed → Checked-In → Completed/Cancelled
- Cancellation charges based on days before arrival
- Group booking: Multiple rooms under master booking
- Room availability: `RoomMast` count - `RoomOcc` occupied - `RoomBlockOut` blocked

---

### 2. Group Check-In/Out (CRITICAL - P0)
**VB6 Forms**: `FdGrpCheckOut.frm` (1.5MB), `FdGrpdetCheckOut.frm` (262KB)

**Missing Laravel**:
- No group check-in (multiple rooms, single folio or linked folios)
- No group check-out (consolidated billing)
- No master folio with linked sub-folios
- No group billing split (by room, by guest, by percentage)
- No group advance deposit handling

**VB6 Key Logic**:
- Master folio (`MFolioNo=0`) with sub-folios (`MFolioNo=MasterFolioNo`)
- Shared charges can be split across folios
- Group departure: All rooms check out together or staggered
- Group advance: Single advance applied to master folio

---

### 3. Reverse Check-Out (CRITICAL - P0)
**VB6 Form**: `FdRevCheckOut.frm` (103KB)

**Missing Laravel**:
- No reverse check-out functionality
- No restoration of checked-out folios
- No room status rollback (RoomOcc.Type='I', ChkOutDate=NULL)
- No RoomMast RoomStat rollback
- No FolioLog audit trail for reversal

**VB6 Key Logic**:
- Only same day before night audit
- Requires authorization
- Restores: RoomOcc (Type='I', ChkOutDate=NULL), GuestFolio (U_AE='A'), RoomMast (RoomStat='')
- Logs in FolioLog with Flag='V' (Void/Reverse)

---

### 4. Night Audit Post Charges (HIGH - P1)
**VB6 Form**: `fdNDAcPostChrg.frm` (41KB)

**Missing Laravel**:
- No night audit automatic charge posting
- No recurring charge posting (daily room rent, packages)
- No package charge calculation for in-house guests
- No tax calculation during night audit
- No folio aging/update during night audit

**VB6 Key Logic**:
- Runs at night audit time (configurable, typically 2-4 AM)
- Posts room rent for all in-house guests
- Posts package charges (meal plans)
- Calculates GST on posted charges
- Updates `PlanDetails.NoOfDays`
- Creates FolioLog entries

---

### 5. Account Posting (HIGH - P1)
**VB6 Form**: `fdAcPostChrg.frm` (55KB)

**Missing Laravel**:
- No general ledger posting from front office
- No contra entries for advance adjustments
- No provision entries
- No depreciation/amortization posting

**VB6 Key Logic**:
- Posts to `Ledger` table with voucher reference
- Double-entry bookkeeping enforced
- Links to `Voucher_Type` and `Voucher_Prefix`

---

### 6. Bill Reprint (HIGH - P1)
**VB6 Form**: `fdPrintScreen.frm` (65KB)

**Missing Laravel**:
- No bill reprint functionality
- No historical bill retrieval
- No duplicate bill printing with "DUPLICATE" watermark
- No bill format selection (detailed/summary/GST)

**VB6 Key Logic**:
- Retrieves `FOMBillDetail` by bill_no
- Prints original format with "REPRINT" indicator
- Requires authorization for reprints

---

### 7. Folio Display & Summary (HIGH - P1)
**VB6 Forms**: `fdDisplayFolio.frm` (126KB), `fdDisplayFolioSumm.frm` (76KB)

**Missing Laravel**:
- No guest folio view (detailed)
- No folio summary view
- No charge/payment breakdown
- No running balance display
- No folio aging report

**VB6 Key Logic**:
- `fdDisplayFolio`: Full folio with all charges, payments, adjustments
- `fdDisplayFolioSumm`: Summary with totals only
- Both linked to `GuestFolio` via FolioNo/DocId

---

### 8. Re-Settlement (HIGH - P1)
**VB6 Form**: `FdReSetlement.frm` (241KB)

**Missing Laravel**:
- No folio re-settlement (adjusting settled folios)
- No charge reversal/adjustment on settled folios
- No partial settlement handling

**VB6 Key Logic**:
- Allows modification of settled folios
- Creates adjustment entries in `PayCharge`
- Updates `FolioLog` with Flag='R' (Re-settlement)
- Requires supervisor authorization

---

### 9. Payment/Charge Detail (HIGH - P1)
**VB6 Form**: `fdPaymentCharge.frm` (258KB)

**Missing Laravel**:
- No detailed payment entry screen
- No multi-mode payment (cash+card+advance)
- No payment allocation across folios
- No refund processing
- No payment mode master integration

**VB6 Key Logic**:
- Payment modes: Cash, Card, Cheque, Online, Advance, Room Charge
- Cheque details: Bank, Branch, Cheque No, Date
- Card details: Type, Last 4 digits, Auth code
- Advance adjustment: Applied first, then other modes

---

### 10. Room Lookup (HIGH - P1)
**VB6 Forms**: `FdLookUpRoom.frm` (36KB), `FdLookUpRoomNo.frm` (71KB)

**Missing Laravel**:
- No room search by criteria (status, category, floor, block)
- No room availability calendar view
- No room maintenance schedule view

**VB6 Key Logic**:
- Search by: Room No, Category, Floor, Block, Status
- Shows: Room details, current guest, status, housekeeping status
- Links to check-in, check-out, room change, block/unblock

---

### 11. Merge Charge (MEDIUM - P2)
**VB6 Form**: `FrmMergeCharge.frm` (85KB)

**Missing Laravel**:
- No charge merge between folios
- No folio consolidation

**VB6 Key Logic**:
- Moves charges from source folio to target folio
- Updates `PayCharge.FolioNoDocid`
- Logs in `FolioLog` with Flag='M' (Merge)

---

### 12. Advance Deposit Dialog (MEDIUM - P2)
**VB6 Forms**: `frmAdvanceDepDialog.frm` (223KB), `hAdvanceDepDialog.frm` (252KB), `hAdvanceDepDialogSecondry.frm` (155KB), `rrsAdvanceDepDialog.frm` (213KB), `rsAdvanceDepDialog.frm` (214KB), `HallAdvanceDepDialog.frm` (231KB), `POSAdvanceDepDialog.frm` (227KB), `rsTouchScreenAdvanceDepDialog.frm` (208KB)

**Missing Laravel**:
- No standalone advance deposit entry
- Only partial implementation in walk-in submit
- No advance deposit against reservation
- No advance deposit refund
- No advance deposit aging report

**VB6 Key Logic**:
- Voucher types: AD, ADE, ADRES, AGVR, ALAUN, AR1, AR2, ASOB, ASOF, ASOR
- Date validity: `Voucher_Prefix.date_from` to `date_to`
- Applied at check-in or during stay
- Refundable on cancellation (per policy)

---

### 12. Duplicate Check-In Detection (MEDIUM - P2)
**VB6 Control**: `duplicatchkin` grid in `fdWalkInEntry`

**Missing Laravel**:
- No duplicate guest detection during check-in
- No alert for existing active folio for same guest

**VB6 Key Logic**:
- Searches `GuestFolio` for same `GuestProf` with `ChkOutDate IS NULL`
- Shows warning: "Guest already checked in. Continue?"

---

### 13. Guest Information & History (MEDIUM - P2)
**VB6 Forms**: `frmGuestInfo.frm` (61KB), `frmGuestComments.frm` (74KB), `FrmGuestWakeUp.frm` (80KB)

**Missing Laravel**:
- No guest 360° view (all stays, charges, preferences)
- No guest comments/remarks management
- No wake-up call scheduling
- No guest preference tracking (room type, floor, amenities)

---

### 14. Guest Registration Card - GRC (MEDIUM - P2)
**VB6 Form**: `FrmGrcBlank.frm` (14KB)

**Missing Laravel**:
- No GRC print (government mandated in India)
- No GRC data capture (passport/visa for foreigners)
- No GRC submission to authorities (Form C)

**VB6 Key Logic**:
- Mandatory for foreign nationals
- Fields: Passport No, Visa No, Visa Expiry, Nationality, Arrival From, Destination
- Print format per government specification
- Digital submission (Form C) integration

---

### 15. Guest Parameter Master (LOW - P3)
**VB6 Form**: `frmGuestParamMast.frm` (35KB)

**Missing Laravel**:
- No guest parameter configuration
- No default values for new guests
- No mandatory field configuration

---

## Point of Sale - Missing Features

### 1. POS Sale Bill (CRITICAL - P0)
**VB6 Form**: `RSSaleBill.frm` (2.9MB) - LARGEST FORM

**Missing Laravel**:
- No POS billing interface
- No item entry with quantity/rate/discount
- No KOT integration (auto-create KOT on item add)
- No table management (assign, merge, split)
- No payment settlement (cash/card/room charge)
- No bill printing (KOT + Bill)
- No split bill functionality
- No complimentary/void item handling
- No happy hour pricing
- No service charge/GST configuration per outlet

**VB6 Key Logic**:
- Outlet-wise billing (multiple outlets per property)
- Item categories: Food, Beverage, Tobacco, Other
- Rate levels: Regular, Happy Hour, Member, Staff
- KOT auto-print to kitchen printers
- Bill print to receipt printer
- Settlement updates `GuestFolio` if room charge

---

### 2. KOT Entry (CRITICAL - P0)
**VB6 Form**: `RsKOTEntry.frm` (600KB)

**Missing Laravel**:
- No Kitchen Order Ticket entry
- No KOT status tracking (New → In Progress → Ready → Served)
- No KOT modification/cancellation
- No KOT printing to kitchen printers
- No item-wise preparation time tracking

---

### 3. Table Management (HIGH - P1)
**VB6 Forms**: `RsTableMast.frm` (40KB), `RsTbChange.frm` (40KB)

**Missing Laravel**:
- No table master (number, capacity, section, outlet)
- No table status (Vacant, Occupied, Reserved, Dirty)
- No table merge/split
- No table change during service

---

### 4. Menu Management (HIGH - P1)
**VB6 Forms**: `RsMenuItemEntry.frm` (203KB), `RsSpecItemEntry.frm` (59KB)

**Missing Laravel**:
- No menu item master (item, rate, tax, category)
- No recipe/BOM for stock deduction
- No menu scheduling (breakfast/lunch/dinner)
- No outlet-wise pricing

---

### 5. POS Reports (MEDIUM - P2)
**VB6 Forms**: `rPOSRepView.frm` (1.9MB)

**Missing Laravel**:
- No POS sales reports
- No item-wise sales analysis
- No outlet-wise comparison
- No waiter-wise sales
- No hourly sales pattern
- No payment mode analysis

---

## Banquet & Hall - Missing Features

### 1. Hall Booking (CRITICAL - P0)
**VB6 Form**: `HallBooking.frm` (276KB)

**Missing Laravel**:
- No hall booking calendar
- No hall availability check
- No booking types (full/half/hourly)
- No advance payment handling
- No cancellation policy
- No multiple events per day per hall

---

### 2. Hall Billing & Estimates (CRITICAL - P0)
**VB6 Forms**: `HallBill.frm` (560KB), `HallBillEstimate.frm` (398KB), `HallEstimate.frm` (388KB)

**Missing Laravel**:
- No hall bill generation
- No estimate/quotation creation
- No F&B billing (per cover/consumption)
- No service charge/GST calculation
- No estimate vs actual variance report

---

### 3. Kitchen/Chef Costing (HIGH - P1)
**VB6 Form**: `HallChefPreCosting.frm` (187KB)

**Missing Laravel**:
- No recipe costing
- No food cost percentage tracking
- No menu engineering reports

---

## Finance & Accounting - Missing Features

### 1. Voucher Entry (CRITICAL - P0)
**VB6 Form**: `FaVrEnt.frm` (591KB)

**Missing Laravel**:
- No general voucher entry (Receipt, Payment, Journal, Contra)
- No voucher numbering per type per year
- No double-entry validation
- No party ledger integration
- No multi-currency support
- No voucher approval workflow

---

### 2. Tax Voucher / GST (CRITICAL - P0)
**VB6 Form**: `FaTaxVoucher.frm` (566KB)

**Missing Laravel**:
- No GST-compliant voucher entry
- No HSN/SAC code management
- No intra/inter-state detection
- No reverse charge handling
- No e-invoice generation (IRN)
- No GSTR-1/3B return preparation

---

### 3. Party Master / Sub-Group (CRITICAL - P0)
**VB6 Form**: `FaSubGroup.frm` (210KB)

**Missing Laravel**:
- No party master (Customer, Supplier, Employee, Bank)
- No credit limit enforcement
- No TDS section mapping
- No party-wise outstanding reports
- No aging analysis

---

### 4. Finance Reports (CRITICAL - P0)
**VB6 Form**: `FaReports.frm` (772KB)

**Missing Laravel**:
- No Trial Balance
- No Profit & Loss
- No Balance Sheet
- No Cash Flow
- No Fund Flow
- No Ratio Analysis

---

### 5. TDS Management (HIGH - P1)
**VB6 Forms**: `FaTDSCat.frm` (33KB), `FaTDSCertificate.frm` (71KB), `FaTDSChal.frm` (105KB)

**Missing Laravel**:
- No TDS section master
- No TDS deduction at voucher entry
- No Form 16/16A generation
- No TDS challan (ITNS 281) generation
- No TDS return (24Q/26Q) preparation

---

### 6. Cheque Management (HIGH - P1)
**VB6 Form**: `FaChqClear.frm` (86KB)

**Missing Laravel**:
- No post-dated cheque tracking
- No cheque clearing status
- No cheque bounce handling
- No cheque printing

---

### 7. Fixed Charge / Recurring Entries (MEDIUM - P2)
**VB6 Forms**: `FrmFixedChargeMast.frm` (99KB), `FaMagic.frm` (159KB)

**Missing Laravel**:
- No recurring voucher templates
- No auto-posting scheduler
- No rent/lease auto-posting

---

## Inventory & Purchase - Missing Features

### 1. Item Master Hierarchy (HIGH - P1)
**VB6 Forms**: `FrmItemMast.frm`, `FrmItemGroupMast.frm`, `FrmItemCatMast.frm` (and Raw variants)

**Missing Laravel**:
- No 3-level item hierarchy (Group → Category → Item)
- No item attributes (unit, tax, reorder level, shelf life)
- No raw material vs finished goods distinction
- No recipe/BOM for kitchen items

---

### 2. Purchase Cycle (HIGH - P1)
**VB6 Forms**: `PIndent.frm` (152KB), `pPOrder.frm` (228KB), `pMREntry.frm` (248KB), `pGIss.frm` (143KB)

**Missing Laravel**:
- No purchase indent → PO → GRN → Bill workflow
- No three-way matching (PO + GRN + Bill)
- No rate variance analysis
- No purchase return handling
- No supplier performance tracking

---

### 3. Stock Management (HIGH - P1)
**VB6 Forms**: `FrmOPStock.frm` (94KB), `FrmStockTransfer.frm` (101KB), `FrmDenomination.frm` (84KB)

**Missing Laravel**:
- No opening stock entry
- No inter-godown transfer
- No physical stock verification
- No stock valuation (FIFO/Weighted Avg)
- No slow/non-moving analysis
- No expiry tracking (for F&B)

---

## HR & Payroll - Missing Features

### 1. Employee Master (HIGH - P1)
**VB6 Form**: `PrEmployee.frm` (225KB)

**Missing Laravel**:
- No employee master with full details
- No document management (ID, certificates)
- No family/nominee details
- No asset allocation tracking

---

### 2. Attendance & Leave (HIGH - P1)
**VB6 Forms**: `PrAttend.frm` (78KB), `PrLeavench.frm` (80KB), `PrHoliday.frm` (39KB)

**Missing Laravel**:
- No attendance capture (biometric/manual)
- No shift management
- No leave application/approval workflow
- No leave balance tracking
- No holiday calendar

---

### 3. Payroll Processing (HIGH - P1)
**VB6 Form**: `PrSalCreate.frm` (131KB)

**Missing Laravel**:
- No salary structure definition
- No payroll run (monthly)
- No statutory compliance (PF, ESI, PT, TDS)
- No bonus/gratuity calculation
- No payslip generation
- No bank advice file

---

## Membership - Missing Features

### 1. Membership Master (HIGH - P1)
**VB6 Form**: `MembershipMast.frm` (619KB)

**Missing Laravel**:
- No membership categories (Life, Annual, Corporate)
- No entrance fee + subscription model
- No family membership linking
- No membership card management

---

### 2. Facility Management (MEDIUM - P2)
**VB6 Forms**: `MemFacilityMast.frm` (79KB), `MemFacilityEntry.frm` (61KB)

**Missing Laravel**:
- No club facility master (gym, pool, tennis, etc.)
- No facility booking/scheduling
- No usage tracking
- No facility-wise revenue

---

### 3. Billing & Renewal (HIGH - P1)
**VB6 Forms**: `MemPaymentReceive.frm` (146KB), `MemRenewalEntry.frm` (30KB), `memCatChngEntry.frm` (112KB)

**Missing Laravel**:
- No recurring subscription billing
- No renewal reminders
- No category upgrade/downgrade
- No pro-rata calculations

---

## Housekeeping - Missing Features

### 1. Room Status & Maid Assignment (HIGH - P1)
**VB6 Forms**: `HHouseKeeping.frm` (69KB), `FrmHouseStatus.frm` (73KB)

**Missing Laravel**:
- No room status board (Vacant/Occupied/Dirty/Maintenance)
- No maid assignment per room
- No room inspection checklist
- No lost & found management

---

### 2. Linen & Supplies (MEDIUM - P2)
**VB6 Forms**: `HKHouseOpStk.frm` (97KB), `HKIssRec.frm` (115KB), `HKRoomOpStk.frm` (101KB)

**Missing Laravel**:
- No linen inventory
- No issue/receive to floors
- No par level management
- No condemned linen tracking

---

### 3. Room Block Management (MEDIUM - P2)
**VB6 Form**: `HKRoomBlock.frm` (91KB)

**Missing Laravel**:
- No maintenance block scheduling
- No out-of-order room management
- No block calendar view

---

## System Integration - Missing Features

### 1. Smart Card / Door Lock (MEDIUM - P2)
**VB6 Forms**: `SmartCardMast.frm`, `SmartCardRegistration.frm`, `SmartCardRecharge.frm`, `SmartCardRefund.frm`, `SmartCardLostReIssue.frm`, `frmGodrejLockSettings.frm`, `frmLockGodrejSettings.frm`

**Missing Laravel**:
- No smart card issuance/management
- No door lock integration (Godrej/Assa Abloy/Onity)
- No key card encoding
- No lost card replacement workflow

---

### 2. SMS / WhatsApp Integration (PARTIAL)
**VB6 Forms**: `FrmSMSEnviro.frm` (115KB), `FrmSMSMultiType.frm` (114KB), `FrmSmsCenterSettings.frm` (87KB)

**Missing Laravel**:
- Multi-provider SMS gateway (only WhatsApp implemented)
- SMS template management
- Scheduled SMS
- Delivery reports
- Opt-out management

---

### 3. E-Invoice / GST Integration (PARTIAL)
**VB6 Module**: `eInvoice.bas` (60KB)

**Missing Laravel**:
- IRN generation via GSP
- E-invoice QR code
- E-way bill integration
- GST return auto-preparation

---

### 4. Tally Export (LOW - P3)
**VB6 Form**: `FrmTallyExport.frm` (66KB)

**Missing Laravel**:
- No Tally XML/UDF export
- No ledger mapping to Tally groups
- No voucher export with narration

---

### 5. Job Scheduler (LOW - P3)
**VB6 Form**: `FrmJobScheduler.frm` (81KB)

**Missing Laravel**:
- No cron job management UI
- No job monitoring
- No retry/failure handling

---

### 6. Year End Process (LOW - P3)
**VB6 Form**: `FrmYearEnd.frm` (19KB)

**Missing Laravel**:
- No fiscal year closing
- No opening balance carry-forward
- No audit trail archival

---

## Summary by Priority

| Priority | Count | Modules |
|----------|-------|---------|
| **P0 - Critical (Blocking)** | 8 | Reservation, Group Check-In/Out, Reverse Check-Out, POS Billing, KOT, Hall Booking, Voucher Entry, Tax Voucher, Party Master, Finance Reports |
| **P1 - High** | 15 | Night Audit, Account Posting, Bill Reprint, Folio Views, Re-Settlement, Payment Detail, Room Lookup, TDS, Cheque Mgmt, Purchase Cycle, Stock Mgmt, Employee, Attendance, Payroll, Membership Billing, HK Room Status |
| **P2 - Medium** | 12 | Merge Charge, Advance Deposit, Duplicate Detection, Guest History, GRC, Guest Params, Table Mgmt, Menu Mgmt, POS Reports, Kitchen Costing, Recurring Entries, Facility Mgmt, Linen, Room Block, Smart Card, SMS Multi |
| **P3 - Low** | 6 | POS Bill Mod, POS Recycle, POS Transfer, Tally Export, Job Scheduler, Year End |

**Total Missing Functional Areas: ~41**

---

## Estimated Effort

| Phase | Weeks | Focus |
|-------|-------|-------|
| Phase 1: Core Front Office | 4 | Reservation, Group Ops, Reverse Check-Out, Night Audit, Bill/folio views |
| Phase 2: Finance & POS | 4 | Voucher Entry, GST, TDS, Reports, POS Billing, KOT, Tables |
| Phase 3: Banquet & Inventory | 3 | Hall Booking, Billing, Item Masters, Purchase, Stock |
| Phase 4: HR, Membership, HK | 3 | Employee, Payroll, Membership, Facilities, Housekeeping |
| Phase 5: Integration & Polish | 2 | Smart Card, SMS, E-Invoice, Tally, Scheduler, Testing |

**Total: ~16 weeks (4 months) for full parity**