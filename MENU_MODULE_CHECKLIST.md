# MENU MODULE CHECKLIST — option by option

Generated from the live `MenuHelp` table (user `SA`), cross-referenced with
`LOGIC/VISUALBASIC/*.frm` captions and `ui/shell.py:_form_registry()`.

**Legend** — `E` executable form, `R` report, `N` group. Status:
`DONE` wired exact/alias · `DONE?` wired by fuzzy caption match (verify) ·
`REPORT` report entry (engine present, per-report parity not verified) ·
`MISSING` no Python wiring.

## Summary

| Module | Options | DONE | DONE? | REPORT | MISSING |
|---|---:|---:|---:|---:|---:|
| Finance | 16 | 2 | 0 | 14 | 0 |
| Main Setup | 77 | 69 | 0 | 0 | 8 |
| Reservation | 18 | 3 | 0 | 5 | 10 |
| Front Office | 57 | 8 | 0 | 33 | 16 |
| House Keeping | 10 | 5 | 2 | 1 | 2 |
| Inventory | 31 | 10 | 0 | 14 | 7 |
| Point Of Sale | 87 | 27 | 1 | 27 | 32 |
| Banquet | 24 | 9 | 0 | 14 | 1 |
| Night Audit | 25 | 7 | 0 | 8 | 10 |
| Outdoor Banquet | 29 | 16 | 0 | 11 | 2 |
| Other | 1 | 1 | 0 | 0 | 0 |
| **TOTAL** | **375** | **157** | **3** | **127** | **88** |

## Finance  (16 options · 0 missing)

### Finance → Transaction

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 3 | E | Voucher Entry | fate | AEDP | FaVrEnt.frm | DONE | Voucher Entry |
| 11111200 | E | Expense Voucher | fate | AEDP | FaTaxVoucher.frm | DONE | Expense Voucher |

### Finance → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 18 | R | Trial Balance | FAREPORT | ***P | — | REPORT | Trial Balance |
| 20 | R | Ledger | FAREPORT | ***P | — | REPORT | — |
| 22 | R | Cash Book | FAREPORT | ***P | — | REPORT | — |
| 23 | R | Bank Book | FAREPORT | ***P | — | REPORT | — |
| 24 | R | Journal Books | FAREPORT | ***P | — | REPORT | Journal Books |
| 25 | R | Annexure | FAREPORT | ***P | — | REPORT | — |
| 26 | R | Bank Register | FAREPORT | ***P | — | REPORT | Bank Register |
| 27 | R | Ageing Analysis for Debtors | FAREPORT | ***P | — | REPORT | — |
| 28 | R | Ageing Analysis for Creditors | FAREPORT | ***P | — | REPORT | — |
| 31 | R | Outstanding Report For Debtors | FAREPORT | ***P | — | REPORT | — |
| 32 | R | Outstanding Report For Creditors | FAREPORT | ***P | — | REPORT | — |
| 36 | R | Detailed Trial Ledger | FAREPORT | ***P | — | REPORT | — |
| 38 | R | Bill Wise Outstanding Report For Debtors | FAREPORT | ***P | — | REPORT | — |
| 11133200 | R | Journal Books Log | FAREPORT | ***P | — | REPORT | Journal Books |

## Main Setup  (77 options · 8 missing)

### Main Setup → General Setup

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 43 | E | Tax Master | GENMas | AEDP | FrmTaxMast.frm | DONE | Tax Master |
| 44 | E | Tax Structure | GENMas | AEDP | — | DONE | Tax Structure |
| 45 | E | Payment Type | GENMas | AEDP | — | DONE | Payment Type |
| 46 | E | Parameter | GENMas | AEDP | — | DONE | Parameter |
| 48 | E | Printing Parameters | GENMas | AEDP | frmPrintModule.frm | DONE | Printing Parameters |
| 49 | E | Printing Setup | GENMas | AEDP | frmMod_Print.frm | DONE | Printing Setup |

### Main Setup → Front Office

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 55 | E | Market Segment | Mas | AEDP | — | DONE | Market Segment |
| 56 | E | Business Source | Mas | AEDP | — | DONE | Business Source |
| 57 | E | Guest Status | Mas | AEDP | — | DONE | Guest Status |
| 58 | E | Charge Master | Mas | AEDP | FrmChargeMast.frm | DONE | Charge Master |
| 59 | E | Fixed Charge | Mas | AEDP | — | DONE | Fixed Charge |
| 61 | E | Plan Master | Mas | AEDP | — | DONE | Plan Master |
| 63 | E | Room Features | Mas | AEDP | — | DONE | Room Features |
| 64 | E | Room Category | Mas | AEDP | — | DONE | Room Category |
| 65 | E | Room Master | Mas | AEDP | FrmRoomMast.frm | DONE | Room Master |
| 66 | E | Company Master | Mas | AEDP | CompMast.frm | DONE | Company Master |
| 68 | E | Guest History | Mas | AEDP | — | DONE | Guest History |
| 70 | E | Room Display | Mas | AEDP | — | DONE | Room Display |

