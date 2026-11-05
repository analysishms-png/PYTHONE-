# VB6 Business Rules - Extracted from Source Code

## 1. Front Office Business Rules

### 1.1 Check-In / Walk-In Rules

#### Room Assignment Logic
- **Auto Room Assignment**: When checking in, system finds first available room of requested type
  - Query: `RoomMast.Type='RO' AND Code NOT IN (SELECT RoomNo FROM RoomOcc WHERE ChkOutDate IS NULL)`
  - Priority: By room code ascending
- **Room Type Validation**: Room must exist in RoomMast and not be occupied
- **Occupancy Check**: `RoomOcc.ChkOutDate IS NULL` indicates occupied
- **Room Block Check**: Room cannot be blocked (RoomBLockOut.Type IN ('O','M'))

#### Guest Profile Rules
- **Auto Guest Code**: Format `KK######` (site code + 6-digit sequence)
  - Next code: `MAX(RIGHT(Code,6)) + 1` where Code LIKE 'KK%'
- **Mandatory Fields**: Name, City, Country
- **ID Proof**: Mandatory for foreign nationals (Passport, Visa)
- **Photo Capture**: Optional but recommended for security

#### Reservation to Check-In Conversion
- **Booking Status**: Only `CANCEL='N'` bookings can be checked in
- **Group Booking Handling**: Check `GrpBookingDetails` for unchecked rooms
- **Advance Deposit**: Applied to folio if advance payment exists
- **Voucher Prefix**: Must have valid `Voucher_Prefix` for arrival date (`date_from <= arrival <= date_to`)

#### Check-In Validation
- **Arrival Date Check**: Warn if guest arrives before booked arrival date, but allow override
  ```vb
  If ArrDate < Booking.ArrDate Then
      MsgBox "Guest Arrived Before Arrival Date ! Checked in Anyway?"
  End If
  ```
- **Room Availability**: Real-time check against RoomOcc
- **Duplicate Check-In Detection**: `duplicatchkin` grid checks for existing active folio

#### Advance Deposit Rules
- **Voucher Types**: AD, ADE, ADRES, AGVR, ALAUN, AR1, AR2, ASOB, ASOF, ASOR
- **Date Window**: Voucher must be valid for check-in date
- **Application**: Advance applied to folio at check-in

### 1.2 Check-Out Rules

#### Settlement Requirements
- **Zero Balance**: Folio must be fully settled (balance = 0) or have valid payment arrangement
- **Bill Print**: Bill must be printed before check-out (bill_no > 0)
- **Charge Verification**: All posted charges must be reviewed

#### Room Release
- **RoomOcc Update**: Set `ChkOutDate`, `ChkOutTime`, `Type='C'`
- **RoomMast Status**: Update `RoomStat='D'` (Dirty) for housekeeping
- **Key Return**: Electronic key deactivation (if smart card enabled)

#### Group Check-Out
- **Master Folio**: One master folio for group, individual folios linked via `MFolioNo`
- **Consolidated Billing**: Charges can be split or consolidated
- **Partial Check-Out**: Some rooms can check out while others remain

#### Reverse Check-Out
- **Conditions**: Only same day, before night audit
- **Restoration**: RoomOcc `ChkOutDate=NULL`, `Type='I'`, RoomMast `RoomStat=''`
- **Folio Reactivation**: GuestFolio `U_AE='A'` (Active)

### 1.3 Amend Stay Rules

#### Departure Date Changes
- **New Date >= Current Date**: Cannot set departure in the past
- **New Date >= Check-In Date**: Cannot depart before arrival
- **Date + Time Validation**: New departure datetime must be strictly after check-in datetime
- **History Tracking**: Every amendment logged in `GuestFolioAmend` with old/new dates

#### Rate Impact
- **PlanDetails Update**: `NoOfDays` recalculated based on new departure
- **Rate Recalculation**: If rate plan changes, charges recalculated
- **Advance Adjustment**: Advance deposit recalculated if stay extended/reduced

### 1.4 Room Change Rules

#### Eligibility
- **Guest Must Be In-House**: `RoomOcc.ChkOutDate IS NULL`
- **New Room Available**: Not occupied, not blocked
- **Rate Difference**: Handle rate plan change (charge/credit difference)

