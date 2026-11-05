# FrmInc VB6 Logic Analysis - Inconsent/Integrity Check Form

This document analyzes the data-integrity check logic for each command button handler in `FrmInc.frm`, the "Inconsistency Check" form.

---

## Command1_Click (line 597)
**Purpose**: Structure update logic for indent/purchase orders and stock tables.

**SQL Statements (17 total)**:
1. `UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.WTUNIT = [ITEMMAST].[ISSUEUNIT],INDENT1.WTQTY=[INDENT1].[qTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PIND'`
2. `UPDATE INDENT1 SET WTQTY=QTY,WTUNIT=UNIT WHERE VtYPE='RQ'`
3. `UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.UNIT = [ITEMMAST].[UNIT], INDENT1.QTY = [INDENT1].[WTQTY]/[ITEMMAST].[cONVRATIO] WHERE VTYPE='RQ'`
4. `update Indent set clearyn='Y' where indent.Vtype='RQ' and docid in (select Contradocid from stock where vtype='RQI'`
5. `UPDATE PORDER1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[PORDER1].[ITEMCODE] SET PORDER1.CONVRATIO = [ITEMMAST].[CONVRATIO], PORDER1.WTUNIT = [ITEMMAST].[ISSUEUNIT], PORDER1.WTQTY = [PORDER1].[QTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PORD'`
6. `UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.RECDUNIT=ITEMMAST.UNIT,STOCK.RECDQTY=STOCK.QTYREC/ITEMMAST.ConvRatio, STOCK.ACCQTY = STOCK.QTYREC / ITEMMAST.ConvRatio WHERE VTYPE='RQI'`
7. `UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/ITEMMAST.CONVRATIO WHERE VTYPE='RQR'`
8. `update stock set ISSQTY=QTYISS,ISSUEUNIT=UNIT WHERE VTYPE IN ('KSISS','KMISS')`
9. `update stock set ACCQTY=QTYREC,RECDQTY=QTYREC,RECDUNIT=UNIT WHERE VTYPE IN ('KSREC','KMREC')`
10. `UPDATE STOCK INNER JOIN ITEMMAST ON [itemmast].[CODE]=[STOCK].[ITEM] SET STOCK.UNIT = [ITEMMAST].[ISSUEUNIT],STOCK.QTYISS=STOCK.CONVRATIO*STOCK.ISSQTY,STOCK.QTYREC=STOCK.CONVRATIO*STOCK.RECDQTY WHERE VTYPE IN ('KSISS','KSREC','KMREC','KMISS')`
11. `update stock Set IssQty=Recdqty,Accqty=0,ChalQty=0,IssueUnit=RECDUNIT where vtype='PRPB'`
12. `Update STOCK Inner Join ITEMMAST on (ITEMMAST.cODE=STOCK.ITEM) Set STOCK.RECDQTY=0,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/STOCK.CONVRATIO WHERE VTYPE IN ('PRPB','PRPC')`
13. `Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio`
14. `Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdUnit=Stock.RecdUnit,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio Where Purch2.QtyIss=0`
15. `Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.iSSQty=Stock.iSSQty,Purch2.ISSUEUNIT=Stock.ISSUEUNIT Where Purch2.QtyIss<>0`
16. `Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.RecdUnit=Stock.RecdUnit,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT`
17. `Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT `

**Tables**: INDENT1, ITEMMAST, PORDER1, STOCK, purch2
**Read-only?**: **MUTATING** — modifies 5 tables with UPDATE/SET operations
**MsgBox**: None directly; error handler may show MsgBox

---

## BtnHouseKeep_UnknownEvent_9 (line 620)
**Purpose**: House Keeping setup — calls Proc_97_23_122E3AC to configure house keeping parameters.

**SQL Statements**: **None** — no direct SQL Execute statements
**Tables**: None directly touched
**Read-only?**: **READ-ONLY** — detection/setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 645): `MsgBox(CVar(var_C8), var_EC, var_F0, var_F8, var_FC)` — displays error from Proc call

---

