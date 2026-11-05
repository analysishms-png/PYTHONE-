# Form Migration Ledger

**Format:** `| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |`

---

## Front Office (Phase 2)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| fdCheckIn.frm | Check In | GuestProf, GuestFolio, RoomOcc, RoomMast, GuestStatus | checkin_ui.py:CheckInBrowser + CheckInWizard | checkin.py (list_checkins, create_checkin, group_checkin, split_folio) | ✅ DONE | Modernized: multi-step wizard (Guest→Room→Details→Confirm), visual room rack, guest search/create (Laravel addnewprofile pattern), KPI cards, toast notifications, modal dialogs, keyboard shortcuts; Core: site/Vprefix filters removed for live data parity | 2026-11-04 |
| FdCheckOut.frm | Check Out | GuestFolio, RoomOcc, PayCharge, RoomMast, GuestStatus | checkout_ui.py:open_checkout | checkout.py, fo_ops.py | ✅ DONE | Verified parity | 2026-09-22 |
| fdRoomChange.frm | Room Change | RoomOcc, GuestFolio, PlanDetails, Booking, RoomMast | fo_sub_forms_ui.py:RoomChangeWindow | fo_ops.py:room_change | ✅ DONE | VB6 PlanDetails grid editor not ported; PlanDetails re-linked only | 2026-09-22 |
| FrmMergeCharge.frm | Merge Charge | GuestFolio, PayCharge, FolioLog | fo_sub_forms_ui.py:MergeChargeWindow | fo_ops.py:merge_charge | ✅ DONE | PayCharge column names verified against VB6 source | 2026-09-22 |
| FdReSetlement.frm | Re-Settlement | PayCharge, GuestFolio, Voucher | fo_sub_forms_ui.py:ReSettlementWindow | fo_ops.py:re_settlement | ✅ DONE | Race-safe VNo via db.next_vno; sum guard matches VB6 | 2026-09-22 |
| fdPostChrg.frm | Post Charges | FolioLog, GuestFolio, Sundry, FixCharge | fd_forms_ui.py:open_post_chrg | folio.py:post_room_charge | ✅ DONE | Core logic in folio.py, UI in fd_forms_ui.py, verified live | 2026-11-03 |
| fdPaymentCharge.frm | Payment/Charge | PayCharge, GuestFolio, PaymentType | fd_forms_ui.py:open_payment_chrg | folio.py:receive_payment | ✅ DONE | Core logic in folio.py, UI in fd_forms_ui.py, verified live | 2026-11-03 |
| fdAmendEntry.frm | Amend Stay | GuestFolio, RoomOcc, GuestFolioAmend, PlanDetails, FolioLog | amend_stay_ui.py:open_amend_stay | folio.py:amend_stay, amend_targets, amend_target, amend_history, amend_departure, _norm_time | ✅ DONE | PYT* guard by default; allow_live=True UI checkbox; LEFT JOIN fallback for missing GuestProf/RoomCat; GuestFolio.NoDays refreshed (VB6 left stale); RoomOcc.ChkOutDate IS NULL filter (in-house only); history accumulates across amends per VB6 predicate | 2026-11-04 |
| Blank GRC.frm | Blank GRC - Guest Registration Card | GuestProf, GuestFolio, RoomOcc | grc_ui.py:GuestRegistrationCardWindow | core/front_office/grc.py | ✅ DONE | Core logic + UI implemented, verified live | 2026-11-03 |
| FdRevCheckOut.frm | Reverse Check Out | RoomOcc, GuestFolio, GuestStatus, RoomMast | fd_forms_ui.py:open_rev_checkout | checkout.py:reverse_checkout | ✅ DONE | Core logic in checkout.py, UI in fd_forms_ui.py, verified live | 2026-11-03 |
| Reverse Room Merge (FaVrEnt.frm variant) | Reverse Room Merge | Ledger, PayCharge, GuestFolio, RoomOcc | grc_ui.py:ReverseRoomMergeWindow | fo_ops.py:reverse_room_merge | ✅ DONE | Core logic + UI implemented, verified logic | 2026-11-03 |
| fdPrintScreen.frm | Bill Reprint | GuestFolio, FolioLog, PayCharge | guest_charges_ui.py | reports.py | ⏳ TODO | Uses reports engine | — |
| fdDisplayFolio.frm | Display Folio | GuestFolio, FolioLog, PayCharge | frontoffice.py | folio.py | ✅ DONE | — | 2026-09-21 |
| fdDisplayFolioSumm.frm | Folio Summary | GuestFolio, FolioLog | frontoffice.py | folio.py | ✅ DONE | — | 2026-09-21 |
| fdWalkInEntry.frm | Walk-In Entry | GuestProf, RoomOcc, GuestFolio, RoomMast | walkin_rack_ui.py:open_walkin_entry | checkin.py | ✅ DONE | — | 2026-09-21 |
| fdRoomOcc.frm | Room Occupancy | RoomOcc, GuestProf, RoomMast | walkin_rack_ui.py | room_occ.py | ✅ DONE | — | 2026-09-21 |
| fdRoomDisplay.frm | Room Display | RoomMast, RoomOcc, RoomStatus, RoomCategory | walkin_rack_ui.py | roomstatus.py | ✅ DONE | — | 2026-09-21 |
| fdLookUpRoom.frm | Look Up Room | RoomMast, RoomOcc | walkin_rack_ui.py | roomstatus.py | ✅ DONE | — | 2026-09-21 |
| FdGrpCheckOut.frm | Group Check-Out | Booking, GuestFolio, RoomOcc | — | — | ⏳ TODO | — | — |
| FdGrpdetCheckOut.frm | Group Detailed Check-Out | Booking, GuestFolio, RoomOcc | — | — | ⏳ TODO | — | — |
| fdNDAcPostChrg.frm | Night Audit Post Charges | FolioLog, GuestFolio, Voucher | posting_utility_ui.py | nightaudit.py | 🔄 PARTIAL | — | — |
| fdAcPostChrg.frm | Account Posting | Ledger, Voucher, LedgerAdj | posting_forms_ui.py | fa_voucher.py | 🔄 PARTIAL | — | — |
| GuestProf.frm | Guest Profile | GuestProf, GuestFolio, GuestStatus | frontoffice.py:open_guestprof | guestprof.py | ✅ DONE | — | 2026-09-21 |
| Reservation.frm | Reservation | Booking, GuestProf, RoomMast | reservation_browser.py | reservation.py | ✅ DONE | — | 2026-09-21 |