#### Process
1. Create new RoomOcc row with new room
2. Update old RoomOcc: `NewRoomNo`, `Reason`, `ChkOutDate=GETDATE()`
3. Update GuestFolio if rate changes
4. Log in FolioLog with Flag='R'
5. Housekeeping notification for both rooms

### 1.5 Post Charges / Payment Rules

#### Charge Posting
- **Charge Types**: Room rent, F&B, laundry, telephone, mini-bar, etc.
- **Tax Calculation**: Based on `TaxStructure` linked to `RevMast`
- **GST**: CGST/SGST/IGST based on state (intra/inter)
- **Discount**: Only if authorized (user permission)

#### Payment Collection
- **Payment Modes**: Cash, Card, UPI, Cheque, Online, Advance Adjustment
- **Multi-Payment**: Single bill can have multiple payment modes
- **Refund**: Only for overpayment, requires authorization
- **Advance Adjustment**: Applied before other payment modes

#### Bill Cancellation
- **Permission**: Only admin or users with `billcancel` permission
- **Conditions**: Same day, before night audit, no linked payments
- **Audit Trail**: Log in `FolioLog` with Flag='X'

### 1.6 Guest Folio Rules

#### Folio Number Generation
- **Format**: Sequential per `Vprefix` (fiscal year)
- **Race Condition**: `SELECT MAX(FolioNo) WITH (UPDLOCK, HOLDLOCK)`
- **DocId Pattern**: `D` + Site(2) + `CHK` + Vprefix(4) + FolioNo(8) = 21 chars

#### Folio Status
- **U_AE Values**: 'A'=Active, 'E'=Edited, 'D'=Deleted, 'C'=Cancelled
- **In-House**: `RoomOcc.ChkOutDate IS NULL` AND `RoomOcc.Type='I'`
- **Checked Out**: `RoomOcc.Type='C'`

---

## 2. Reservation Business Rules

### 2.1 Booking Creation
- **Booking DocId**: `B` + Site + `BKG` + Year + SeqNo
- **Status Flow**: `Tentative` → `Confirmed` → `Checked-In` → `Completed` / `Cancelled`
- **Cancellation Charges**: Based on `Enviro` settings (days before arrival)

### 2.2 Availability Check
- **Room Count**: `RoomMast` count by category minus occupied (`RoomOcc.ChkOutDate IS NULL`)
- **Group Blocking**: `GrpBookingDetails` rooms reserved
- **Maintenance Block**: `RoomBLockOut` rooms excluded

### 2.3 Rate Plans
- **Plan Components**: Room rate + meal plan (AP/MAP/CP/EP)
- **Seasonal Rates**: `SeasonMast` overrides base rate
- **Corporate Rates**: `Companyreg` linked rate plans
- **Package Rates**: `PlanMast` with inclusive items

### 2.4 Advance Deposit
- **Minimum**: Configurable % of total or fixed amount
- **Voucher Types**: AD, ADE, ADRES with date validity
- **Refund on Cancellation**: Per cancellation policy

---

## 3. Point of Sale Business Rules

### 3.1 KOT (Kitchen Order Ticket)
- **KOT Number**: Sequential per outlet per day
- **Status Flow**: `New` → `In Progress` → `Ready` → `Served` → `Billed`
- **Modification**: Allowed before `Ready` status
- **Cancellation**: Requires reason, updates stock

### 3.2 Sale Bill
- **Bill Number**: Sequential per outlet per fiscal year
- **Settlement**: Cash, Card, Room Charge (folio), Complimentary
- **Split Bill**: By item, by person, by percentage
- **Discount**: Item-level or bill-level, requires authorization

### 3.3 Table Management
- **Table Status**: Vacant, Occupied, Reserved, Dirty
- **Merge/Split**: Tables can be combined or separated
- **Waiter Assignment**: Each table assigned to waiter

### 3.4 Inventory Integration
- **Stock Deduction**: On KOT `Served` or bill `Settled`
- **Recipe/BOM**: `ItemMast` linked to raw materials
- **Wastage**: Tracked separately

---

## 4. Banquet Business Rules

### 4.1 Hall Booking
- **Booking Types**: Full day, Half day, Hourly
- **Advance**: 50% at booking, balance before event
- **Cancellation**: Sliding scale based on days before event
- **Multiple Events**: Same hall can have multiple bookings per day (time slots)