### Main Setup → Point of Sale

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 72 | E | Setup Outlet | POSMas | AEDP | — | DONE | Setup Outlet |
| 73 | E | Outlet Bill Sundry Setting | POSMas | AEDP | DepartSundry.frm | DONE | Outlet Bill Sundry Setting |
| 74 | E | Server Master | POSMas | AEDP | FrmWaiterMast.frm | DONE | Server Master |
| 75 | E | Table Master | POSMas | AEDP | RsTableMast.frm | DONE | Table Master |
| 76 | E | Item List | POSMas | AEDP | — | DONE | Item List |
| 77 | E | Menu Group | POSMas | AEDP | — | DONE | Menu Group |
| 78 | E | Menu Category | POSMas | AEDP | — | DONE | Menu Category |
| 79 | E | Menu Item | POSMas | AEDP | — | DONE | Menu Item |
| 80 | E | Menu Item Rate | POSMas | AEDP | — | DONE | Menu Item Rate |
| 82 | E | Session Master | POSMas | AEDP | frmSessionMast.frm | DONE | Session Master |
| 83 | E | Open Item Consumption | POSMas | AEDP | — | MISSING | — |
| 84 | E | Scheme Master | POSMas | AEDP | SchemeMast.frm | DONE | Scheme Master |
| 86 | E | Happy Hours [ Free Items ] | POSMas | AEDP | NewHappyHours.frm | DONE | Happy Hours [ Free Items ] |
| 88 | E | NC Type | POSMas | AEDP | FrmNCType.frm | DONE | NC Type |
| 89 | E | Customer History | POSMas | AEDP | — | DONE | Customer History |

### Main Setup → Banquet

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 103 | E | Events | HallM | AEDP | — | DONE | Events |
| 104 | E | Venue Features | HallM | AEDP | — | DONE | Venue Features |
| 105 | E | Venue Master | HallM | AEDP | FrmVenueMast.frm | DONE | Venue Master |
| 106 | E | Menu Category | HallM | AEDP | — | DONE | Menu Category |
| 107 | E | Item Group | HallM | AEDP | FrmItemGroupMastRaw.frm | DONE | Item Group |
| 108 | E | Menu Item | HallM | AEDP | — | DONE | Menu Item |
| 109 | E | Catalog Master | HallM | AEDP | — | DONE | Catalog Master |
| 110 | E | Banquet Bill Sundry Setting | HallM | AEDP | — | DONE | Banquet Bill Sundry Setting |

### Main Setup → Inventory

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 112 | E | Party Master | CCenterMas | AEDP | — | MISSING | — |
| 113 | E | Department | CCenterMas | AEDP | — | DONE | Department |
| 114 | E | Item Group | CCenterMas | AEDP | FrmItemGroupMastRaw.frm | DONE | Item Group |
| 115 | E | Item Category | CCenterMas | AEDP | — | DONE | Item Category |
| 116 | E | Item Entry | CCenterMas | AEDP | FrmItemMast.frm | DONE | Item Entry  |
| 118 | E | Purchase Sundry Setting | CCenterMas | AEDP | — | MISSING | — |
| 120 | E | Opening Stock | CCenterMas | AEDP | — | DONE | Opening Stock |
| 121 | E | Item  List | CCenterMas | AEDP | — | DONE | Item List |
| 123 | E | Enviro Inventry | CCenterMas | AEDP | — | MISSING | — |

### Main Setup → Finance

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 136 | E | Group Accounts | fame | AEDP | — | DONE | Group Accounts |
| 137 | E | Ledger Accounts | fame | AEDP | — | DONE | Ledger Accounts |
| 138 | E | Narration Master | fame | AEDP | FaNarrMast.frm | DONE | Narration Master |
| 139 | E | T.D.S. Category | fame | AEDP | — | DONE | T.D.S. Category |
| 140 | E | FA Environment | fame | AEDP | — | DONE | FA Environment |
| 141 | E | Voucher Environment | fame | AEDP | — | DONE | Voucher Environment |
| 143 | E | Year End Updation | fame | AEDP | frmYearEnd.frm | DONE | Year End Updation |
| 144 | E | Current Balance Updation | fame | AEDP | FaCurrBalUpdate.frm | DONE | Current Balance Updation |
| 149 | E | Account Merging | fame | AEDP | AccountMerg.frm | DONE | Account Merging |
| 150 | E | Voucher Serialisation | fame | AEDP | FrmSerialiseVr.frm | MISSING | — |

### Main Setup → Utility

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 152 | E | User Master | UTL | AEDP | UserMast.frm | DONE | User Master |
| 153 | E | Permissions | UTL | AEDP | — | DONE | Permissions |
| 155 | E | Backup Data | UTL | AEDP | — | DONE | Backup Data |
| 158 | E | Sundry Master | UTL | AEDP | SundryMast.frm | DONE | Sundry Master |
| 162 | E | Inconsistency Check | UTL | AEDP | FrmInc.frm | MISSING | — |
| 163 | E | Year End Updation | UTL | AEDP | frmYearEnd.frm | DONE | Year End Updation |
| 166 | E | Menu Item Copy | UTL | AEDP | frmMenuItemCopy.frm | MISSING | — |
| 168 | E | Guest LookUp | UTL | AEDP | — | DONE | Guest LookUp |
| 169 | E | Country Master | UTL | AEDP | FaCountryMast.frm | DONE | Country Master |
| 170 | E | State Master | UTL | AEDP | FaStateMast.frm | DONE | State Master |
| 171 | E | City Master | UTL | AEDP | FaCityMast.frm | DONE | City Master |
| 172 | E | Company Master | UTL | AEDP | CompMast.frm | DONE | Company Master |
| 173 | E | Department | UTL | AEDP | — | DONE | Department |
| 174 | E | Ledger Accounts | UTL | AEDP | — | DONE | Ledger Accounts |
| 179 | E | Unit Master | UTL | AEDP | frmUnitMast.frm | DONE | Unit Master |
| 180 | E | Task Scheduler | UTL | AEDP | FrmJobScheduler.frm | MISSING | — |