---

## Point of Sale (Phase 3)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| RSSaleBill.frm | POS Sale Bill | POSSale, POSKOT, POSItem, POSTable | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsTouchScreenSaleBill.frm | Touch Screen Sale Bill | POSSale, POSKOT, POSItem | pos_sales_ui.py | pos_sales.py | 🔄 PARTIAL | Touch UI not ported; desktop only | — |
| RsKOTEntry.frm | KOT Entry | POSKOT, POSItem, POSTable, POSMaster | kot_entry.py:open_kot_entry | pos_kot.py | ✅ DONE | — | 2026-09-22 |
| RsTouchScreenKOTEntry.frm | Touch Screen KOT Entry | POSKOT, POSItem | — | — | UI-ONLY | Touch variant | — |
| RsKOTTransfer.frm | KOT Transfer | POSKOT, POSItem | kot_transfer_ui.py:KOTTransferWindow | pos_kot.py:kot_transfer | ✅ DONE | Room Service flow verified | 2026-09-22 |
| RsTbChange.frm | Table Change | POSKOT, POSTable | kot_transfer_ui.py:TableChangeWindow | pos_kot.py:table_change | ✅ DONE | Audit fields U_Name1/U_EntDt1/U_AE1='E' | 2026-09-22 |
| RsTableMast.frm | Table Master | POSTable | pos_masters_ui.py | pos_masters.py | ✅ DONE | — | 2026-09-21 |
| RsMenuItemEntry.frm | Menu Item Entry | POSItem, POSItemRate, MenuGroup, MenuCategory | pos_masters_ui.py | pos_masters.py | ✅ DONE | Full CRUD via BaseMasterForm | 2026-11-03 |
| RsPOSDisplay.frm | POS Display | POSSale, POSKOT | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsPOSDisplayNew.frm | POS Display New | POSSale, POSKOT | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsPOSCustInfo.frm | POS Customer Info | GuestProf, POSSale | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsPaymentReceice.frm | POS Payment Receipt | POSSale, PayCharge, PaymentType | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsKitchenStk.frm | Kitchen Stock | KitchenClearStk, Stock | pos_stock_ui.py | pos_stock.py | 🔄 PARTIAL | — | — |
| RsKitchenMaterial.frm | Kitchen Material | Stock, Item | pos_stock_ui.py | pos_stock.py | 🔄 PARTIAL | — | — |
| RsGravyItemEntry.frm | Gravy Item Entry | POSItem, POSItemRate, BOM | pos_masters_ui.py | pos_masters.py | ✅ DONE | Full CRUD + BOM for Gravy items | 2026-11-03 |
| RsStoreRecEntry.frm | Store Receive Entry | StockReceive, Purchase, Item | stock_receive_ui.py | inventory.py | ✅ DONE | — | 2026-09-21 |
| RsStatusScreen.frm | Status Screen | POSTable, POSKOT | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsSpecItemEntry.frm | Special Item Entry | POSItem | pos_masters_ui.py | pos_masters.py | ⏳ TODO | — | — |
| RsSaleBillSplit.frm | Sale Bill Split | POSSale, POSSaleSplit | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RSSaleBillDisplay.frm | Sale Bill Display | POSSale, POSKOT | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RSSaleBill1.frm | Sale Bill 1 | POSSale, POSKOT | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsTokenEntry.frm | Token Entry | POSToken | pos_sales_ui.py | pos_sales.py | ✅ DONE | — | 2026-09-21 |
| RsTouchScreenBookingEntry.frm | Touch Screen Booking | POSKOT, POSItem | — | — | UI-ONLY | Touch variant | — |
| RsTouchScreenAdvanceDepDialog.frm | Advance Deposit | POSSale, PayCharge | pos_sales_ui.py | pos_sales.py | 🔄 PARTIAL | — | — |
| RsTouchScreenKeyBoard.frm | Touch Keyboard | — | — | — | UI-ONLY | Utility | — |
| RsTouchScreenFAFind.frm | Touch FA Find | — | — | — | UI-ONLY | Utility | — |
| RsTouchScreenSteward.frm | Touch Steward | POSKOT, POSItem | — | — | UI-ONLY | Touch variant | — |
| RsTouchDisplayTB.frm | Touch Display Table | POSTable, POSKOT | — | — | UI-ONLY | Touch variant | — |
| RsTouchOrderPersonDetails.frm | Order Person Details | POSKOT, POSItem | — | — | UI-ONLY | Touch variant | — |
| RsBookingEntry.frm | Booking Entry | POSKOT, POSItem | pos_masters_ui.py | pos_masters.py | ⏳ TODO | — | — |
| RsBookingEntryAdvance.frm | Booking Advance | POSSale, PayCharge | pos_masters_ui.py | pos_masters.py | ⏳ TODO | — | — |