### 4.2 Billing
- **Hall Rent**: Based on duration and hall type
- **F&B**: Per cover or consumption-based
- **Service Charge**: Configurable % (default 10%)
- **GST**: On total (rent + F&B + service charge)

### 4.3 Estimates vs Final Bill
- **Estimate**: Pre-event quotation
- **Final Bill**: Actual consumption + adjustments
- **Variance Report**: Estimate vs Actual analysis

---

## 5. Finance & Accounting Rules

### 5.1 Voucher Entry
- **Voucher Types**: Receipt (RCT), Payment (PMT), Journal (JNL), Contra (CNV)
- **Numbering**: Per voucher type per fiscal year (`Voucher_Prefix`)
- **Mandatory Fields**: Date, Party (SubGroup), Amount, Narration
- **Double Entry**: Every voucher must balance (Dr = Cr)

### 5.2 Party Master (SubGroup)
- **Code Format**: `SG` + 4 digits (SubGroup) or `SUNDRY` + 4 digits
- **Types**: Customer, Supplier, Employee, Bank, Other
- **Credit Limit**: Enforced at voucher entry
- **TDS**: Applicable based on `TDS_Catg` and section

### 5.3 Tax (GST) Rules
- **GST Rates**: 0%, 5%, 12%, 18%, 28% per `TaxStructure`
- **HSN/SAC**: Mandatory for items/services
- **Intra/Inter State**: CGST+SGST vs IGST
- **Reverse Charge**: For specified services
- **E-Invoice**: Mandatory for B2B > 50Cr turnover

### 5.4 TDS (Tax Deducted at Source)
- **Sections**: 194C (Contractor), 194I (Rent), 194J (Professional), 194H (Commission)
- **Thresholds**: Per section per party per FY
- **Certificates**: Form 16A quarterly, Form 16 annually
- **Challan**: Monthly payment by 7th of next month

### 5.5 Financial Reports
- **Trial Balance**: All ledgers with opening/closing balances
- **P&L**: Revenue vs Expense by group
- **Balance Sheet**: Assets = Liabilities + Capital
- **Cash Flow**: Operating/Investing/Financing
- **GSTR-1/3B**: Monthly/quarterly GST returns

---

## 6. Inventory Rules

### 6.1 Stock Management
- **Valuation**: FIFO / Weighted Average (configurable)
- **Reorder Level**: Min/Max per item per location
- **Stock Transfer**: Inter-godown with GRN
- **Physical Verification**: Periodic, variance adjustment

### 6.2 Purchase Cycle
- **Indent → PO → GRN → Bill → Payment**
- **Three-Way Match**: PO + GRN + Bill
- **Rate Variance**: PO rate vs Bill rate tracking
- **Return**: Quality/quantity mismatch returns

### 6.3 Consumption
- **Department Issue**: `pGIss` for department consumption
- **Kitchen Consumption**: Recipe-based (BOM)
- **Wastage**: Tracked separately from consumption
- **Inter-Dept Transfer**: With authorization

---

## 7. HR & Payroll Rules

### 7.1 Attendance
- **Shift Timings**: Configurable per department
- **Late/Early**: Grace period, then half-day/full-day deduction
- **Overtime**: >8 hrs/day or >48 hrs/week at 2x rate
- **Leave**: EL, CL, SL, ML with carry-forward rules

### 7.2 Payroll
- **Components**: Basic, HRA, DA, Allowances, Deductions
- **Statutory**: PF (12%), ESI (0.75%/3.25%), PT (state-wise), TDS
- **Bonus**: 8.33% min, 20% max of basic+DA
- **Gratuity**: 15 days per year after 5 years

---

## 8. Membership Rules

### 8.1 Categories
- **Types**: Life, Annual, Corporate, Family, NRI
- **Fees**: Entrance + Annual subscription
- **Facilities**: Per category (gym, pool, restaurant, rooms)

### 8.2 Billing
- **Monthly**: Recurring subscriptions
- **Usage**: Pay-per-use facilities
- **Settlement**: Monthly statement, due by 15th

---

## 9. System-Level Rules

### 9.1 Multi-Property (Site Code)
- **Site Code**: 2-char code per property (e.g., 'KK', 'BB')
- **Data Isolation**: Most tables have `Site_Code` or `LogSite_Code`
- **HO Access**: `LogSite_Code='HO'` sees all sites
- **Voucher Prefix**: Per site per year