### Main Setup → Special

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 12001100 | E | Member Select Category | MemMas | AEDP | — | DONE | Member Select Category |

## Reservation  (18 options · 10 missing)

### Reservation → Operations

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 189 | E | Reservation/Cancellation | ResOpEnt | AEDP | RrRoomReservation.frm | DONE | Reservation/Cancellation |
| 191 | E | Look Up Room types | ResOpEnt | AEDP | — | DONE | Look Up Room types |
| 192 | E | Look Up Rooms | ResOpEnt | AEDP | — | DONE | Look Up Rooms |
| 193 | E | Reservation With History | ResOpEnt | AEDP | — | MISSING | — |
| 194 | E | Advance Deposit | ResOpEnt | AEDP | frmAdvanceDepDialog.frm | MISSING | — |
| 195 | E | Confirmation Letters | ResOpEnt | AEDP | — | MISSING | — |
| 196 | E | Cancellation Letters | ResOpEnt | AEDP | — | MISSING | — |
| 197 | E | Registration Card | ResOpEnt | AEDP | — | MISSING | — |
| 198 | E | Reservation Status Screen | ResOpEnt | AEDP | — | MISSING | — |

### Reservation → Reservation Status Report

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 200 | R | Reservation Status | ResStatusRpt | ***P | FrmReservationStatus.frm | REPORT | Reservation Status |
| 201 | R | Reservation Status Arrival | ResStatusRpt | ***P | — | REPORT | Reservation Status Arrival |
| 205 | R | Arrival List | ResStatusRpt | ***P | — | REPORT | — |

### Reservation → Advance Recd. Report

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 207 | R | Advance Recd. | AdvRecdRpt | ***P | — | REPORT | — |
| 208 | R | Advance Recd. Arrival | AdvRecdRpt | ***P | — | REPORT | — |

### Reservation → M.I.S.

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 211 | E | 7-730 Days Forecast | ReservationMIS | AEDP | — | MISSING | — |
| 212 | E | 23 Day Room Availability Forecast | ReservationMIS | AEDP | — | MISSING | — |
| 213 | E | 23 Day Room Type Availability Forecast | ReservationMIS | AEDP | — | MISSING | — |
| 214 | E | Package Forecast | ReservationMIS | AEDP | — | MISSING | — |

## Front Office  (57 options · 16 missing)

### Front Office → Operations

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 217 | E | WalkIn CheckIn | FDOMenu | AEDP | — | DONE | WalkIn CheckIn |
| 218 | E | Room Status | FDOMenu | AEDP | — | DONE | Room Status |
| 219 | E | Expense Entry | FDOMenu | AEDP | — | DONE | Expense Entry |
| 221 | E | Display Rack | FDOMenu | AEDP | FdLookUpRoomNo.frm | DONE | Display Rack |
| 224 | E | Bill Reprint | FDOMenu | AEDP | — | DONE | Bill Reprint |
| 225 | E | Reverse Check Out | FDOMenu | AEDP | — | DONE | Reverse Check Out |
| 226 | E | Merge Room | FDOMenu | AEDP | — | DONE | Merge Room |
| 227 | E | Bill Re-Settlement | FDOMenu | AEDP | — | DONE | Bill Re-Settlement |
| 228 | E | Reverse Room Merge | FDOMenu | AEDP | — | MISSING | — |
| 229 | E | Plan Meal Tokens | FDOMenu | AEDP | — | MISSING | — |
| 230 | E | GRC Printing | FDOMenu | AEDP | — | MISSING | — |
| 231 | E | Blank GRC | FDOMenu | AEDP | — | MISSING | — |

### Front Office → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 233 | R | Instant House Count | FDORep | ***P | — | REPORT | — |
| 234 | R | Room Inventory | FDORep | ***P | — | REPORT | — |
| 238 | R | Charge Payment Detail | FDORep | ***P | — | REPORT | — |
| 239 | R | Payments By Cashier | FDORep | ***P | — | REPORT | — |
| 240 | R | Cashier Report | FDORep | ***P | — | REPORT | — |
| 241 | R | Settlement Report | FDORep | ***P | — | REPORT | — |
| 242 | R | Cancel Bill Details | FDORep | ***P | — | REPORT | — |
| 243 | R | Room Change History | FDORep | ***P | — | REPORT | — |
| 245 | R | FOM Sales Register | FDORep | ***P | — | REPORT | Sales Register |
| 246 | R | Room Wise Plan Detail | FDORep | ***P | — | REPORT | — |
| 248 | R | Occupancy Report | FDORep | ***P | — | REPORT | — |
| 249 | R | Bill Change Report | FDORep | ***P | — | REPORT | — |
| 250 | R | Check Out Register | FDORep | ***P | — | REPORT | — |
| 251 | R | Check In Register | FDORep | ***P | — | REPORT | — |
| 252 | R | Expected Check Out | FDORep | ***P | — | REPORT | — |
| 254 | R | Guest Extra Charges | FDORep | ***P | — | REPORT | — |
| 255 | R | Checked In Guest Detail | FDORep | ***P | — | REPORT | — |
| 256 | R | Room Rent Audit Report | FDORep | ***P | — | REPORT | — |
| 257 | R | Sales Report | FDORep | ***P | — | REPORT | — |
| 258 | R | Guest Payments | FDORep | ***P | — | REPORT | — |