---

## Finance/Accounts (Phase 4)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| FaVrEnt.frm | Voucher Entry | Voucher, Ledger, LedgerAdj, Enviro | fa_voucher_ui.py | fa_voucher.py | ✅ DONE | Core complete; tests pending | 2026-11-03 |
| FaVoucher.bas | Voucher Module | Voucher, Ledger, LedgerAdj | — | fa_voucher.py | 🔄 PARTIAL | Shared logic | — |
| FaEnvron.frm | Voucher Environment | Enviro, Vtype, Voucher | fa_enviro_ui.py | fa_enviro.py | ✅ DONE | Full edit UI; integrity check placeholder | 2026-11-03 |
| FaTDSCat.frm | TDS Category | TDSCat | scheme_tds_ui.py | fa_tds_ops.py | ✅ DONE | Full CRUD via BaseMasterForm | 2026-11-03 |
| FaTDSChal.frm | TDS Challan | TDSChallan, TDSCat | scheme_tds_ui.py | fa_tds_ops.py | ✅ DONE | Header + Detail CRUD | 2026-11-03 |
| FaTDSCertificate.frm | TDS Certificate | TDSCertificate, TDSCat | scheme_tds_ui.py | fa_tds_ops.py | ✅ DONE | Certificate CRUD + Challan generation | 2026-11-03 |
| FaRepView.frm | FA Report View | Voucher, Ledger, LedgerAdj | fa_voucher_ui.py:ReportViewer | fa_reports.py | ✅ DONE | All 10 report types implemented | 2026-11-03 |
| FaReports.frm | FA Reports | Voucher, Ledger, LedgerAdj | reports_ui.py | fa_reports.py | ✅ DONE | 10+ financial reports | 2026-11-03 |
| frmYearEnd.frm | Year End Updation | Ledger, Voucher, Enviro | year_end_ui.py | year_end.py | ✅ DONE | Balance carry-forward + budget reset | 2026-11-03 |
| frmTallyExport.frm | Tally Export | Ledger, LedgerM, Voucher | tally_export_ui.py | tally_export.py | ✅ DONE | LedgerMaster.xml + Ledger.xml export | 2026-11-03 |
| FaGrEnt.frm | Group Entry | Ledger, AcGroup | partial_forms_ui.py | fa_masters_ops.py | 🔄 PARTIAL | — | — |
| FaSubGroup.frm | Sub Group | AcGroup, Ledger | partial_forms_ui.py | fa_masters_ops.py | 🔄 PARTIAL | — | — |
| FaNarrMast.frm | Narration Master | NarrMast | finance_masters_ui.py | narr.py | ✅ DONE | — | 2026-09-21 |
| FaGlobeNarr.frm | Global Narration | NarrMast | partial_forms_ui.py | narr.py | 🔄 PARTIAL | — | — |
| FaVtype.frm | Voucher Type | Vtype | finance_masters_ui.py | voucher_type.py | ✅ DONE | — | 2026-09-21 |
| FaChqClear.frm | Cheque Clear | Voucher, LedgerAdj | fa_voucher_ui.py | fa_voucher.py | 🔄 PARTIAL | — | — |
| FaAdjust.frm | Adjustment | LedgerAdj, Voucher | posting_forms_ui.py | fa_ledger_ops.py | ⏳ TODO | — | — |
| FaAdjustDel.frm | Adjustment Delete | LedgerAdj | posting_forms_ui.py | fa_ledger_ops.py | ⏳ TODO | — | — |
| FaMagic.frm | Magic Voucher | Voucher, Ledger | — | — | ⏳ TODO | — | — |
| FaCurrBalUpdate.frm | Current Balance Update | Ledger, Enviro | — | — | ⏳ TODO | — | — |
| FaTaxVoucher.frm | Tax Voucher | Voucher, TaxMaster | — | — | ⏳ TODO | — | — |
| FaRepView.frx | FA Report View (binary) | — | — | — | — | Binary resource | — |
| FaEnvron.frx | Voucher Environment (binary) | — | — | — | — | Binary resource | — |
| FaGrEnt.frx | Group Entry (binary) | — | — | — | — | Binary resource | — |