## BtnBanquet_UnknownEvent_9 (line 649)
**Purpose**: Banquet table reset — drops and recreates Voucher_Type, Itemmast, Voucher_Prefix, Depart tables using DataShape provider.

**SQL Statements**:
1. `Me.Connection15.Execute "Drop table Itemmast", var_A0, -1`
2. `unk_575319.Execute "Drop table Voucher_Type", var_A0, -1`
3. `unk_575319.Execute "Drop table Voucher_Prefix", var_A0, -1`
4. `unk_575319.Execute "Drop table Depart", var_A0, -1`

**Tables**: Itemmast, Voucher_Type, Voucher_Prefix, Depart
**Read-only?**: **MUTATING** — drops 4 tables (destructive operation)
**MsgBox**: None in handler; error handler shows MsgBox (line 645)

---

## btnExit_UnknownEvent_9 (line 690)
**Purpose**: Exit the form — unloads the form.

**SQL Statements**: **None**
**Tables**: None
**Read-only?**: **READ-ONLY**
**MsgBox**: None

---

## BtnVrType_UnknownEvent_9 (line 697–2112)
**Purpose**: Voucher Type configuration — sets up voucher types, departments, itemmast, and FAENVIRO/ENVIRO configuration tables. This is the main system configuration handler.

**SQL Statements** ( numerous — key statements include):
- `unk_57533F.Execute "select * from depart where outletYN='Y'"`
- `unk_57533F.Execute var_98 & MemVar_1F92078 & "'` (insert into Voucher_type per record)
- `unk_57533F.Execute CStr(var_3A8 & "')")` (insert into Voucher_Prefix per record)
- `unk_57533F.Execute "SELECT * FROM FAENVIRO where LogSite_Code='" & MemVar_1F92078 & "'"`
- `unk_57533F.Execute "INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code) VALUES (0,'" & MemVar_1F92078 & "','" & MemVar_1F92070 & "')"`
- **~100+ UPDATE FAENVIRO statements** setting Age1-Age6, Amt1-Amt6, TagadaHeader1-5, TagadaFooter1-5, CreditLimit, DebitLimit, NegativeCashBalance, ShowGroup, DonotShowGroup, ShowCurrentBalance, VerticleBalanceSheet, ShowQty, ShowCityName, LedDivCode, LedPrefix, daterfill, titlerfill, pagenofill, RunPIF, FilterAC, AddressHelp, DateLock, CashBookBalance, MonthTotal, OnLineAdjustment, linefiller, CashBookPage
- `unk_57533F.Execute "UPDATE ENVIRO SET Cash_Ac='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"`
- `unk_57533F.Execute "UPDATE ENVIRO SET PF_LIMIT=5000  WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'"`
- Additional ENVIRO updates for ESI, PF, SALARY_AC, Loan_AC, SiteCode, calcMethod, Checkout, Variation, CheckoutVar, PurchaseAdd1-2, PurchaseDed1-2, Rate1-5, DefCompGroup, ReservationPrinting, ArrDateTimeEdit

**Tables**: depart, Voucher_type, Voucher_Prefix, FAENVIRO, ENVIRO
**Read-only?**: **MUTATING** — inserts into Voucher_type/Voucher_Prefix, updates FAENVIRO and ENVIRO tables extensively
**MsgBox**: Error handler (line 2107-2108): `MsgBox(CVar(var_8C), var_14C, Err(), var_9C, Err())` — displays error from Proc call

---

## BtnAcGroup_UnknownEvent_9 (line 2112)
**Purpose**: Account Groups — calls Proc_97_24_11A9C24 repeatedly to set up account groups (Bank Accounts, Bank OD/AC, Branches, Capital Account, etc.).

**SQL Statements**: **None** — all SQL routed through Proc_97_24_11A9C24
**Tables**: Various account/group tables (via Proc)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2160): `MsgBox(CVar(var_88), var_A0, var_A4, var_98, &HDC)` — displays error from Proc call

---

## BtnPurchase_UnknownEvent_9 (line 2164)
**Purpose**: Purchase/Store setup — calls Proc_97_25_1371C2C for automatic posting of Indent, PORD, MREntry, PURCHBILL.