### Front Office → Tourism Forms

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 260 | E | Form  C | FDOForms | AEDP | — | MISSING | — |
| 261 | E | Tourism Form 1 | FDOForms | AEDP | — | MISSING | — |
| 262 | E | Tourism Form 2 | FDOForms | AEDP | — | MISSING | — |
| 263 | E | Tourism Form 5 | FDOForms | AEDP | — | MISSING | — |
| 265 | E | Tourism Form 6 | FDOForms | AEDP | — | MISSING | — |
| 266 | E | Tourism Form 4 | FDOForms | AEDP | — | MISSING | — |
| 267 | E | Luxury Tax Report | FDOForms | AEDP | — | MISSING | — |
| 268 | E | Monthly Return | FDOForms | AEDP | — | MISSING | — |
| 269 | E | L.T. FORM II | FDOForms | AEDP | — | MISSING | — |
| 270 | E | L.T. FORM IV | FDOForms | AEDP | — | MISSING | — |

### Front Office → M.I.S.

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 272 | R | Occupancy Display | FDOMISRep | ***P | — | REPORT | — |
| 273 | R | Guest wise Analysis | FDOMISRep | ***P | — | REPORT | — |
| 274 | R | Company wise Analysis | FDOMISRep | ***P | — | REPORT | — |
| 275 | R | Guestwise Charges Detail | FDOMISRep | ***P | — | REPORT | — |
| 276 | R | Room Occupancy | FDOMISRep | ***P | — | REPORT | — |
| 277 | R | Room Type Occupancy | FDOMISRep | ***P | — | REPORT | — |
| 278 | R | Room Wise Room Revenue | FDOMISRep | ***P | — | REPORT | — |
| 279 | R | Occupancy Analysis | FDOMISRep | ***P | — | REPORT | Occupancy Analysis |
| 280 | R | Company wise Nights | FDOMISRep | ***P | — | REPORT | — |
| 281 | R | Revenue During the stay | FDOMISRep | ***P | — | REPORT | — |
| 14142100 | R | Room Type Occupancy Analysis | FDORep | ***P | — | REPORT | — |
| 14142200 | R | Plan Report | FDORep | ***P | — | REPORT | — |
| 14142300 | R | Business Source Occupancy Report | FDORep | ***P | — | REPORT | — |

### Front Office → Tax Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 283 | E | FOM Tax Detail | FDOTaxr | AEDP | — | MISSING | — |
| 284 | E | Tax Wise Charge Detail | FDOTaxr | AEDP | — | MISSING | — |

## House Keeping  (10 options · 2 missing)

### House Keeping → Operations

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 289 | E | Complaint Master | HouseEnt | AEDP | — | DONE | Complaint Master |
| 290 | E | Complaint Clearance | HouseEnt | AEDP | FrmComplaintClearing.frm | DONE | Complaint Clearance |
| 291 | E | Lost / Found Entry | HouseEnt | AEDP | — | DONE | Lost / Found Entry |
| 292 | E | Claim Entry | HouseEnt | AEDP | FrmClaimEntry.frm | DONE | Claim Entry |
| 295 | E | House Keeping Screen | HouseEnt | AEDP | HHouseKeeping.frm | DONE | House Keeping Screen |

### House Keeping → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 305 | R | House Keeping Report | HouseREP | ***P | — | REPORT | — |

### House Keeping → LAUNDRY

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 15141100 | V | LOT Entry |  |  | — | DONE? | KOT Entry |
| 15141200 | V | LOT Transfer |  |  | — | DONE? | KOT Transfer |
| 15141300 | E | Laundry Memo |  | AEDP | — | MISSING | — |
| 15141400 | E | Memo Reprint |  | AEDP | — | MISSING | — |

## Inventory  (31 options · 7 missing)

### Inventory → Operations

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 310 | E | Indent | Purch | AEDP | PIndent.frm | DONE | Indent |
| 311 | E | Purchase Order | Purch | AEDP | pPOrder.frm | DONE | Purchase Order |
| 312 | E | M.R. Entry | Purch | AEDP | — | DONE | M.R. Entry |
| 313 | E | Purchase Bill | Purch | AEDP | — | DONE | Purchase Bill |
| 314 | E | Requisition Slip | Purch | AEDP | — | DONE | Requisition Slip |
| 315 | E | Stock Issue on Requisition | Purch | AEDP | — | DONE | Stock Issue on Requisition |
| 316 | E | Kitchen Closing Stock | Purch | AEDP | — | DONE | Kitchen Closing Stock |
| 317 | E | Stock Transfer | Purch | AEDP | FrmStockTransfer.frm | DONE | Stock Transfer |