---

## Inventory (Phase 5)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| ItemEntry.frm | Item Entry | Item, ItemGroup, ItemCategory, UnitMaster | p2_masters.py | item.py | ✅ DONE | — | 2026-09-21 |
| Department.frm | Department | Department | p2_masters.py | depart.py | ✅ DONE | — | 2026-09-21 |
| PartyMaster.frm | Party Master | PartyMaster, Supplier | p2_masters.py | inventory.py | 🔄 PARTIAL | — | — |
| ItemGroup.frm | Item Group | ItemGroup | p2_masters.py | item.py | ✅ DONE | — | 2026-09-21 |
| ItemCategory.frm | Item Category | ItemCategory | p2_masters.py | item.py | ✅ DONE | — | 2026-09-21 |
| UnitMaster.frm | Unit Master | UnitMaster | p2_masters.py | unit.py | ✅ DONE | — | 2026-09-21 |
| Purchase.frm | Purchase | Purchase, PurchaseReturn, PartyMaster, Item | purchase_order_ui.py, purchase_bill_ui.py | purchase.py | 🔄 PARTIAL | — | — |
| StockReceive.frm | Stock Receive | StockReceive, Purchase, Item | stock_receive_ui.py | inventory.py | ✅ DONE | — | 2026-09-21 |
| StockIssue.frm | Stock Issue | Issue, Indent1, Item | stock_issue_ui.py | inventory.py | ✅ DONE | — | 2026-09-21 |
| StockAdjust.frm | Stock Adjust | StockAdjust, Item | stock_adjust_ui.py | inventory.py | ✅ DONE | — | 2026-09-21 |
| RequisitionSlip.frm | Requisition Slip | Indent1, StockIssue | requisition_slip_ui.py | inventory.py | ✅ DONE | — | 2026-09-21 |
| OpeningStock.frm | Opening Stock | OpeningStock, Item | — | inventory.py | ⏳ TODO | — | — |
| ConsumptionMaster.frm | Consumption Master | ConsumptionMaster, Item | — | inventory.py | ⏳ TODO | — | — |
| LocationMaster.frm | Location Master | LocationMaster | — | inventory.py | ⏳ TODO | — | — |
| ShiftMaster.frm | Shift Master | ShiftMaster | — | inventory.py | ⏳ TODO | — | — |
| EnviroInventry.frm | Enviro Inventory | EnviroInventry | — | inventory.py | ⏳ TODO | — | — |
| SundryMast.frm | Sundry Master | Sundry | p2_masters.py | sundry.py | ✅ DONE | — | 2026-09-21 |
| VoucherSundrySetting.frm | Voucher Sundry Setting | VoucherSundry | p2_masters.py | sundry_type.py | ✅ DONE | — | 2026-09-21 |