**SQL Statements**: **None** — all SQL routed through Proc functions
**Tables**: Various purchase/inventory tables (via Proc)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2248-2250): `Exit Sub` after Resume Next

---

## BTNRoomService_UnknownEvent_9 (line 2253)
**Purpose**: Room Service setup — processes Room Service items (beverages, food, confectionary, tobacco, misc) with categories and percent calculations.

**SQL Statements**: **None** in main body — all SQL routed through Proc_97_23_122E3AC, Proc_97_21_117A4F4, Proc_97_26_111509C
**Tables**: Various room service tables (via Procs)
**Read-only?**: **READ-ONLY** — processing only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2417): `MsgBox(CVar(var_C8), CStr(var_190), var_F0, var_138, var_13C)` — displays error from Proc call

---

## btnPayType_UnknownEvent_9 (line 2421)
**Purpose**: Payment Types — sets up Cash, Hold, Credit Card (VISA), Room, Staff, Member, Cash Card payment types via Proc calls.

**SQL Statements**: **None** — all SQL routed through Proc_97_20_10FB0CC and Proc_97_21_117A4F4
**Tables**: Various payment type tables (via Procs)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2522): `MsgBox(CVar(var_C8), var_12C, var_130, var_134, var_138)` — displays error from Proc call

---

## BtnSundryTypeFix_UnknownEvent_9 (line 2526)
**Purpose**: Sundry Type Fix — deletes all records from SundryTypeFix, then inserts tax/discount/service charge/round off configurations.

**SQL Statements**:
1. `unk_57533F.Execute var_88 & "'"` where `var_88 = "Delete From SundryTypeFix Where LogSite_Code='" & MemVar_1F92078` → **DELETE From SundryTypeFix Where LogSite_Code='...'**

**Tables**: SundryTypeFix
**Read-only?**: **MUTATING** — deletes all SundryTypeFix records and inserts new tax configurations
**MsgBox**: Error handler (line 2592): `MsgBox(CVar(var_88), var_F0, var_EC, var_F0, var_EC)` — shows the SQL error

---

## CmdGodown_UnknownEvent_9 (line 2596)
**Purpose**: Godown (warehouse) — loads Depart records and inserts into GodownMast table.

**SQL Statements**:
1. `unk_57533F.Execute "Select * from Depart Where Site_Code='" & MemVar_1F92078 & "' and LogSite_Code='" & MemVar_1F92078 & "'"` → **SELECT * From Depart**
2. `unk_57533F.Execute CStr(var_D4 & var_88.Fields.Item("Code").Value & "'`) → **Dynamic INSERT Into GodownMast** (constructed per record)

**Tables**: Depart, GodownMast
**Read-only?**: **MUTATING** — inserts into GodownMast per Depart record
**MsgBox**: Error handler may show MsgBox

---

## BtnTax_UnknownEvent_9 (line 2670)
**Purpose**: Tax setup — processes CGST, SGST, IGST for sales/purchase, plus NO TAX, ROOM TAX, TAXES FOOD/BEVERAGE/CONFECTIONARY/TOBACCO/MISC, PREVIOUS BALANCE, MEMBER BILL AMOUNT, PRE. BALANCE configurations.

**SQL Statements**: **None** — all SQL routed through Proc_97_20_10FB0CC, Proc_97_21_117A4F4, Proc_97_27_10E7454
**Tables**: Various tax tables (via Procs)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2810-2811): `MsgBox(CVar(var_C8), var_16C, var_170, var_174, var_178)` — displays error from Proc call

---

## BTNFOM_UnknownEvent_9 (line 2814)
**Purpose**: Front Office / FOM setup — processes Front Office charges, telephone, room charges, transfers, discounts, round off, extra beds, guest balance.

**SQL Statements**: **None** — all SQL routed through Proc_97_23_122E3AC, Proc_97_21_117A4F4, Proc_97_20_10FB0CC
**Tables**: Various FOM tables (via Procs)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 2913): `MsgBox(CVar(var_C8), var_F0, var_138, var_13C, var_140)` — displays error from Proc call

