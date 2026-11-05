# VB6 Forms Inventory - Detailed Analysis

## Front Office Module

### 1. Check-In / Walk-In / Reservation Lookup

#### `fdCheckIn.frm` (15KB) - "Look Up Reservation By Guest Name"
- **Purpose**: Search reservations by guest name, select booking for check-in
- **Controls**: TextBox (search), DataGrid (results), MSFlexGrid, CmdOK
- **Key Tables**: Booking, RoomCat, RoomMast, GuestProf
- **SQL Query**:
  ```sql
  SELECT Booking.DocId AS CODE, GuestProf.Name, Booking.GuestProf, Booking.DocId AS ID,
  RoomCat.Name AS RoomType, RoomMast.Code AS RoomNo, Booking.ArrDate AS Arr_Date,
  Booking.NoDays AS tot_Days, Booking.NoOfRooms as NO_Rooms
  FROM ((Booking LEFT JOIN RoomCat ON (Booking.RoomType = RoomCat.Type) AND (Booking.RoomCat = RoomCat.Code))
  LEFT JOIN RoomMast ON (Booking.RoomType = RoomMast.Type) AND (Booking.RoomNo = RoomMast.Code))
  INNER JOIN GuestProf ON Booking.GuestProf = GuestProf.Code
  WHERE BOOKING.CANCEL='N' AND BOOKING.LOGSITE_CODE='...'
  AND (subquery for group bookings)
  ORDER BY GuestProf.Name
  ```
- **Workflow**: Search → Select booking → Opens `fdWalkInEntry` for actual check-in
- **Validation**: Checks if guest arrived before arrival date (warns but allows)
- **Laravel Mapping**: `CheckinList` controller, `property.checkinlist` view