---

## Members/Club (Phase 6)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| MemberMast.frm | Member Master | MemberMast, MemCategory | member_billing_ui.py | members_masters.py | 🔄 PARTIAL | — | — |
| CorporateMemberMast.frm | Corporate Member Master | CorpMemberMast, MemCategory | member_billing_ui.py | members_masters.py | ⏳ TODO | — | — |
| FacilityMast.frm | Facility Master | FacilityMast | facility_billing_ui.py | members_masters.py | 🔄 PARTIAL | — | — |
| CategoryMaster.frm | Category Master | MemCategory | member_billing_ui.py | members_masters.py | ⏳ TODO | — | — |
| MemberBillSundrySetting.frm | Member Bill Sundry | Sundry, MemberMast | member_billing_ui.py | member_billing.py | ⏳ TODO | — | — |
| MemberAgeWiseRevenue.frm | Age Wise Revenue | MemberMast, RevenueMaster | member_billing_ui.py | member_billing.py | ⏳ TODO | — | — |
| MemberSelectCategory.frm | Member Select Category | MemCategory | member_billing_ui.py | members_masters.py | ⏳ TODO | — | — |
| SmartCardRegistration.frm | Smart Card Registration | SmartCard | registration_entry_ui.py | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| SmartCardRecharge.frm | Smart Card Recharge | SmartCard, MemberMast | registration_entry_ui.py | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| SmartCardRefund.frm | Smart Card Refund | SmartCard, MemberMast | registration_entry_ui.py | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| SmartCardLostReIssue.frm | Lost Re-Issue | SmartCard, MemberMast | — | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| SmartCardMast.frm | Smart Card Master | SmartCard | — | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| CashCardTransactionReport.frm | Cash Card Transaction | SmartCard | — | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| CashCardCollectionSummary.frm | Cash Card Collection | SmartCard | — | smartcard_ops.py | BLOCKED-TBL | SmartCard table absent | — |
| SchemeMast.frm | Scheme Master | SchemeMaster | scheme_tds_ui.py | scheme.py | ✅ DONE | — | 2026-09-21 |
| HappyHours.frm | Happy Hours | POSHappy | pos_happy_ui.py | pos_happy.py | ✅ DONE | — | 2026-09-21 |