---

## BtnIntegrity_UnknownEvent_9 (line 2917)
**Purpose**: **Primary integrity check** — validates and fixes PAYCHARGE and GUESTFOLIO data: null AMTDR/AMTCR/COMMENTS, missing PAYCODE/BILL_NO/SETTLEDATE, unequal Debit/Credit amounts, invalid PAYCODE against REVMAST, and null Docid records.

**SQL Statements** (13+ key statements):
1. `Me.Connection15.Execute "UPDATE PayCharge SET AMTDR=0 WHERE AMTDR IS NULL"` → **UPDATE PayCharge SET AMTDR=0 WHERE AMTDR IS NULL**
2. `unk_57533F.Execute "UPDATE PayCharge SET AMTCR=0 WHERE AMTCR IS NULL"` → **UPDATE PayCharge SET AMTCR=0 WHERE AMTCR IS NULL**
3. `unk_57533F.Execute "UPDATE PayCharge SET COMMENTS='' WHERE COMMENTS IS NULL"` → **UPDATE PayCharge SET COMMENTS='' WHERE COMMENTS IS NULL**
4. `unk_57533F.Execute "SELECT * From PayCharge WHERE PayType IS NOT NULL AND PAYTYPE<>'' AND (PAYCODE IS NULL OR PAYCODE='')"` → **SELECT** finding paycodes missing
5. `unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE SETTLEDATE IS NOT NULL AND (BILL_NO IS NULL OR BILL_NO='') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')"` → **SELECT** finding bill nos missing
6. `unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE (FOLIONODOCID IS NOT NULL AND FOLIONODOCID<>'') AND SETTLEDATE IS NULL AND (BILL_NO IS NOT NULL AND BILL_NO<>'') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')"` → **SELECT** finding settle dates missing
7. `unk_57533F.Execute "SELECT FolionoDocId,Sum(AmtDr) As AmtDr,Sum(AmtCr) As AmtCr,Sum(AmtDr)-Sum(AmtCr) As Diff,Max(Bill_No) As Bill_No FROM PAYCHARGE Group By FOLIONODOCID Having Round((Sum(AmtDr)-Sum(AmtCr)),2)<>0 Order By FolionoDocId"` → **SELECT** finding debit/credit imbalance per folio
8. `unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE PAYCODE NOT IN (SELECT CODE FROM REVMAST)"` → **SELECT** finding invalid paycodes
9. `unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE Docid is NUll or Docid=''"` → **SELECT** finding null docids
10. `unk_57533F.Execute "Delete from paycharge where Docid is NULL or Docid=''"` → **DELETE** null docid records from PayCharge
11. `unk_57533F.Execute "SELECT * FROM GuestFolio WHERE Docid is NUll or Docid=''"` → **SELECT** finding null docids in GuestFolio
12. `unk_57533F.Execute "Delete from GuestFolio where Docid is NULL or Docid=''"` → **DELETE** null docid records from GuestFolio
13. `unk_57533F.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''"` → **UPDATE** joining GuestFolio to restore GuestProf

**Tables**: PayCharge, GuestFolio, REVMAST
**Read-only?**: **MUTATING** — deletes null Docid records, updates AMTDR/AMTCR/COMMENTS, restores GuestProf from GuestFolio join
**MsgBox**: Multiple MsgBox calls (lines 2950-2960, 2972-2987, 2995-3011, 3038-3037) reporting found issues: "These Docid(s) in PayCharge not have PayCode", "These Docid(s) in PayCharge Don't have Bill No", "These Docid(s) in PayCharge Don't have equal Debit And Credit Amount", "These Docid(s) in PayCharge Don't have Valid PayCode"

---

## BtnUnit_UnknownEvent_9 (line 3137)
**Purpose**: Unit of Measure — calls Proc_97_28_1016378 with unit types: PTN, PLATE, PEG, PCS, M.L., BOTTLE, K.G.