### 9.2 User Permissions
- **Module Access**: Per user per module (view/ins/upd/del)
- **Action Level**: Menu-level permissions (141112=Check-in, 141113=Check-in List)
- **Admin Override**: `Auth::user()->u_name == compuname->u_name`

### 9.3 Audit Trail
- **Fields**: `U_Name`, `U_EntDt`, `U_AE` on every table
- **Log Tables**: `FolioLog`, `PayChargeLog`, `LedgerLog`, `RoomBlockOut`
- **Flag Values**: 'A'=Add, 'E'=Edit, 'D'=Delete, 'C'=Cancel, 'R'=Room Change, 'M'=Amend

### 9.4 Date Management
- **Current Date**: `enviro_general.ncur` (business date, not system date)
- **Fiscal Year**: April 1 - March 31 (India)
- **Business Day**: Starts at 6 AM (configurable)

---

## 10. Key Database Constraints (from VB6 Evidence)

### 10.1 Primary Keys (Composite Common)
- `GuestFolio`: DocId (PK), FolioNo+Vprefix+Site_Code (Unique)
- `RoomOcc`: DocId+SNo (PK)
- `PayCharge`: DocId+SNo (PK) or FolioNoDocid+Vno
- `PlanDetails`: FolioNo+RoomNo+Site_Code+DocId (PK)
- `Booking`: DocId (PK)
- `GuestProf`: Code (PK)

### 10.2 Foreign Key Relationships
- `RoomOcc.DocId` → `GuestFolio.DocId`
- `RoomOcc.RoomNo` → `RoomMast.Code`
- `GuestFolio.GuestProf` → `GuestProf.Code`
- `PayCharge.FolioNoDocid` → `GuestFolio.DocId`
- `PlanDetails.DocId` → `GuestFolio.DocId`
- `Booking.GuestProf` → `GuestProf.Code`
- `GrpBookingDetails.BookingDocId` → `Booking.DocId`

### 10.3 Critical Check Constraints (VB6 Enforced)
- `RoomOcc.Type` IN ('I','C','O') - In-house, Checked-out, Out-of-order
- `GuestFolio.U_AE` IN ('A','E','D','C')
- `Booking.Cancel` IN ('Y','N')
- `RoomMast.Type` IN ('RO','TB','C','O') - Room, Table, Conference, Out-of-order
- `RoomMast.RoomStat` IN ('','D','M') - Clean, Dirty, Maintenance

---

## Migration Notes for Laravel

### Priority 1 (Core Front Office)
1. Check-In/Walk-In (`fdWalkInEntry` → `WalkinSubmit`)
2. Check-Out (`FdCheckOut` → `InhouseAction`)
3. Room Status (`FdRoomDisplay` → `RoomStatus`)
4. Reservation (`RrRoomReservation` → `Booking` controllers)
5. Amend Stay (`fdAmendEntry` - MISSING in Laravel)
6. Room Change (`fdRoomChange` - PARTIAL in `InhouseAction`)

### Priority 2 (Finance)
1. Voucher Entry (`FaVrEnt` - PARTIAL)
2. Tax Voucher (`FaTaxVoucher` - MISSING)
3. Party Master (`FaSubGroup` - PARTIAL)
4. TDS (`FaTDSCat`, `FaTDSChal` - MISSING)

### Priority 3 (POS/Banquet)
1. POS Sale Bill (`RSSaleBill` - PARTIAL in `WalkinSubmit`)
2. KOT (`RsKOTEntry` - MISSING)
3. Hall Booking (`HallBooking` - MISSING)

### Priority 4 (Inventory/HR/Membership)
1. Inventory Masters - PARTIAL
2. HR/Payroll - MISSING
3. Membership - PARTIAL

### Critical Gaps Identified
1. **Amend Stay** - No Laravel equivalent for `fdAmendEntry`
2. **Reverse Check-Out** - No `FdRevCheckOut` equivalent
3. **Group Check-Out** - No `FdGrpCheckOut` equivalent
4. **Night Audit Post Charges** - Partial (`fdNDAcPostChrg`)
5. **Voucher Serialization** - Partial (`FrmSerialiseVr`)
6. **Smart Card/Door Lock** - Hardware integration missing
7. **E-Invoice** - Partial (`eInvoice.bas` → `EnviroEinvoice`)
8. **Tally Export** - Missing
9. **Job Scheduler** - Missing (`FrmJobScheduler`)