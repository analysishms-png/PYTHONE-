# VB6 Project Inventory

## Project Overview
- **Project Name**: HMS (Hotel Management System)
- **VB6 Project Files**: 2 project files found
  - `Project.vbp` (671 bytes)
  - `Project2.vbp` (603 bytes)
- **Total Source Files**: 359 files
- **Source Directory**: `C:\Analysis\HMS_py\LOGIC\VISUALBASIC\`

## File Type Breakdown

| Type | Extension | Count | Description |
|------|-----------|-------|-------------|
| Forms | `.frm` | ~280 | Visual Basic forms with UI and code |
| Form Binaries | `.frx` | ~70 | Binary resources (images, icons) for forms |
| Modules | `.bas` | ~15 | Standard code modules (global functions) |
| Class Modules | `.cls` | ~5 | Class modules (reusable objects) |
| Project Files | `.vbp` | 2 | VB6 project definitions |

## Major Modules by Functional Area

### 1. Core System Modules (.bas)
| File | Size | Purpose |
|------|------|---------|
| `HMS.bas` | 54,005,154 bytes | **Main module** - massive global code, menu handlers, core logic |
| `Hotlib.bas` | 3,267,596 bytes | Library functions, utilities, common operations |
| `CodeModule.bas` | 59,027 bytes | General code module |
| `MainLib.bas` | 292,931 bytes | Main library functions |
| `ModuleAdd.bas` | 274,246 bytes | Additional module functions |
| `MemberModule.bas` | 104,638 bytes | Membership-related functions |
| `FOMModule.bas` | 61,795 bytes | Front Office Module functions |
| `BanqModule.bas` | 15,194 bytes | Banquet module functions |
| `FaLib.bas` | 93,520 bytes | Finance/Accounting library |
| `FaVoucher.bas` | 20,159 bytes | Voucher-related functions |
| `FaTDSCat.bas` | ? | TDS Category functions |
| `DatabaseSecurityModule.bas` | 19,307 bytes | Database security functions |
| `ErrorHandlingModule.bas` | 15,806 bytes | Error handling framework |
| `ValidationModule.bas` | 23,771 bytes | Validation functions |
| `Functions.bas` | 1,823 bytes | Basic functions |
| `GridPrint.bas` | 19,605 bytes | Grid printing utilities |
| `JSON.bas` | 29,458 bytes | JSON handling |
| `SMSModule.bas` | 156,088 bytes | SMS integration |
| `TopBarLib.bas` | 6,758 bytes | Top bar UI library |
| `Picture.bas` | 4,738 bytes | Picture/image handling |
| `CommonDialog.bas` | 2,372 bytes | Common dialog wrappers |
| `ModuleDoorLock.bas` | 7,102 bytes | Door lock integration |
| `ModuleSmartCard.bas` | 84,330 bytes | Smart card integration |
| `mdlDataTransfer.bas` | 16,483 bytes | Data transfer utilities |
| `mdlNightAudit.bas` | 7,116 bytes | Night audit functions |
| `MSendInput.bas` | 13,940 bytes | Input sending utilities |
| `MobWebAPI.bas` | 1,688 bytes | Mobile/web API |
| `modLog.bas` | 13,240 bytes | Logging module |
| `SperialFolderPath.bas` | 634 bytes | Special folder paths |
| `TmpTable.bas` | 32,197 bytes | Temporary table operations |
| `eInvoice.bas` | 60,966 bytes | E-Invoice integration |
| `PRCategoryMast.bas` | ? | PR Category master |
| `PrDesigMast.bas` | ? | PR Designation master |
| `PrEmployee.bas` | ? | PR Employee functions |
| `PrLoan.bas` | ? | PR Loan functions |
| `PrOverTime.bas` | ? | PR Overtime functions |
| `PrSalCreate.bas` | ? | PR Salary creation |
| `prAttend.bas` | ? | PR Attendance |
| `PrHoliday.bas` | ? | PR Holiday |
| `prLeavench.bas` | ? | PR Leave |
| `salmarCompProfile.bas` | ? | Salary component profile |

### 2. Class Modules (.cls)
| File | Size | Purpose |
|------|------|---------|
| `CGUnzipFiles.cls` | 7,317 | Unzip file operations |
| `CGZipFiles.cls` | 5,494 | Zip file operations |
| `cJSONScript.cls` | 12,258 | JSON scripting |
| `cStringBuilder.cls` | 7,174 | String builder utility |

### 3. Project Files
| File | Description |
|------|-------------|
| `Project.vbp` | Main VB6 project |
| `Project2.vbp` | Secondary project (possibly reporting or utilities) |

---

## Form Inventory by Module

### Front Office (Guest Management, Check-in/out, Reservations)
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `fdCheckIn.frm` | 15,872 | Check-in form |
| `FdCheckOut.frm` | 340,444 | Check-out form (large) |
| `fdAmendEntry.frm` | 67,096 | Amend stay entry |
| `fdPostChrg.frm` | 36,143 | Post charges |
| `fdPaymentCharge.frm` | 258,089 | Payment/Charge form (large) |
| `fdDisplayFolio.frm` | 126,149 | Display folio |
| `fdDisplayFolioSumm.frm` | 76,264 | Display folio summary |
| `fdPrintScreen.frm` | 65,046 | Print screen/bill |
| `FdReSetlement.frm` | 241,119 | Re-settlement |
| `FdRevCheckOut.frm` | 103,665 | Reverse check-out |
| `fdRoomChange.frm` | 379,577 | Room change (large) |
| `fdRoomOcc.frm` | 49,164 | Room occupancy |
| `FdRoomDisplay.frm` | 11,907 | Room display |
| `FdLookUpRoom.frm` | 36,229 | Look up room |
| `FdLookUpRoomNo.frm` | 71,259 | Look up room number |
| `fdWalkInEntry.frm` | 1,289,142 | **Walk-in entry (very large)** |
| `FdGrpCheckOut.frm` | 1,588,010 | **Group check-out (largest)** |
| `FdGrpdetCheckOut.frm` | 262,915 | Group detail check-out |
| `fdNDAcPostChrg.frm` | 41,203 | Night audit post charges |
| `fdAcPostChrg.frm` | 55,043 | Account post charges |
| `GuestProfile.frm` | 460,066 | **Guest profile (large)** |
| `frmGuestInfo.frm` | 61,235 | Guest info |
| `frmGuestComments.frm` | 74,008 | Guest comments |
| `frmGuestParamMast.frm` | 35,109 | Guest parameter master |
| `FrmGuestStat.frm` | 31,716 | Guest status |
| `FrmGuestWakeUp.frm` | 80,734 | Guest wake up |
| `FrmGrcBlank.frm` | 14,154 | GRC blank form |
| `FrmGuestAddObj.frm` | 68,762 | Guest add object |
| `RrLookUpGuest.frm` | 19,787 | Reservation look up guest |
| `RrRoomReservation.frm` | 1,165,346 | **Room reservation (very large)** |
| `resRoomNo.frm` | 74,114 | Reservation room no |
| `resRoomType.frm` | 108,614 | Reservation room type |
| `resGroup.frm` | 103,867 | Reservation group |
| `resBanq.frm` | 68,029 | Reservation banquet |
| `FrmBookingInquiry.frm` | 154,550 | Booking inquiry |
| `frmAdvanceDepDialog.frm` | 223,049 | Advance deposit dialog |
| `hAdvanceDepDialog.frm` | 252,757 | Advance deposit dialog (alt) |
| `hAdvanceDepDialogSecondry.frm` | 155,566 | Advance deposit dialog secondary |
| `rrsAdvanceDepDialog.frm` | 213,797 | Reservation advance deposit dialog |
| `rsAdvanceDepDialog.frm` | 214,015 | Reservation advance deposit dialog |
| `FrmReservationStatus.frm` | 41,051 | Reservation status |
| `FrmChangeDepart.frm` | 7,179 | Change departure |
| `FrmChangeKitch.frm` | 7,093 | Change kitchen |
| `FrmChangeRest.frm` | 9,366 | Change restaurant |
| `FrmChangeSite.frm` | 7,824 | Change site |
| `FrmFomB.frm` | 266,113 | FOM B form |
| `FrmFomBillDeletion.frm` | 53,519 | FOM bill deletion |
| `frmFdLeaderRev.frm` | 66,875 | FD Leader revenue |

### Reservation & Booking
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `RrRoomReservation.frm` | 1,165,346 | Main room reservation |
| `RsBookingEntry.frm` | 537,241 | Booking entry (POS) |
| `RsBookingEntryAdvance.frm` | 20,489 | Booking entry advance |
| `RsTouchScreenBookingEntry.frm` | 178,040 | Touch screen booking entry |
| `FrmBookingInquiry.frm` | 154,550 | Booking inquiry |

### Point of Sale (POS)
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `RSSaleBill.frm` | 2,990,894 | **Sale bill (largest form)** |
| `RSSaleBill1.frm` | 399,139 | Sale bill variant |
| `RSSaleBillDisplay.frm` | 257,334 | Sale bill display |
| `RsSaleBillSplit.frm` | 575,253 | Sale bill split |
| `RsTouchScreenSaleBill.frm` | 878,390 | Touch screen sale bill |
| `RsPOSDisplay.frm` | 146,883 | POS display |
| `RsPOSDisplayNew.frm` | 41,818 | POS display new |
| `RsKOTEntry.frm` | 600,884 | **KOT entry (large)** |
| `RsKOTEntry.frx` | 1,090 | |
| `RsTouchScreenKOTEntry.frm` | 482,155 | Touch screen KOT entry |
| `RsKOTTransfer.frm` | 47,519 | KOT transfer |
| `RsTbChange.frm` | 40,404 | Table change |
| `RsPOSCustInfo.frm` | 33,515 | POS customer info |
| `RsPaymentReceice.frm` | 188,264 | Payment receive |
| `RsAssignDelivery.frm` | 80,280 | Assign delivery |
| `RsGravyItemEntry.frm` | 109,488 | Gravy item entry |
| `RsKitchenMaterial.frm` | 198,715 | Kitchen material |
| `RsKitchenStk.frm` | 154,421 | Kitchen stock |
| `RsTableMast.frm` | 40,820 | Table master |
| `RsMenuItemEntry.frm` | 203,167 | Menu item entry |
| `RsSpecItemEntry.frm` | 59,310 | Special item entry |
| `RsTokenEntry.frm` | 487,335 | Token entry |
| `RsTouchScreenTokenEntry.frm` | 466,196 | Touch screen token entry |
| `RsTouchScreenSteward.frm` | 17,311 | Touch screen steward |
| `RsTouchDisplayTB.frm` | 100,434 | Touch display table |
| `RsTouchScreenAdvanceDepDialog.frm` | 208,474 | Touch screen advance deposit dialog |
| `RsTouchScreenFAFind.frm` | 11,042 | Touch screen FA find |
| `RsTouchScreenKeyBoard.frm` | 18,444 | Touch screen keyboard |
| `RsStatusScreen.frm` | 98,374 | Status screen |
| `RsPOSCustInfo.frm` | 33,515 | POS customer info |
| `FrmPOSBillDeletion.frm` | 67,044 | POS bill deletion |
| `FrmPOSBillModificationDatewise.frm` | 54,639 | POS bill modification datewise |
| `FrmPOSBillModificationItemGroupwise.frm` | 54,660 | POS bill modification item groupwise |
| `FrmPOSRecycleData.frm` | 27,031 | POS recycle data |
| `FrmPOSSaleDataTransfer.frm` | 50,791 | POS sale data transfer |
| `POSAdvanceDepDialog.frm` | 227,367 | POS advance deposit dialog |

### Banquet & Hall Management
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `HallBooking.frm` | 276,427 | Hall booking |
| `HallBill.frm` | 560,625 | Hall bill (large) |
| `HallBillEstimate.frm` | 398,607 | Hall bill estimate (large) |
| `HallEstimate.frm` | 388,362 | Hall estimate (large) |
| `HallChefPreCosting.frm` | 187,815 | Hall chef pre-costing |
| `HallMenuCatalog.frm` | 113,573 | Hall menu catalog |
| `HallMenuItemEntry.frm` | 117,403 | Hall menu item entry |
| `HallSundry.frm` | 111,620 | Hall sundry |
| `HallAcPostChrg.frm` | 13,613 | Hall AC post charges |
| `HallAdvanceDepDialog.frm` | 231,348 | Hall advance deposit dialog |
| `HallItemGroupMast.frm` | 37,149 | Hall item group master |
| `BanqAvailability.frm` | 66,495 | Banquet availability |
| `BanqModule.bas` | 15,194 | Banquet module |
| `CateringBooking.frm` | 299,362 | Catering booking |
| `resBanq.frm` | 68,029 | Reservation banquet |

### Finance & Accounting
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `FaVrEnt.frm` | 591,229 | **Voucher entry (very large)** |
| `FaVtype.frm` | 179,478 | Voucher type |
| `FaVoucher.bas` | 20,159 | Voucher functions |
| `FaChqClear.frm` | 86,658 | Cheque clearing |
| `FaAdjust.frm` | 50,485 | Adjustment |
| `FaAdjustDel.frm` | 9,909 | Adjustment delete |
| `FaEnvron.frm` | 138,600 | Finance environment |
| `FaMagic.frm` | 159,294 | Finance magic (large) |
| `FaGlobeNarr.frm` | 6,869 | Globe narrative |
| `FaGrEnt.frm` | 93,212 | Group entry |
| `FaNarrMast.frm` | 33,925 | Narrative master |
| `FaSubGroup.frm` | 210,748 | Sub-group master |
| `FaTaxVoucher.frm` | 566,520 | **Tax voucher (very large)** |
| `FaTDSCat.frm` | 33,167 | TDS category |
| `FaTDSCertificate.frm` | 71,567 | TDS certificate |
| `FaTDSChal.frm` | 105,866 | TDS challan |
| `FaRepView.frm` | 10,880 | Report view |
| `FaReports.frm` | 772,951 | **Finance reports (very large)** |
| `FaCityMast.frm` | 61,390 | City master |
| `FaCountryMast.frm` | 43,551 | Country master |
| `FaStateMast.frm` | 44,865 | State master |
| `FaCurrBalUpdate.frm` | 101,575 | Current balance update |
| `FrmReceivePayment.frm` | 88,255 | Receive payment |
| `FrmPayTypeMast.frm` | 116,652 | Payment type master |
| `VoucherSundrySetting.frm` | 107,723 | Voucher sundry setting |
| `FrmFixedChargeMast.frm` | 99,303 | Fixed charge master |
| `FrmChargeMast.frm` | 87,294 | Charge master |
| `FrmForExRec.frm` | 70,591 | Forex receipt |
| `FrmForeignExMast.frm` | 34,669 | Foreign exchange master |
| `FrmCurrencyMast.frm` | ? | Currency master |
| `FrmRevGroup.frm` | 12,214 | Revenue group |
| `FrmRevMergeCharge.frm` | 75,572 | Revenue merge charge |
| `FrmRevenueWiseBudget.frm` | 37,586 | Revenue wise budget |

### Inventory & Purchase
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `FrmItemMast.frm` | 44,968 | Item master |
| `FrmItemMastRaw.frm` | 153,141 | Item master raw |
| `FrmItemGroupMast.frm` | 56,151 | Item group master |
| `FrmItemGroupMastRaw.frm` | 56,616 | Item group master raw |
| `FrmItemCatMast.frm` | 94,338 | Item category master |
| `FrmItemCatRaw.frm` | 91,753 | Item category raw |
| `FrmItemIssuedOnCleaning.frm` | 68,406 | Item issued on cleaning |
| `FrmConsumMast.frm` | 96,433 | Consumable master |
| `FrmConsumMast9999.frm` | 80,529 | Consumable master variant |
| `FrmPOStock.frm` | ? | PO Stock |
| `FrmOPStock.frm` | 94,739 | Opening stock |
| `FrmPurchaseOrder.frm` | ? | Purchase order |
| `pPOrder.frm` | 228,240 | Purchase order (alt) |
| `pReqSlip.frm` | 137,558 | Requisition slip |
| `FrmPurchaseOrder.frm` | ? | Purchase order |
| `FrmStockTransfer.frm` | 101,533 | Stock transfer |
| `FrmReceivePayment.frm` | 88,255 | Receive payment |
| `Indent.frm` | ? | Indent |
| `Indent1.frm` | ? | Indent variant |
| `pGIss.frm` | 143,449 | Goods issue |
| `pMREntry.frm` | 248,769 | Material receipt entry |
| `PIndent.frm` | 152,316 | Purchase indent |
| `FrmDenomination.frm` | 84,206 | Denomination |

### HR & Payroll
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `PrEmployee.frm` | 225,808 | **Employee master (large)** |
| `PrAttend.frm` | 78,520 | Attendance |
| `PrAttend1.frm` | 46,293 | Attendance variant |
| `PrSalCreate.frm` | 131,117 | Salary creation |
| `PrLeavench.frm` | 80,287 | Leave |
| `PrLoan.frm` | 143,615 | Loan |
| `PrOverTime.frm` | 69,929 | Overtime |
| `PrCategoryMast.frm` | 40,484 | Category master |
| `PrDesigMast.frm` | 32,516 | Designation master |
| `PrHoliday.frm` | 39,192 | Holiday |
| `prOverTime.frm` | 69,929 | Overtime |
| `salmarCompProfile.frm` | 22,128 | Salary component profile |

### Membership
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `MembershipMast.frm` | 619,949 | **Membership master (large)** |
| `MemAssistant.frm` | 253,280 | Member assistant |
| `MemAutoSettleCardBalance.frm` | 38,805 | Auto settle card balance |
| `MemBillPrintingModule.frm` | 9,504 | Bill printing module |
| `MemCatMast.frm` | 51,086 | Member category master |
| `MemCatRevMast.frm` | 68,175 | Member category revenue master |
| `memCategoryFacilities.frm` | 69,449 | Member category facilities |
| `memCatChngCond.frm` | 24,340 | Member category change condition |
| `memCatChngEntry.frm` | 112,199 | Member category change entry |
| `MemFacilityMast.frm` | 79,743 | Member facility master |
| `MemFacilityEntry.frm` | 61,259 | Member facility entry |
| `MemFamily.frm` | ? | Member family |
| `MemPaymentReceive.frm` | 146,759 | Member payment receive |
| `MemProposedMemInf.frm` | 41,827 | Proposed member info |
| `MemRenewalEntry.frm` | 30,742 | Member renewal entry |
| `MemSelectCategory.frm` | 44,367 | Member select category |
| `MemTagadaLetter.frm` | 134,050 | Member tagada letter |
| `MemVisitEntry.frm` | 19,934 | Member visit entry |
| `MemberEnviro.frm` | 47,526 | Member environment |
| `MemSMS.frm` | 16,180 | Member SMS |
| `MemberModule.bas` | 104,638 | Member module |
| `memAgeRevMast.frm` | 70,647 | Age revenue master |
| `MembershipMast.frx` | 3,718 | |

### Housekeeping
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `HHouseKeeping.frm` | 69,488 | Housekeeping main |
| `HKHouseOpStk.frm` | 97,184 | HK house operation stock |
| `HKIssRec.frm` | 115,820 | HK issue/receive |
| `HKRoomBlock.frm` | 91,127 | HK room block |
| `HKRoomOpStk.frm` | 101,507 | HK room operation stock |
| `FrmHouseStatus.frm` | 73,644 | House status |
| `HRoomCheckOutClearance.frm` | 52,503 | Room checkout clearance |
| `HWIHistory.frm` | 43,168 | WI history |

### Room Management
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `FrmRoomMast.frm` | 211,080 | **Room master (large)** |
| `FrmRoomCatMast.frm` | 177,239 | **Room category master (large)** |
| `FrmRoomFeatureMast.frm` | 32,100 | Room feature master |
| `FrmBlockMast.frm` | 38,973 | Block master |
| `FrmLocationMast.frm` | 46,771 | Location master |
| `FrmLocationFacilities.frm` | 76,353 | Location facilities |
| `FrmRoomMast.frx` | 5,280 | |
| `FrmRoomCatMast.frx` | 4,434 | |

### Setup & Configuration
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `FrmControlPanel.frm` | 23,809 | Control panel |
| `FrmSystemMast.frm` | ? | System master |
| `FrmSessionMast.frm` | 36,798 | Session master |
| `FrmYearEnd.frm` | 19,333 | Year end |
| `FrmSMSEnviro.frm` | 115,415 | SMS environment |
| `FrmSMSMultiType.frm` | 114,097 | SMS multi type |
| `SMSModule.bas` | 156,088 | SMS module |
| `FrmSmsCenterSettings.frm` | 87,971 | SMS center settings |
| `FrmSMSEnviro.frx` | 778 | |
| `frmGodrejLockSettings.frm` | 17,785 | Godrej lock settings |
| `frmLockGodrejSettings.frm` | 10,678 | Lock Godrej settings |
| `ModuleDoorLock.bas` | 7,102 | Door lock module |
| `ModuleSmartCard.bas` | 84,330 | Smart card module |
| `SmartCardMast.frm` | 36,881 | Smart card master |
| `SmartCardLostReIssue.frm` | 57,435 | Smart card lost reissue |
| `SmartCardRecharge.frm` | 57,882 | Smart card recharge |
| `SmartCardRefund.frm` | 55,786 | Smart card refund |
| `SmartCardRegistration.frm` | 126,390 | Smart card registration |

### User & Security
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `UserMast.frm` | 56,580 | User master |
| `UserPermission.frm` | 106,022 | User permission |
| `frmPassword.frm` | 1,262 | Password |
| `FrmMessage.frm` | 2,430 | Message |
| `frmmessageKey.frm` | 1,875 | Message key |
| `FrmNAMessageA.frm` | 4,984 | NA message A |
| `FrmNAMessageB.frm` | 5,441 | NA message B |
| `FrmNAMessageC.frm` | 4,911 | NA message C |
| `LockForm.frm` | 2,070 | Lock form |
| `frmWelcome.frm` | 11,659 | Welcome screen |
| `MDIForm1.frm` | 510,592 | **MDI main form (large)** |
| `Form1.frm` | 485 | Test form |

### Reports & Printing
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `FaReports.frm` | 772,951 | Finance reports |
| `FaRepView.frm` | 10,880 | FA report view |
| `rFaRepView.frm` | 792,961 | FA report view (large) |
| `rFomRepView.frm` | 3,921,884 | **FOM report view (largest)** |
| `rHallRepView.frm` | 633,914 | Hall report view |
| `rInventRepView.frm` | 1,512,515 | Inventory report view (large) |
| `rMemberRepView.frm` | 325,105 | Member report view |
| `rPOSRepView.frm` | 1,964,047 | **POS report view (very large)** |
| `rRepHouse.frm` | 110,444 | House report |
| `rRepHousePreview.frm` | 98,677 | House report preview |
| `rRepPayRoll.frm` | 204,510 | Payroll report |
| `rRepReserv.frm` | 748,047 | Reservation report |
| `rRepTel.frm` | 99,445 | Telephone report |
| `rRepTelPreview.frm` | 30,648 | Telephone report preview |
| `REPVIEW.frm` | 7,235 | Report view |
| `FrmPrintModule.frm` | 46,725 | Print module |
| `frmMod_Print.frm` | 93,600 | Mod print |
| `frmMod_Print1.frm` | 47,848 | Mod print 1 |
| `POSBillPrint.bas` | 800,979 | POS bill print |
| `POSBillReprint.frm` | 1,076,311 | POS bill reprint |
| `pPBill.frm` | 573,583 | P bill |
| `HallBill.frm` | 560,625 | Hall bill |
| `HallBillEstimate.frm` | 398,607 | Hall bill estimate |
| `HallEstimate.frm` | 388,362 | Hall estimate |
| `FrmTaxMast.frm` | 71,729 | Tax master |
| `FrmTaxStruMast.frm` | 90,039 | Tax structure master |
| `FrmTallyExport.frm` | 66,035 | Tally export |

### Other Utilities
| Form File | Size | Likely Purpose |
|-----------|------|----------------|
| `CsehDemoForm.frm` | 4,846 | Demo form |
| `DMTree.frm` | 15,626 | Tree view demo |
| `FrmImage.frm` | 2,943 | Image form |
| `FrmCalender.frm` | 927 | Calendar |
| `FindMess.frm` | 14,381 | Find message |
| `Inbox.frm` | 45,575 | Inbox |
| `Outbox.frm` | 28,802 | Outbox |
| `EmptyInbox.frm` | 29,866 | Empty inbox |
| `FrmBdayLookup.frm` | 37,866 | Birthday lookup |
| `FrmComplaintMast.frm` | 59,665 | Complaint master |
| `FrmComplaintClearing.frm` | 45,614 | Complaint clearing |
| `FrmEventMast.frm` | 35,931 | Event master |
| `FrmExpense.frm` | 73,282 | Expense |
| `FrmLostFound.frm` | 40,296 | Lost & found |
| `FrmMarketSeg.frm` | 34,802 | Market segment |
| `FrmMenuList.frm` | 3,179 | Menu list |
| `FrmMenuRate.frm` | 106,128 | Menu rate |
| `frmComboMast.frm` | 155,504 | Combo master |
| `FrmParty.frm` | 175,903 | Party master |
| `FrmPartyLocations.frm` | 58,514 | Party locations |
| `FrmBusinessSrc.frm` | 35,033 | Business source |
| `FrmVenueMast.frm` | 89,794 | Venue master |
| `FrmVenueFeat.frm` | 35,022 | Venue feature |
| `FrmWaiterMast.frm` | 42,726 | Waiter master |
| `NewHappyHours.frm` | 130,180 | New happy hours |
| `pHappyHours.frm` | 132,892 | Happy hours |
| `pPBill.frm` | 573,583 | P bill |
| `pMREntry.frm` | 248,769 | MR entry |
| `PIndent.frm` | 152,316 | Purchase indent |
| `FrmSeasonMast.frm` | 73,656 | Season master |
| `SchemeMast.frm` | 61,607 | Scheme master |
| `FrmSerialiseVr.frm` | 18,325 | Serialize voucher |
| `FrmDataRecieving.frm` | 18,847 | Data receiving |
| `FrmDeliveryBoyMast.frm` | 31,618 | Delivery boy master |
| `FrmDeliveredItemDetail.frm` | 40,009 | Delivered item detail |
| `FrmFacilityMast.frm` | 86,105 | Facility master |
| `frmFacilityBillAdv.frm` | 334,897 | Facility bill advance |
| `FacilitySundry.frm` | 122,619 | Facility sundry |
| `frmFomB.frm` | 266,113 | FOM B |
| `FrmFomBillDeletion.frm` | 53,519 | FOM bill deletion |
| `FrmUploadProcess.frm` | 18,401 | Upload process |
| `FrmUserPaymentCollection.frm` | 63,955 | User payment collection |
| `FrmUnSettledBillsInfo.frm` | 7,521 | Unsettled bills info |
| `FrmWaiterMast.frm` | 42,726 | Waiter master |
| `FrmNCType.frm` | 34,634 | NC type |
| `FrmMeterReading.frm` | 63,438 | Meter reading |
| `OutLetMast.frm` | 291,924 | Outlet master |
| `OutLetSundry.frm` | 147,973 | Outlet sundry |
| `frmEnviro.frm` | 323,983 | Environment |
| `frmPurEnviro.frm` | 60,648 | Purchase environment |
| `DepartMast.frm` | 76,511 | Department master |
| `DepartSundry.frm` | 120,560 | Department sundry |
| `DepOpStk.frm` | 79,665 | Department operation stock |
| `CompMast.frm` | 295,341 | **Company master (large)** |
| `frmCompany.frm` | 172,193 | Company |
| `AccountMerg.frm` | 43,439 | Account merge |
| `Outbox.frx` | 9,542 | |
| `Inbox.frx` | 13,768 | |

---

## Key Observations

### 1. Massive Forms (Over 500KB)
These are likely the most complex forms with extensive business logic:
- `HMS.bas` (54MB) - Main module, contains massive amounts of code
- `RSSaleBill.frm` (2.99MB) - POS Sale Bill
- `FdGrpCheckOut.frm` (1.58MB) - Group Check-out
- `fdWalkInEntry.frm` (1.28MB) - Walk-in Entry
- `RrRoomReservation.frm` (1.16MB) - Room Reservation
- `rFomRepView.frm` (3.92MB) - FOM Report View
- `rPOSRepView.frm` (1.96MB) - POS Report View
- `rInventRepView.frm` (1.51MB) - Inventory Report View
- `FaReports.frm` (772KB) - Finance Reports
- `POSBillReprint.frm` (1.07MB) - POS Bill Reprint
- `GuestProfile.frm` (460KB) - Guest Profile
- `FrmRoomMast.frm` (211KB) - Room Master
- `MembershipMast.frm` (619KB) - Membership Master
- `FaVrEnt.frm` (591KB) - Voucher Entry
- `FaTaxVoucher.frm` (566KB) - Tax Voucher
- `FdCheckOut.frm` (340KB) - Check-out
- `fdRoomChange.frm` (379KB) - Room Change

### 2. Core Modules
- `HMS.bas` - Main application logic, menu handlers, global variables
- `Hotlib.bas` - Core library functions (3.2MB)
- `MainLib.bas` - Main library
- `FaLib.bas` - Finance library
- `MemberModule.bas` - Membership module
- `FOMModule.bas` - Front Office module
- `BanqModule.bas` - Banquet module

### 3. Integration Points
- **Door Lock**: `ModuleDoorLock.bas`, `frmGodrejLockSettings.frm`, `frmLockGodrejSettings.frm`
- **Smart Card**: `ModuleSmartCard.bas`, `SmartCardMast.frm`, `SmartCardRegistration.frm`, etc.
- **SMS**: `SMSModule.bas`, `FrmSMSEnviro.frm`, `FrmSMSMultiType.frm`, `FrmSmsCenterSettings.frm`
- **E-Invoice**: `eInvoice.bas`, `EnviroEinvoice.php` (Laravel)
- **Tally Export**: `FrmTallyExport.frm`, `FrmTallyExport.frx`

---

## Next Steps

1. **Deep Analysis of HMS.bas** - This 54MB module contains the core application logic
2. **Analyze Top 20 Largest Forms** - These contain the most business logic
3. **Map Forms to Database Tables** - Identify which tables each form uses
4. **Extract Business Rules** - From validation, calculations, workflows
5. **Compare with Laravel Models** - Map VB6 forms to Laravel controllers/services
6. **Identify Migration Gaps** - What's in VB6 but missing in Laravel