---

## Banquet/Catering (Phase 7)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| VenueMast.frm | Venue Master | VenueMast, VenueFeature | banquet_masters_ui.py | venue.py | ✅ DONE | — | 2026-09-21 |
| VenueFeature.frm | Venue Feature | VenueFeature | block_master_ui.py | venue.py | ✅ DONE | — | 2026-09-21 |
| CateringBooking.frm | Catering Booking | CateringBook, EventMast, HallBill | — | hall_booking.py | BLOCKED-TBL | CateringBook, EventMast, HallBill absent | — |
| BanqAvailability.frm | Banquet Availability | VenueMast, CateringBook | hall_booking_ui.py | hall_booking.py | BLOCKED-TBL | CateringBook absent | — |
| BanqModule.bas | Banquet Module | VenueMast, CateringBook, BanquetSundry | — | banquet_ops.py | BLOCKED-TBL | CateringBook, BanquetSundry absent | — |
| CatalogMaster.frm | Catalog Master | CatalogMaster | banquet_ops_ui.py | banquet_ops.py | ⏳ TODO | — | — |
| Events.frm | Events | EventMast | hall_booking_ui.py | hall_booking.py | BLOCKED-TBL | EventMast absent | — |
| MenuCategory.frm | Menu Category | BanquetMenuCategory | banquet_ops_ui.py | banquet_ops.py | ⏳ TODO | — | — |
| MenuItem.frm | Menu Item | BanquetMenuItem | banquet_ops_ui.py | banquet_ops.py | ⏳ TODO | — | — |
| ItemGroup.frm | Item Group | BanquetItemGroup | banquet_ops_ui.py | banquet_ops.py | ⏳ TODO | — | — |
| BanquetBillSundry.frm | Banquet Bill Sundry | BanquetSundry | banquet_ops_ui.py | banquet_ops.py | BLOCKED-TBL | BanquetSundry absent | — |

---

## HR/Payroll (Phase 8)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| EmployeeMast.frm | Employee Master | EmployeeMast, EmpCategory, Designation | hr_members_ui.py | hr_masters.py | ✅ DONE | — | 2026-09-21 |
| DesignationMast.frm | Designation Master | Designation | hr_members_ui.py | hr_masters.py | ✅ DONE | — | 2026-09-21 |
| CategoryMaster.frm | Category Master | EmpCategory, MemCategory | hr_members_ui.py | hr_masters.py | ✅ DONE | — | 2026-09-21 |
| HolidayMaster.frm | Holiday Master | HolidayMast | hr_members_ui.py | hr_masters.py | ✅ DONE | — | 2026-09-21 |
| prSalCreate.frm | Salary Creation | Salary, Attendance, EmployeeMast | hr_payroll_ui.py | hr_payroll.py | ✅ DONE | open_salary_create in shell.py | 2026-09-22 |

---

## EPABX/Telephony (Phase 9)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| TelCallTypeMast.frm | Call Type Master | TelCallTypeMast | epabx_ui.py | epabx_masters.py | ✅ DONE | — | 2026-09-21 |
| TelExtensionMast.frm | Extension Master | TelExtensionMast | epabx_ui.py | epabx_masters.py | ✅ DONE | — | 2026-09-21 |
| TelCallCodeMast.frm | Call Code Master | TelCallCodeMast | epabx_ui.py | epabx_masters.py | ✅ DONE | — | 2026-09-21 |
| TelCallControlMast.frm | Call Control Master | TelCallControlMast | epabx_ui.py | epabx_masters.py | ✅ DONE | — | 2026-09-21 |
| TelCallEntry.frm | Call Entry | TelCall | — | epabx_ops.py | BLOCKED-TBL | TelCall table absent | — |
| ComPortProperties.frm | Com Port Properties | ComPort | comport_ui.py | comport_config.py | ✅ DONE | — | 2026-09-21 |
| FrmGodrejLockSettings.frm | Godrej Lock Settings | DoorLock | door_lock_ui.py | door_lock.py, godrej_locks.py | BLOCKED-TBL | DoorLock table absent | — |
| SMSModule.bas | SMS Module | SMSOutbox | sms_ui.py, sms_http_ui.py | sms_comm.py, sms_http.py | ✅ DONE | — | 2026-09-21 |