### Inventory → Look Ups

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 321 | E | Pending Indent | MatStat | AEDP | — | DONE | Pending Indent |
| 322 | E | Pending M.R. | MatStat | AEDP | — | DONE | Pending M.R. |
| 323 | E | Pending Purchase Order | MatStat | AEDP | — | MISSING | — |

### Inventory → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 325 | R | Purchase Register | MatRep | ***P | — | REPORT | Purchase Register |
| 326 | R | Purchase Summary | MatRep | ***P | — | REPORT | — |
| 327 | R | Cash/Credit Purchase | MatRep | ***P | — | REPORT | — |
| 328 | R | Stock Register | MatRep | ***P | — | REPORT | Stock Register |
| 329 | R | Stock Summary | MatRep | ***P | — | REPORT | Stock Summary |
| 330 | R | Stock In Hand | MatRep | ***P | — | REPORT | — |
| 331 | R | Kitchen Stock Report I/R Basis | MatRep | ***P | — | REPORT | — |
| 332 | R | Excess Consumption Report | MatRep | ***P | — | REPORT | — |
| 337 | R | Purchase Ledger | MatRep | ***P | — | REPORT | — |
| 338 | R | Issue CheckList | MatRep | ***P | — | REPORT | — |
| 339 | R | Stock Summary P/S Basis | MatRep | ***P | — | REPORT | — |
| 340 | R | ABC Analysis | MatRep | ***P | — | REPORT | — |
| 16132700 | R | Store Issue Report | MatRep | ***P | — | REPORT | — |
| 16132800 | R | Liquor Sale Report | MatRep | ***P | — | REPORT | — |

### Inventory → Tax Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 343 | E | VAT Register | MatVatR | AEDP | — | MISSING | — |
| 344 | E | VAT Register II | MatVatR | AEDP | — | MISSING | — |
| 345 | E | VAT Register III | MatVatR | AEDP | — | MISSING | — |
| 346 | E | Form24 Annexure-A | MatVatR | AEDP | — | MISSING | — |
| 347 | E | Form III | MatVatR | AEDP | — | MISSING | — |
| 348 | E | UPVAT XXIV | MatVatR | AEDP | — | MISSING | — |

## Point Of Sale  (87 options · 32 missing)

### Point Of Sale → POS Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 370 | R | Sales Register | POSRep | ***P | — | REPORT | Sales Register |
| 371 | R | Stewardwise Sale | POSRep | ***P | — | REPORT | — |
| 372 | R | Table wise Sale | POSRep | ***P | — | REPORT | — |
| 373 | R | Settlement Summary | POSRep | ***P | — | REPORT | — |
| 374 | R | KOT Wise Details | POSRep | ***P | — | REPORT | — |
| 376 | R | Cover Analysis | POSRep | ***P | — | REPORT | — |
| 377 | R | Pending KOT | POSRep | ***P | — | REPORT | — |
| 378 | R | Item wise Sale | POSRep | ***P | — | REPORT | Item wise Sale |
| 379 | R | Deleted Unsettled Bill | POSRep | ***P | — | REPORT | — |
| 380 | R | NC KOT Detail | POSRep | ***P | — | REPORT | — |
| 383 | R | NC KOT Summary | POSRep | ***P | — | REPORT | — |
| 387 | R | Group Wise Sale | POSRep | ***P | — | REPORT | — |
| 388 | R | Customer Detail | POSRep | ***P | — | REPORT | — |
| 17173000 | E | Payment Receive Entry (POS) | POSRep | AEDP | RsPaymentReceice.frm | DONE? | Payment Receive Entry |
| 17173100 | R | Bill Wise Adjustment Report | POSRep | ***P | — | REPORT | — |

### Point Of Sale → POS M.I.S.

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 392 | R | Collection Summary | MISREP | ***P | — | REPORT | — |
| 393 | R | Open Item Sales | MISREP | ***P | — | REPORT | — |
| 394 | R | Void Bills | MISREP | ***P | — | REPORT | — |
| 395 | R | KOT Change Report | MISREP | ***P | — | REPORT | — |
| 396 | R | Discount Summary | MISREP | ***P | — | REPORT | — |
| 397 | R | Monthwise Sales | MISREP | ***P | — | REPORT | — |
| 398 | R | ABC  Analysis | MISREP | ***P | — | REPORT | — |
| 399 | R | Sale Summary | MISREP | ***P | — | REPORT | — |
| 401 | R | Edited Bills | MISREP | ***P | — | REPORT | — |

### Point Of Sale → Tax Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 403 | R | Tax Report | PosTaxRep | ***P | — | REPORT | — |
| 404 | R | Tax Register | PosTaxRep | ***P | — | REPORT | — |
| 405 | R | Taxwise Details | PosTaxRep | ***P | — | REPORT | — |
| 406 | R | Tax Summary | PosTaxRep | ***P | — | REPORT | — |