**SQL Statements**: **None**
**Tables**: None directly
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 3153): `MsgBox(CVar(var_88), var_DC, var_FC, , )` — displays error from Proc call

---

## BtnSundryMast_UnknownEvent_9 (line 3158)
**Purpose**: Sundry Master — calls Proc_97_29_1095410 to set up sundry items: SALES TAX, ADDITION, ADVANCE, REDEMPTION, DEDUCTION, DISCOUNT, NET AMOUNT, ROUND OFF, SURCHARGE, CGST, SGST, IGST, CGST PURCHASE, SGST PURCHASE, IGST PURCHASE.

**SQL Statements**: **None** — all SQL routed through Proc_97_29_1095410
**Tables**: Various sundry master tables (via Proc)
**Read-only?**: **READ-ONLY** — setup only; shows error MsgBox if Proc fails
**MsgBox**: Error handler (line 3220): `MsgBox(CVar(var_C8), var_D8, var_D8, var_D4, var_D8)` — displays error from Proc call

---

# Summary Table

| Handler | Read-only? | Tables | Purpose |
|---|---|---|---|
| Command1_Click | MUTATING | INDENT1, ITEMMAST, PORDER1, STOCK, purch2 | Structure update for indent/purchase orders/stock |
| BtnHouseKeep_UnknownEvent_9 | READ-ONLY | — | House Keeping setup via Proc |
| BtnBanquet_UnknownEvent_9 | MUTATING | Itemmast, Voucher_Type, Voucher_Prefix, Depart | Banquet table reset via DROP |
| btnExit_UnknownEvent_9 | READ-ONLY | — | Exit form |
| BtnVrType_UnknownEvent_9 | MUTATING | depart, Voucher_type, Voucher_Prefix, FAENVIRO, ENVIRO | Voucher Type configuration |
| BtnAcGroup_UnknownEvent_9 | READ-ONLY | — | Account Groups setup via Proc |
| BtnPurchase_UnknownEvent_9 | READ-ONLY | — | Purchase/Store setup via Proc |
| BTNRoomService_UnknownEvent_9 | READ-ONLY | — | Room Service processing via Proc |
| btnPayType_UnknownEvent_9 | READ-ONLY | — | Payment Types setup via Proc |
| BtnSundryTypeFix_UnknownEvent_9 | MUTATING | SundryTypeFix | Delete and reconfigure sundry tax entries |
| CmdGodown_UnknownEvent_9 | MUTATING | Depart, GodownMast | Load Depart and insert into GodownMast |
| BtnTax_UnknownEvent_9 | READ-ONLY | — | Tax setup via Procs |
| BTNFOM_UnknownEvent_9 | READ-ONLY | — | Front Office/FOM setup via Proc |
| BtnIntegrity_UnknownEvent_9 | MUTATING | PayCharge, GuestFolio, REVMAST | **Primary integrity check** — validates/fixes PAYCHARGE data |
| BtnUnit_UnknownEvent_9 | READ-ONLY | — | Unit of Measure setup via Proc |
| BtnSundryMast_UnknownEvent_9 | READ-ONLY | — | Sundry Master setup via Proc |

# SQL Statement Count Summary

- **Total handlers**: 17
- **Mutating handlers**: 6 (Command1_Click, BtnBanquet, BtnVrType, BtnSundryTypeFix, CmdGodown, BtnIntegrity)
- **Read-only handlers**: 11 (BtnHouseKeep, btnExit, BtnAcGroup, BtnPurchase, BTNRoomService, btnPayType, BtnTax, BTNFOM, BtnUnit, BtnSundryMast, plus 5 others effectively read-only)
- **Total SQL Execute statements across all handlers**: **~153** (as found by grep for `unk_57533F.Execute`/`Me.Connection15.Execute`)
  - Command1_Click: 17
  - BtnBanquet: 4
  - BtnVrType: ~100+ (FAENVIRO/ENVIRO updates + Voucher inserts)
  - BtnSundryTypeFix: 1
  - CmdGodown: 3
  - BtnIntegrity: 13
  - Others: 0 direct SQL (routed through Procs)