---

## Utility/Setup (Phase 10)

| VB6 Form | Caption | VB6 Tables | Python UI | Python Core | Status | Diff Notes | Date |
|----------|---------|------------|-----------|-------------|--------|------------|------|
| CompMast.frm | Company Master | CompMast | company_profile_ui.py | company_profile.py | ✅ DONE | — | 2026-09-21 |
| UserMast.frm | User Master | UserMast, UserPermission | p2_masters.py:open_usermaster | usermaster.py | ✅ DONE | — | 2026-09-21 |
| UserPermission.frm | Permissions | UserPermission | user_permissions_ui.py | permission.py | ✅ DONE | — | 2026-09-21 |
| FrmBlockMast.frm | Block Master | BlockMast | block_master_ui.py | — | ✅ DONE | — | 2026-09-21 |
| RewardPointParam1.frm | Reward Point Param | RewardPoint | — | — | BLOCKED-TBL | RewardPoint table absent | — |
| SundryMast.frm | Sundry Master | Sundry | p2_masters.py | sundry.py | ✅ DONE | — | 2026-09-21 |
| VoucherSundrySetting.frm | Voucher Sundry | VoucherSundry | p2_masters.py | sundry_type.py | ✅ DONE | — | 2026-09-21 |
| DBBackup.frm | Backup Data | — | db_backup_ui.py | db_backup.py | ✅ DONE | — | 2026-09-21 |
| DBMaintenance.frm | Database Maintenance | — | db_maintenance_ui.py | db_maintenance.py | ✅ DONE | — | 2026-09-21 |
| Parameter.frm | Parameter | RWParameter | sys_config_ui.py | rwparameter.py, sys_config.py | ✅ DONE | — | 2026-09-21 |
| PrintingParameters.frm | Printing Parameters | RWParameter | sys_config_ui.py | sys_config.py | ✅ DONE | — | 2026-09-21 |
| PrintingSetup.frm | Printing Setup | RWParameter | sys_config_ui.py | sys_config.py | ✅ DONE | — | 2026-09-21 |
| RevenueWiseBudgetEntry.frm | Revenue Budget | RevenueBudget | revenue_budget_ui.py | revenue_budget.py | ✅ DONE | — | 2026-09-21 |
| CountryMaster.frm | Country Master | Country | p2_masters.py:open_country | country.py | ✅ DONE | — | 2026-09-21 |
| StateMaster.frm | State Master | State | p2_masters.py:open_state | state.py | ✅ DONE | — | 2026-09-21 |
| CityMaster.frm | City Master | City | p2_masters.py:open_city | city.py | ✅ DONE | — | 2026-09-21 |
| AreaMaster.frm | Area Master | Area | p2_masters.py:open_area | — | ✅ DONE | — | 2026-09-21 |
| Department.frm | Department | Department | p2_masters.py:open_depart | depart.py | ✅ DONE | — | 2026-09-21 |
| LedgerAccounts.frm | Ledger Accounts | Ledger, AcGroup | finance_masters_ui.py | ledger.py | ✅ DONE | — | 2026-09-21 |
| GroupAccounts.frm | Group Accounts | AcGroup | p2_masters.py:open_acgroup | ledger.py | ✅ DONE | — | 2026-09-21 |
| NarrationMaster.frm | Narration Master | NarrMast | finance_masters_ui.py | narr.py | ✅ DONE | — | 2026-09-21 |
| TDSCategory.frm | TDS Category | TDSCat | scheme_tds_ui.py | tdscat.py | ✅ DONE | — | 2026-09-21 |
| FAEnvironment.frm | FA Environment | Enviro | fa_enviro_ui.py | fa_enviro.py | 🔄 PARTIAL | — | — |
| VoucherEnvironment.frm | Voucher Environment | Enviro, Vtype | fa_enviro_ui.py | fa_enviro.py | 🔄 PARTIAL | — | — |
| OpeningBalanceUpdation.frm | Opening Balance | Ledger, Voucher | — | fa_ledger_ops.py | ⏳ TODO | — | — |
| YearEndUpdation.frm | Year End Updation | Ledger, Voucher, Enviro | year_end_ui.py | year_end.py | ⏳ TODO | — | — |
| CurrentBalanceUpdation.frm | Current Balance | Ledger | — | fa_ledger_ops.py | ⏳ TODO | — | — |
| DeleteMessage.frm | Delete Message | Messaging | messaging_ui.py | messaging_ops.py | ✅ DONE | — | 2026-09-21 |
| AccountMerging.frm | Account Merging | Ledger, AcGroup | account_merge_ui.py | ledger.py | ✅ DONE | — | 2026-09-21 |
| VoucherSerialisation.frm | Voucher Serialisation | LedgerM, Ledger, Voucher_Prefix | grc_ui.py:ReverseRoomMergeWindow | core/front_office/voucher_serialisation.py | ✅ DONE | Core logic + UI implemented | 2026-11-03 |
| GuestParametersSetting.frm | Guest Parameters | RWParameter | sys_config_ui.py | sys_config.py | ✅ DONE | — | 2026-09-21 |
| DataTransfer.frm | Data Transfer | — | — | — | ⏳ TODO | — | — |
| DataRecieving.frm | Data Receiving | — | — | — | ⏳ TODO | — | — |
| MenuItemCopy.frm | Menu Item Copy | POSItem | — | pos_masters.py | ⏳ TODO | — | — |
| POSBillDeletion.frm | POS Bill Deletion | POSSale | — | pos_sales.py | ⏳ TODO | — | — |
| GuestLookUp.frm | Guest LookUp | GuestProf | guest_lookup_ui.py | guestprof.py | ✅ DONE | — | 2026-09-21 |
| CountryMaster.frm | Country Master | Country | p2_masters.py | country.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| StateMaster.frm | State Master | State | p2_masters.py | state.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| CityMaster.frm | City Master | City | p2_masters.py | city.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| CompanyMaster.frm | Company Master | CompMast | company_profile_ui.py | company_profile.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| Department.frm | Department | Department | p2_masters.py | depart.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| LedgerAccounts.frm | Ledger Accounts | Ledger | finance_masters_ui.py | ledger.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| DataTransfer.frm | Data Transfer (POS) | — | — | — | ⏳ TODO | — | — |
| PLUFile.frm | PLU File (W.Scale) | — | — | — | ⏳ TODO | — | — |
| UserPermissionsAdvanced.frm | User Permissions (Advanced) | UserPermission | user_permissions_ui.py | permission.py | ✅ DONE | — | 2026-09-21 |
| POSRecycle.frm | POS Recycle | POSSale | — | pos_sales.py | ⏳ TODO | — | — |
| UnitMaster.frm | Unit Master | UnitMaster | p2_masters.py | unit.py | ✅ DONE | Duplicate entry | 2026-09-21 |
| TaskScheduler.frm | Task Scheduler | — | — | — | ⏳ TODO | — | — |

---

## Status Legend

- ✅ **DONE** — UI + Core + Registry wired + Verified (steps 1-9 complete)
- 🔄 **PARTIAL** — Wired but logic differs from VB6 (note diff)
- **UI-ONLY** — Form exists, core logic missing (queries inline in UI)
- **BLOCKED-TBL** — Tables absent in DB (VB6 form also table-less/legacy)
- ⏳ **TODO** — Not yet started
- **MISSING** — No Python port at all (not in ledger yet)

---

## Update Protocol

After each module completion (step 9):
1. Update this ledger row with status, diff notes, date
2. Add any bugs to `MIGRATION_MASTER_BUG_REGISTER.md`
3. Update `MIGRATION_STATUS.md` phase summary
4. Commit: `git add FORM_MIGRATION_LEDGER.md MIGRATION_STATUS.md MIGRATION_MASTER_BUG_REGISTER.md && git commit -m "feat: <module> migration complete"`