### Point Of Sale → ROOM SERVICE

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 619 | E | KOT Entry |  | AEDP | RsTouchScreenKOTEntry.frm | DONE | KOT Entry |
| 621 | E | Sale Bill Entry |  | AEDP | RSSaleBill.frm | MISSING | — |
| 623 | E | POS Bill Reprint |  | AEDP | POSBillReprint.frm | DONE | POS Bill Reprint |
| 625 | E | Display Table |  | AEDP | RsPOSDisplay.frm | MISSING | — |
| 629 | E | KOT Transfer |  | AEDP | RsKOTTransfer.frm | DONE | KOT Transfer |
| 17202200 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

### Point Of Sale → Special

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 17001100 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

### Point Of Sale → GREEN VIEW RESTAURANT

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 17211100 | E | KOT Entry |  | AEDP | RsTouchScreenKOTEntry.frm | DONE | KOT Entry |
| 17211200 | E | Table Change Entry |  | AEDP | — | DONE | Table Change Entry |
| 17211300 | E | KOT Transfer |  | AEDP | RsKOTTransfer.frm | DONE | KOT Transfer |
| 17211400 | V | Token Entry |  |  | RsTokenEntry.frm | DONE | Token Entry |
| 17211500 | E | Sale Bill Entry |  | AEDP | RSSaleBill.frm | MISSING | — |
| 17211600 | E | Settlement Entry |  | AEDP | rsTouchScreenAdvanceDepDialog.frm | MISSING | — |
| 17211700 | E | POS Bill Reprint |  | AEDP | POSBillReprint.frm | DONE | POS Bill Reprint |
| 17211800 | E | Split Sale Bill |  | AEDP | RsSaleBillSplit.frm | DONE | Split Sale Bill |
| 17211900 | E | Display Table |  | AEDP | RsPOSDisplay.frm | MISSING | — |
| 17212000 | V | Order Booking |  |  | — | MISSING | — |
| 17212100 | V | Order Booking Advance |  |  | POSAdvanceDepDialog.frm | MISSING | — |
| 17212200 | E | Bill Lookup |  | AEDP | RSSaleBillDisplay.frm | MISSING | — |
| 17212300 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

### Point Of Sale → SOFT BAR

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 17221100 | E | KOT Entry |  | AEDP | RsTouchScreenKOTEntry.frm | DONE | KOT Entry |
| 17221200 | E | Table Change Entry |  | AEDP | — | DONE | Table Change Entry |
| 17221300 | E | KOT Transfer |  | AEDP | RsKOTTransfer.frm | DONE | KOT Transfer |
| 17221400 | V | Token Entry |  |  | RsTokenEntry.frm | DONE | Token Entry |
| 17221500 | E | Sale Bill Entry |  | AEDP | RSSaleBill.frm | MISSING | — |
| 17221600 | E | Settlement Entry |  | AEDP | rsTouchScreenAdvanceDepDialog.frm | MISSING | — |
| 17221700 | E | POS Bill Reprint |  | AEDP | POSBillReprint.frm | DONE | POS Bill Reprint |
| 17221800 | E | Split Sale Bill |  | AEDP | RsSaleBillSplit.frm | DONE | Split Sale Bill |
| 17221900 | E | Display Table |  | AEDP | RsPOSDisplay.frm | MISSING | — |
| 17222000 | V | Order Booking |  |  | — | MISSING | — |
| 17222100 | V | Order Booking Advance |  |  | POSAdvanceDepDialog.frm | MISSING | — |
| 17222200 | E | Bill Lookup |  | AEDP | RSSaleBillDisplay.frm | MISSING | — |
| 17222300 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

### Point Of Sale → SOFT BAR & LOUNGE

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 17231100 | E | KOT Entry |  | AEDP | RsTouchScreenKOTEntry.frm | DONE | KOT Entry |
| 17231200 | E | Table Change Entry |  | AEDP | — | DONE | Table Change Entry |
| 17231300 | E | KOT Transfer |  | AEDP | RsKOTTransfer.frm | DONE | KOT Transfer |
| 17231400 | V | Token Entry |  |  | RsTokenEntry.frm | DONE | Token Entry |
| 17231500 | E | Sale Bill Entry |  | AEDP | RSSaleBill.frm | MISSING | — |
| 17231600 | E | Settlement Entry |  | AEDP | rsTouchScreenAdvanceDepDialog.frm | MISSING | — |
| 17231700 | E | POS Bill Reprint |  | AEDP | POSBillReprint.frm | DONE | POS Bill Reprint |
| 17231800 | E | Split Sale Bill |  | AEDP | RsSaleBillSplit.frm | DONE | Split Sale Bill |
| 17231900 | E | Display Table |  | AEDP | RsPOSDisplay.frm | MISSING | — |
| 17232000 | V | Order Booking |  |  | — | MISSING | — |
| 17232100 | V | Order Booking Advance |  |  | POSAdvanceDepDialog.frm | MISSING | — |
| 17232200 | E | Bill Lookup |  | AEDP | RSSaleBillDisplay.frm | MISSING | — |
| 17232300 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