#### `fdWalkInEntry.frm` (1.2MB, 21K lines) - "Walk In / Check In Entry" ⭐ LARGEST FORM
- **Purpose**: Main check-in form for walk-ins and reservation check-ins
- **Key Tables**: GuestFolio, GuestProf, RoomOcc, RoomMast, RoomCat, PlanDetails, Bookings, GrpBookingDetails, PayCharge, Voucher_Prefix, Voucher_Type, Enviro, Cities, Countries, States, SubGroup, ProfileImages, GuestfolioProfDetail, RoomInclusive, Comp_PlanDet, Comp_Inclusive
- **Key Operations**:
  1. Guest profile creation/lookup (auto-code KK######)
  2. Room assignment (auto-select available room)
  3. Rate plan selection (package, inclusive items)
  4. Payment/advance deposit handling
  5. ID proof capture (photo upload)
  6. Group booking support
  7. Company/Travel agent linking
  8. Room type/category selection
  8. Check-in time, checkout time, number of rooms/guests
- **Key Sub-forms/Grids**:
  - `DGPayment` - Payment grid
  - `DGCity` - City lookup
  - `DGSource` - Source/Booking lookup
  - `FGrid2` / `FGrid3` - Package/plan details
  - `DGGrpPlanPkg`, `DGGrpRoomCat`, `DGGrpRoomNo` - Group booking
  - `FrmPackage` - Package frame
  - `duplicatchkin` - Duplicate check-in detection
- **TopCtrl Events** (16 events): Main toolbar actions (New, Save, Edit, Delete, Print, etc.)
- **Laravel Mapping**: `WalkinSubmit` controller (submitwalkin), `WalkinUpdate` controller

#### `RrRoomReservation.frm` (1.1MB, 1.1M lines) - Room Reservation ⭐ 2ND LARGEST
- **Purpose**: Full reservation management (new, modify, cancel, confirm)
- **Key Tables**: Bookings, GuestProf, RoomMast, RoomCat, RoomOcc, PlanMast, PlanDetails, GrpBookingDetails, BookingPlanDetails, BookingSource, MarketSeg, BussSource, TravelAgent, Companyreg, Cities, Countries, States, Voucher_Prefix, Voucher_Type, Enviro, SubGroup
- **Key Features**:
  - Reservation creation with guest profile
  - Room type/category selection with availability check
  - Rate plan with meal packages
  - Advance deposit handling
  - Group bookings
  - Corporate/Travel agent bookings
  - Confirmation letters
  - Cancellation with charges
  - Modification (dates, rooms, rates)
- **Laravel Mapping**: `Reservation` controllers, `Booking` model

#### `fdRoomOcc.frm` (49KB) - Room Occupancy
- **Purpose**: View current room occupancy status
- **Tables**: RoomOcc, RoomMast, GuestFolio, GuestProf
- **Laravel Mapping**: `RoomStatus` controller (inhouseroomstatus)

#### `FdRoomDisplay.frm` (11KB) - Room Display
- **Purpose**: Display room status grid (all rooms with status)
- **Tables**: RoomMast, RoomOcc
- **Laravel Mapping**: `RoomStatus` controller

#### `FdLookUpRoom.frm` (36KB) / `FdLookUpRoomNo.frm` (71KB) - Room Lookup
- **Purpose**: Search rooms by various criteria
- **Tables**: RoomMast, RoomOcc, RoomCat, RoomBlockOut
- **Laravel Mapping**: `RoomStatus` controller

#### `FdGrpCheckOut.frm` (1.5MB) - Group Check-Out ⭐ 3RD LARGEST
- **Purpose**: Check-out multiple folios for a group booking
- **Tables**: GuestFolio, RoomOcc, PayCharge, RoomMast, GuestProf, PlanDetails
- **Laravel Mapping**: Check-out controllers (need to verify)

#### `FdGrpdetCheckOut.frm` (262KB) - Group Detailed Check-Out
- **Purpose**: Detailed view of group check-out
- **Tables**: GuestFolio, RoomOcc, PayCharge, PlanDetails

#### `FdRevCheckOut.frm` (103KB) - Reverse Check-Out
- **Purpose**: Reverse a completed check-out
- **Tables**: RoomOcc, GuestFolio, RoomMast, GuestProf
- **Laravel Mapping**: Need reverse check-out implementation

#### `fdAmendEntry.frm` (67KB) - Amend Stay
- **Purpose**: Change departure date/time for in-house guest
- **Tables**: GuestFolio, RoomOcc, GuestFolioAmend, PlanDetails
- **Laravel Mapping**: Need amend stay implementation

#### `fdRoomChange.frm` (379KB) - Room Change
- **Purpose**: Move guest to different room
- **Tables**: RoomOcc, GuestFolio, RoomMast, PlanDetails, Booking
- **Laravel Mapping**: `InhouseAction` controller (updateroominclusive)

#### `fdPostChrg.frm` (36KB) - Post Charges
- **Purpose**: Add charges to guest folio
- **Tables**: PayCharge, GuestFolio, Sundry, FixCharge, RevMast
- **Laravel Mapping**: `ChargeController`, `Paycharge` model

#### `fdPaymentCharge.frm` (258KB) - Payment/Charge
- **Purpose**: Record payments against folio
- **Tables**: PayCharge, GuestFolio, PaymentType, Voucher_Type, Voucher_Prefix
- **Laravel Mapping**: `Paycharge` model, payment controllers

#### `fdDisplayFolio.frm` (126KB) - Display Folio
- **Purpose**: View full folio with all charges/payments
- **Tables**: GuestFolio, PayCharge, PayChargeLog, PlanDetails, RoomOcc
- **Laravel Mapping**: Guest folio view

#### `fdDisplayFolioSumm.frm` (76KB) - Folio Summary
- **Purpose**: Summary view of folio
- **Tables**: GuestFolio, PayCharge

#### `fdPrintScreen.frm` (65KB) - Bill Print
- **Purpose**: Print guest bill/folio
- **Tables**: GuestFolio, PayCharge, FOMBillDetail
- **Laravel Mapping**: Bill print functionality

#### `FdReSetlement.frm` (241KB) - Re-Settlement
- **Purpose**: Re-settle/adjust folio charges
- **Tables**: GuestFolio, PayCharge, Voucher

#### `fdNDAcPostChrg.frm` (41KB) - Night Audit Post Charges
- **Purpose**: Post charges during night audit
- **Tables**: GuestFolio, PayCharge, Voucher

#### `fdAcPostChrg.frm` (55KB) - Account Posting
- **Purpose**: Post accounting entries
- **Tables**: Ledger, Voucher, LedgerAdj

#### `FrmMergeCharge.frm` (85KB) - Merge Charge
- **Purpose**: Merge charges from one folio to another
- **Tables**: GuestFolio, PayCharge, FolioLog

#### `GuestProfile.frm` (460KB) - Guest Profile ⭐ 4TH LARGEST
- **Purpose**: Complete guest profile management
- **Tables**: GuestProf, GuestFolio, GuestStatus, GuestProfFor, GuestProfVeh, ProfileImages, Cities, Countries, States, SubGroup, Nationality, IdProof
- **Features**: Photo capture, ID proof, multiple addresses, company linking, nationality, visa/passport details
- **Laravel Mapping**: `AddNewProfile` controller, `GuestProf` model

#### `frmGuestInfo.frm` (61KB) - Guest Info
- **Purpose**: View guest information
- **Tables**: GuestProf, GuestFolio

#### `frmGuestComments.frm` (74KB) - Guest Comments
- **Purpose**: Guest remarks/comments
- **Tables**: GuestProf, GuestFolio

#### `FrmGrcBlank.frm` (14KB) - Blank GRC
- **Purpose**: Guest Registration Card (blank template)
- **Tables**: GuestProf, GuestFolio, RoomOcc

#### `FrmGuestStat.frm` (31KB) - Guest Status
- **Purpose**: Guest status management
- **Tables**: GuestStat

#### `FrmGuestWakeUp.frm` (80KB) - Guest Wake Up
- **Purpose**: Wake-up call management
- **Tables**: GuestFolio, RoomOcc

#### `FrmGuestAddObj.frm` (68KB) - Guest Add Object
- **Purpose**: Additional guest objects

#### `FrmGuestParamMast.frm` (35KB) - Guest Parameter Master
- **Purpose**: Guest parameter configuration

---

### 2. Room Management

#### `FrmRoomMast.frm` (211KB) - Room Master ⭐
- **Purpose**: Room master maintenance (CRUD)
- **Tables**: RoomMast, RoomCat, RoomBlockOut, BuildingMaster, MaidStation
- **Fields**: Room Code, Name, Type (RO/TB/C/O), Category, Floor, Building, Maid Station, Status, Inclusive Count, Rate
- **Laravel Mapping**: `RoomMast` model, MainSetup controllers

#### `FrmRoomCatMast.frm` (177KB) - Room Category Master ⭐
- **Purpose**: Room category master (CRUD)
- **Tables**: RoomCat, RoomMast
- **Fields**: Category Code, Name, Type, Base Rate, Max Adults/Children, Inclusive Items
- **Laravel Mapping**: `RoomCat` model

#### `FrmRoomFeatureMast.frm` (32KB) - Room Feature Master
- **Purpose**: Room features/amenities
- **Tables**: RoomFeatureMast

#### `FrmBlockMast.frm` (39KB) - Block Master
- **Purpose**: Building/Block master
- **Tables**: BuildingMaster

#### `FrmLocationMast.frm` (47KB) / `FrmLocationFacilities.frm` (76KB) - Location Master
- **Purpose**: Property locations and facilities

---

### 3. Banquet & Hall Management

#### `HallBooking.frm` (276KB) - Hall Booking
- **Purpose**: Banquet hall booking management
- **Tables**: HallBook, HallSale1, HallSale2, GuestProf, RoomMast

#### `HallBill.frm` (560KB) / `HallBillEstimate.frm` (398KB) / `HallEstimate.frm` (388KB) - Hall Billing
- **Purpose**: Hall billing, estimates, final bills
- **Tables**: HallSale1, HallSale2, HallSale1Est, HallSale2Est, HallStock, PayCharge

#### `HallChefPreCosting.frm` (187KB) - Chef Pre-Costing
- **Purpose**: Kitchen costing for banquet

#### `HallMenuCatalog.frm` (113KB) / `HallMenuItemEntry.frm` (117KB) - Menu Management
- **Purpose**: Menu items and catalog

#### `HallSundry.frm` (111KB) - Hall Sundry
- **Purpose**: Sundry charges for banquet

#### `BanqAvailability.frm` (66KB) - Banquet Availability
- **Purpose**: Check hall availability

#### `CateringBooking.frm` (299KB) - Catering Booking
- **Purpose**: External catering bookings

---

### 4. Point of Sale (POS)

#### `RSSaleBill.frm` (2.9MB) - POS Sale Bill ⭐ LARGEST FORM IN PROJECT
- **Purpose**: Complete POS billing
- **Tables**: Sale1, Sale2, Sale1log, Sale2log, POSKOT, POSItem, POSTable, POSItemRate, RevMast, SundryMast, GuestFolio, PayCharge

#### `RsKOTEntry.frm` (600KB) - KOT Entry ⭐
- **Purpose**: Kitchen Order Ticket entry
- **Tables**: POSKOT, POSItem, POSTable

#### `RsTouchScreenSaleBill.frm` (878KB) / `RsTouchScreenKOTEntry.frm` (482KB) - Touch Screen Variants
- **Purpose**: Touch-optimized POS interfaces

#### `RsPOSDisplay.frm` (146KB) - POS Display
- **Purpose**: Real-time POS display

#### `RsPaymentReceice.frm` (188KB) - Payment Receive
- **Purpose**: POS payment collection

#### `RsTableMast.frm` (40KB) - Table Master
- **Purpose**: Restaurant table management

#### `RsMenuItemEntry.frm` (203KB) - Menu Item Entry
- **Purpose**: POS menu items

#### `RsKOTTransfer.frm` (47KB) - KOT Transfer
- **Purpose**: Transfer KOT between tables/kitchens

#### `RsTbChange.frm` (40KB) - Table Change
- **Purpose**: Change table for existing order

#### `RsTokenEntry.frm` (487KB) - Token Entry
- **Purpose**: Token-based order management

---

### 5. Finance & Accounting

#### `FaVrEnt.frm` (591KB) - Voucher Entry ⭐
- **Purpose**: General voucher entry (receipt, payment, journal, contra)
- **Tables**: Ledger, LedgerMerge, Voucher_Type, Voucher_Prefix, SubGroup, SundryMast, PayCharge

#### `FaTaxVoucher.frm` (566KB) - Tax Voucher ⭐
- **Purpose**: GST/Tax voucher entry
- **Tables**: Ledger, TaxStructure, SundryMast, Voucher_Type

#### `FaVtype.frm` (179KB) - Voucher Type Master
- **Purpose**: Voucher type configuration

#### `FaSubGroup.frm` (210KB) - Sub-Group Master
- **Purpose**: Party/Account group master

#### `FaReports.frm` (772KB) - Finance Reports ⭐
- **Purpose**: Financial reports (trial balance, P&L, balance sheet)

#### `FaChqClear.frm` (86KB) - Cheque Clearing
- **Purpose**: Cheque management

#### `FaAdjust.frm` (50KB) / `FaAdjustDel.frm` (9KB) - Adjustment Entry
- **Purpose**: Adjustment vouchers

#### `FaEnvron.frm` (138KB) - Finance Environment
- **Purpose**: Finance configuration

#### `FaGrEnt.frm` (93KB) - Group Entry
- **Purpose**: Group voucher entry

#### `FaNarrMast.frm` (33KB) - Narrative Master
- **Purpose**: Standard narratives for vouchers

#### `FaMagic.frm` (159KB) - Finance Magic
- **Purpose**: Auto voucher generation

#### `FaCityMast.frm` (61KB) / `FaStateMast.frm` (44KB) / `FaCountryMast.frm` (43KB) - Location Masters
- **Purpose**: City/State/Country for finance

#### `FaCurrBalUpdate.frm` (101KB) - Current Balance Update
- **Purpose**: Update party balances

#### `FaTDSCat.frm` (33KB) - TDS Category
- **Purpose**: TDS section master

#### `FaTDSCertificate.frm` (71KB) - TDS Certificate
- **Purpose**: Form 16/16A generation

#### `FaTDSChal.frm` (105KB) - TDS Challan
- **Purpose**: TDS payment challan

#### `FrmReceivePayment.frm` (88KB) - Receive Payment
- **Purpose**: Payment receipt entry

#### `FrmPayTypeMast.frm` (116KB) - Payment Type Master
- **Purpose**: Payment mode configuration

#### `VoucherSundrySetting.frm` (107KB) - Voucher Sundry Setting
- **Purpose**: Sundry charge mapping for vouchers

#### `FrmFixedChargeMast.frm` (99KB) - Fixed Charge Master
- **Purpose**: Recurring fixed charges

#### `FrmChargeMast.frm` (87KB) - Charge Master
- **Purpose**: Charge/Revenue master

#### `FrmForExRec.frm` (70KB) - Forex Receipt
- **Purpose**: Foreign exchange receipts

#### `FrmForeignExMast.frm` (34KB) - Forex Master
- **Purpose**: Currency configuration

#### `FrmRevGroup.frm` (12KB) - Revenue Group
- **Purpose**: Revenue grouping

#### `FrmRevMergeCharge.frm` (75KB) - Revenue Merge Charge
- **Purpose**: Merge revenue entries

#### `FrmRevenueWiseBudget.frm` (37KB) - Revenue Budget
- **Purpose**: Budget vs actual revenue

---

### 6. Inventory & Purchase

#### `FrmItemMast.frm` (44KB) / `FrmItemMastRaw.frm` (153KB) - Item Master
- **Purpose**: Inventory item master (finished goods/raw materials)

#### `FrmItemGroupMast.frm` (56KB) / `FrmItemGroupMastRaw.frm` (56KB) - Item Group Master
- **Purpose**: Item group/category hierarchy

#### `FrmItemCatMast.frm` (94KB) / `FrmItemCatRaw.frm` (91KB) - Item Category Master
- **Purpose**: Item category master

#### `FrmConsumMast.frm` (96KB) - Consumable Master
- **Purpose**: Consumable items

#### `FrmOPStock.frm` (94KB) - Opening Stock
- **Purpose**: Opening stock entry

#### `pMREntry.frm` (248KB) - Material Receipt Entry
- **Purpose**: Goods receipt note

#### `PIndent.frm` (152KB) - Purchase Indent
- **Purpose**: Purchase requisition

#### `pPOrder.frm` (228KB) - Purchase Order
- **Purpose**: Purchase order generation

#### `pGIss.frm` (143KB) - Goods Issue
- **Purpose**: Material issue to departments

#### `FrmStockTransfer.frm` (101KB) - Stock Transfer
- **Purpose**: Inter-location stock transfer

#### `FrmDenomination.frm` (84KB) - Denomination
- **Purpose**: Currency denomination for cash management

#### `FrmItemIssuedOnCleaning.frm` (68KB) - Items Issued on Cleaning
- **Purpose**: Housekeeping item consumption

---

### 7. HR & Payroll

#### `PrEmployee.frm` (225KB) - Employee Master ⭐
- **Purpose**: Employee master with full details
- **Tables**: Employee, EmpCategory, PrDesigMast, PrCategoryMast, Depart, Depart1

#### `PrAttend.frm` (78KB) / `PrAttend1.frm` (46KB) - Attendance
- **Purpose**: Employee attendance

#### `PrSalCreate.frm` (131KB) - Salary Creation
- **Purpose**: Payroll processing

#### `PrLeavench.frm` (80KB) - Leave Management
- **Purpose**: Leave application/approval

#### `PrLoan.frm` (143KB) - Loan Management
- **Purpose**: Employee loans

#### `PrOverTime.frm` (69KB) - Overtime
- **Purpose**: Overtime calculation

#### `PrCategoryMast.frm` (40KB) - Employee Category Master
- **Purpose**: Employee categories

#### `PrDesigMast.frm` (32KB) - Designation Master
- **Purpose**: Designations

#### `PrHoliday.frm` (39KB) - Holiday Master
- **Purpose**: Holiday calendar

#### `prSalCreate.frm` (131KB) - Salary Creation

---

### 8. Membership

#### `MembershipMast.frm` (619KB) - Membership Master ⭐
- **Purpose**: Complete membership management
- **Tables**: MembershipMast, MemberCategory, MemFacilityMast, MemFamily, MemberEnviro

#### `MemAssistant.frm` (253KB) - Member Assistant
- **Purpose**: Member services

#### `MemFacilityMast.frm` (79KB) - Member Facility Master
- **Purpose**: Club facilities

#### `MemFacilityEntry.frm` (61KB) - Facility Entry
- **Purpose**: Facility usage entry

#### `MemPaymentReceive.frm` (146KB) - Payment Receive
- **Purpose**: Membership payments

#### `MemRenewalEntry.frm` (30KB) - Renewal Entry
- **Purpose**: Membership renewal

#### `MemCatMast.frm` (51KB) - Member Category Master
- **Purpose**: Membership categories

#### `MemCategoryFacilities.frm` (69KB) - Category Facilities
- **Purpose**: Facilities per category

#### `MemCatRevMast.frm` (68KB) - Category Revenue Master
- **Purpose**: Revenue per category

#### `memCatChngEntry.frm` (112KB) - Category Change Entry
- **Purpose**: Category upgrade/downgrade

#### `MemTagadaLetter.frm` (134KB) - Tagada Letter
- **Purpose**: Member communication

#### `MemVisitEntry.frm` (19KB) - Visit Entry
- **Purpose**: Member visit logging

#### `MemAutoSettleCardBalance.frm` (38KB) - Auto Settle Card
- **Purpose**: Card balance settlement

---

### 9. Housekeeping

#### `HHouseKeeping.frm` (69KB) - Housekeeping Main
- **Purpose**: Room status, maid assignment

#### `HKHouseOpStk.frm` (97KB) - Housekeeping Operation Stock
- **Purpose**: Linen/amenities stock

#### `HKIssRec.frm` (115KB) - Issue/Receive
- **Purpose**: Linen issue/receive

#### `HKRoomBlock.frm` (91KB) - Room Block
- **Purpose**: Block rooms for maintenance

#### `HKRoomOpStk.frm` (101KB) - Room Operation Stock
- **Purpose**: Room supplies

#### `FrmHouseStatus.frm` (73KB) - House Status
- **Purpose**: Room status overview

#### `HRoomCheckOutClearance.frm` (52KB) - Checkout Clearance
- **Purpose**: HK clearance before checkout

#### `HWIHistory.frm` (43KB) - WI History
- **Purpose**: Work instruction history

---

### 10. Other Modules

#### `FrmControlPanel.frm` (23KB) - Control Panel
- **Purpose**: System configuration

#### `MDIForm1.frm` (510KB) - Main MDI Form ⭐
- **Purpose**: Main application window with menu bar

#### `FrmWelcome.frm` (11KB) - Welcome Screen
- **Purpose**: Splash/login screen

#### `FrmYearEnd.frm` (19KB) - Year End
- **Purpose**: Financial year closing

#### `FrmSerialiseVr.frm` (18KB) - Voucher Serialization
- **Purpose**: Voucher number management

#### `FrmTallyExport.frm` (66KB) - Tally Export
- **Purpose**: Export to Tally ERP

#### `FrmJobScheduler.frm` (81KB) - Job Scheduler
- **Purpose**: Scheduled tasks

#### `FrmSMSEnviro.frm` (115KB) - SMS Environment
- **Purpose**: SMS gateway configuration

#### `FrmSMSMultiType.frm` (114KB) - SMS Multi Type
- **Purpose**: Multiple SMS providers

#### `FrmSmsCenterSettings.frm` (87KB) - SMS Center Settings
- **Purpose**: SMS center config

#### `frmGodrejLockSettings.frm` (17KB) / `frmLockGodrejSettings.frm` (10KB) - Door Lock
- **Purpose**: Electronic door lock integration

#### `SmartCardMast.frm` (36KB) / `SmartCardRegistration.frm` (126KB) / `SmartCardRecharge.frm` (57KB) / `SmartCardRefund.frm` (55KB) / `SmartCardLostReIssue.frm` (57KB) - Smart Cards
- **Purpose**: Smart card management for rooms/employees

#### `FrmUploadProcess.frm` (18KB) - Upload Process
- **Purpose**: Data upload/import

---

## Core Modules (.bas files)

### `HMS.bas` (54MB, 995K lines) - Main Application Module ⭐
- **Purpose**: MDI form menu handlers, global variables, form navigation
- **Key Functions**: 610 menu click handlers, 447 form instantiations
- **Global State**: 200 global variables, 196 MemVars
- **Reports**: 605 GRepFormName report definitions
- **Menu Structure**: 26 unique menu names

### `Hotlib.bas` (3.2MB) - Core Library
- **Purpose**: Shared functions, database operations, utilities

### `MainLib.bas` (292KB) - Main Library
- **Purpose**: Core business logic functions

### `FaLib.bas` (93KB) - Finance Library
- **Purpose**: Finance/accounting functions

### `MemberModule.bas` (104KB) - Membership Module
- **Purpose**: Membership functions

### `FOMModule.bas` (61KB) - Front Office Module
- **Purpose**: Front office shared functions

### `BanqModule.bas` (15KB) - Banquet Module
- **Purpose**: Banquet shared functions

### `DatabaseSecurityModule.bas` (19KB) - DB Security
- **Purpose**: Connection encryption, security

### `ErrorHandlingModule.bas` (15KB) - Error Handling
- **Purpose**: Centralized error handling

### `ValidationModule.bas` (23KB) - Validation
- **Purpose**: Data validation functions

### `SMSModule.bas` (156KB) - SMS Integration
- **Purpose**: SMS sending, templates

### `eInvoice.bas` (60KB) - E-Invoice
- **Purpose**: GST e-invoice generation

### `ModuleDoorLock.bas` (7KB) - Door Lock
- **Purpose**: Electronic lock communication

### `ModuleSmartCard.bas` (84KB) - Smart Card
- **Purpose**: Smart card communication

### `mdlNightAudit.bas` (7KB) - Night Audit
- **Purpose**: Night audit procedures

---

## Class Modules (.cls)

### `CGZipFiles.cls` / `CGUnzipFiles.cls` - Compression
### `cJSONScript.cls` - JSON handling
### `cStringBuilder.cls` - String manipulation