### Point Of Sale → SOFT RESTAURANT

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 17241100 | E | KOT Entry |  | AEDP | RsTouchScreenKOTEntry.frm | DONE | KOT Entry |
| 17241200 | E | Table Change Entry |  | AEDP | — | DONE | Table Change Entry |
| 17241300 | E | KOT Transfer |  | AEDP | RsKOTTransfer.frm | DONE | KOT Transfer |
| 17241400 | V | Token Entry |  |  | RsTokenEntry.frm | DONE | Token Entry |
| 17241500 | E | Sale Bill Entry |  | AEDP | RSSaleBill.frm | MISSING | — |
| 17241600 | E | Settlement Entry |  | AEDP | rsTouchScreenAdvanceDepDialog.frm | MISSING | — |
| 17241700 | E | POS Bill Reprint |  | AEDP | POSBillReprint.frm | DONE | POS Bill Reprint |
| 17241800 | E | Split Sale Bill |  | AEDP | RsSaleBillSplit.frm | DONE | Split Sale Bill |
| 17241900 | E | Display Table |  | AEDP | RsPOSDisplay.frm | MISSING | — |
| 17242000 | V | Order Booking |  |  | — | MISSING | — |
| 17242100 | V | Order Booking Advance |  |  | POSAdvanceDepDialog.frm | MISSING | — |
| 17242200 | E | Bill Lookup |  | AEDP | RSSaleBillDisplay.frm | MISSING | — |
| 17242300 | E | Payment Receive | POSEnt | AEDP | — | MISSING | — |

## Banquet  (24 options · 1 missing)

### Banquet → Operation

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 418 | E | Booking Inquiry | Hallop | AEDP | FrmBookingInquiry.frm | DONE | Booking Inquiry |
| 419 | E | Banquet Booking | Hallop | AEDP | HallBooking.frm | DONE | Banquet Booking |
| 420 | E | Catalog Selection | Hallop | AEDP | CateringBooking.frm | DONE | Catalog Selection |
| 421 | E | Chef Pre-Costing | Hallop | AEDP | HallChefPreCosting.frm | DONE | Chef Pre-Costing |
| 422 | E | Banquet Billing | Hallop | AEDP | — | DONE | Banquet Billing |
| 424 | E | Venue Availability | Hallop | AEDP | BanqAvailability.frm | DONE | Venue Availability |
| 425 | E | Guest Comments | Hallop | AEDP | frmGuestComments.frm | DONE | Guest Comments |
| 426 | E | Banquet Estimate Billing | Hallop | AEDP | — | DONE | Banquet Estimate Billing |
| 427 | E | Banquet Booking Advance | Hallop | AEDP | — | DONE | Banquet Booking Advance |

### Banquet → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 429 | R | Sales Register | BanqRep | ***P | — | REPORT | Sales Register |
| 430 | R | OutStanding Report | BanqRep | ***P | — | REPORT | — |
| 431 | R | Party wise OutStanding | BanqRep | ***P | — | REPORT | — |
| 432 | R | Cashier  Report | BanqRep | ***P | — | REPORT | — |
| 433 | R | Booking Inquiry Detail | BanqRep | ***P | — | REPORT | Booking Inquiry Detail |
| 434 | R | Settlement  Report | BanqRep | ***P | — | REPORT | — |
| 435 | R | Daily Function Sheet | BanqRep | ***P | — | REPORT | — |
| 436 | R | Item Wise Sales Report | BanqRep | ***P | — | REPORT | — |
| 437 | R | Company Wise Sale Report | BanqRep | ***P | — | REPORT | — |
| 438 | R | Function Wise Item Detail | BanqRep | ***P | — | REPORT | — |

### Banquet → MIS

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 440 | R | Cover Analysis | BanqRepMIS | ***P | — | REPORT | — |
| 441 | R | Collection Summary | BanqRepMIS | ***P | — | REPORT | — |

### Banquet → Tax Report

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 443 | R | Tax Report | HallTaxP | ***P | — | REPORT | — |
| 444 | R | Tax Summary | HallTaxP | ***P | — | REPORT | — |
| 445 | E | Banquet Taxwise Details | HallTaxP | AEDP | — | MISSING | — |

## Night Audit  (25 options · 10 missing)

### Night Audit → Operation

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 448 | E | Guest Audit Ledger | NightAuditoR | AEDP | — | DONE | Guest Audit Ledger |
| 449 | E | Charges Posting | NightAuditoR | AEDP | — | DONE | Charges Posting |
| 450 | E | Night Audit Process | NightAuditoR | AEDP | fdAcPostChrg.frm | DONE | Night Audit Process |
| 451 | E | Account Posting | NightAuditoR | AEDP | — | DONE | Account Posting |
| 453 | E | Reverse Night Audit | NightAuditoR | AEDP | frmReNightAudit.frm | DONE | Reverse Night Audit |

### Night Audit → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 455 | E | Daily Report | NightAuditRR | AEDP | — | DONE | Daily Report |
| 458 | E | Guest Trail | NightAuditRR | AEDP | — | MISSING | — |
| 459 | E | Checkout Analysis | NightAuditRR | AEDP | — | MISSING | — |
| 460 | R | Occupancy Analysis | NightAuditRR | ***P | — | REPORT | Occupancy Analysis |
| 461 | E | Market Segment Analysis | NightAuditRR | AEDP | — | MISSING | — |
| 462 | E | Business Source Analysis | NightAuditRR | AEDP | — | MISSING | — |
| 463 | E | Company Analysis | NightAuditRR | AEDP | — | MISSING | — |
| 465 | E | FOCC Report | NightAuditRR | AEDP | — | MISSING | — |
| 466 | E | Food Costing Report | NightAuditRR | AEDP | — | MISSING | — |
| 467 | E | FB Cost Statement | NightAuditRR | AEDP | — | MISSING | — |
| 19122700 | R | Credit Report | NightAuditGSTR | ***P | — | REPORT | — |

### Night Audit → Log

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 472 | E | Night Audit Log | NightAuditLR | AEDP | — | DONE | Night Audit Log |
| 473 | E | Charges Remove Log | NightAuditLR | AEDP | — | MISSING | — |

### Night Audit → GST Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 19141100 | R | GSTR-1 | NightAuditGSTR | ***P | — | REPORT | — |
| 19141200 | R | GSTR-2(3) | NightAuditGSTR | ***P | — | REPORT | — |
| 19141300 | R | GSTR-2(4A) | NightAuditGSTR | ***P | — | REPORT | — |
| 19141400 | R | GSTR-2(4B) | NightAuditGSTR | ***P | — | REPORT | — |
| 19141500 | R | Reconciliation (GSTR-2A) | NightAuditGSTR | ***P | — | REPORT | — |
| 19141600 | E | Upload Process | NightAuditGSTR | AEDP | FrmUploadProcess.frm | MISSING | — |

### Night Audit → Tally Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 19151100 | R | Tally POS Report | TallyPOSRPT | ***P | — | REPORT | — |

## Outdoor Banquet  (29 options · 2 missing)

### Outdoor Banquet → Setup

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 542 | E | Venue Features | OdcEnt1 | AEDP | — | DONE | Venue Features |
| 543 | E | Venue Master | OdcEnt1 | AEDP | FrmVenueMast.frm | DONE | Venue Master |
| 544 | E | Menu Category | OdcEnt1 | AEDP | — | DONE | Menu Category |
| 545 | E | Item Group | OdcEnt1 | AEDP | FrmItemGroupMastRaw.frm | DONE | Item Group |
| 546 | E | Menu Item | OdcEnt1 | AEDP | — | DONE | Menu Item |
| 548 | E | Banquet Bill Sundry Setting | OdcEnt1 | AEDP | — | DONE | Banquet Bill Sundry Setting |

### Outdoor Banquet → Operation

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 550 | E | Booking Inquiry | OdcOP | AEDP | FrmBookingInquiry.frm | DONE | Booking Inquiry |
| 551 | E | Banquet Booking | OdcOP | AEDP | HallBooking.frm | DONE | Banquet Booking |
| 552 | E | Catalog Selection | OdcOP | AEDP | CateringBooking.frm | DONE | Catalog Selection |
| 553 | E | Chef Pre-Costing | OdcOP | AEDP | HallChefPreCosting.frm | DONE | Chef Pre-Costing |
| 554 | E | Banquet Billing | OdcOP | AEDP | — | DONE | Banquet Billing |
| 555 | E | Banquet Settlement | OdcOP | AEDP | — | DONE | Banquet Settlement |
| 556 | E | Venue Availability | OdcOP | AEDP | BanqAvailability.frm | DONE | Venue Availability |
| 557 | E | Guest Comments | OdcOP | AEDP | frmGuestComments.frm | DONE | Guest Comments |
| 558 | E | Banquet Estimate Billing | OdcOP | AEDP | — | DONE | Banquet Estimate Billing |
| 559 | E | Banquet Booking Advance | OdcOP | AEDP | — | DONE | Banquet Booking Advance |

### Outdoor Banquet → Reports

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 561 | R | Sales Register | OdcRep | ***P | — | REPORT | Sales Register |
| 562 | R | OutStanding Report | OdcRep | ***P | — | REPORT | — |
| 563 | R | Party wise OutStanding | OdcRep | ***P | — | REPORT | — |
| 564 | R | Cashier Collection Summary | OdcRep | ***P | — | REPORT | — |
| 565 | R | Booking Inquiry Detail | OdcRep | ***P | — | REPORT | Booking Inquiry Detail |
| 566 | R | Settlement  Report | OdcRep | ***P | — | REPORT | — |
| 567 | R | Daily Function Sheet | OdcRep | ***P | — | REPORT | — |
| 568 | R | Function Wise Item Detail | OdcRep | ***P | — | REPORT | — |

### Outdoor Banquet → MIS

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 570 | E | Cover Analysis Report | OdcMis | AEDP | — | MISSING | — |
| 571 | R | Cashier Collection Summary | OdcMis | ***P | — | REPORT | — |

### Outdoor Banquet → Tax Report

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 573 | R | Tax Report | OdcTaxR | ***P | — | REPORT | — |
| 574 | R | Tax Summary | OdcTaxR | ***P | — | REPORT | — |
| 575 | E | Banquet Taxwise Details | OdcTaxR | AEDP | — | MISSING | — |

## Other  (1 options · 0 missing)

### Other → Special

| Code | Flag | Option | Module | Param | VB6 form | Status | Python target |
|---:|:--:|---|---|---|---|---|---|
| 23001100 | E | Auto Settle Card Balance | MemOpr | AEDP | MemAutoSettleCardBalance.frm | DONE | Auto Settle Card Balance |
