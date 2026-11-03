VERSION 5.00
Begin VB.MDIForm MDIForm1
  BackColor = &HAFFFFF&
  WindowState = 2
  Icon = "MDIForm1.ctx":0
  LinkTopic = "MDIForm1"
  ClientLeft = 2640
  ClientTop = 2025
  ClientWidth = 11715
  ClientHeight = 9240
  Begin PictureBox PictShortCuts
    BackColor = &H0&
    Left = 1605
    Top = 1200
    Width = 3170
    Height = 7680
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin TreeView TreeView1
      Left = 0
      Top = 0
      Width = 3120
      Height = 6750
      DragIcon = "MDIForm1.ctx":442
      TabIndex = 22
    End
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 3120
      Height = 6420
      TabIndex = 23
    End
    Begin MSHFlexGrid mnuGrid
      Left = 0
      Top = 6810
      Width = 3120
      Height = 2370
      TabIndex = 24
    End
  End
  Begin PictureBox PictSubMenu
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 0
    Top = 0
    Width = 11715
    Height = 1200
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    FillColor = &HC00000&
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 1 'Align Top
    Begin BtnEnh CmdSubMenu
      Index = 0
      Left = 0
      Top = 0
      Width = 2040
      Height = 600
      TabIndex = 7
    End
    Begin Label LblCompany
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 16215
      Height = 600
      TabIndex = 15
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 18
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin PictureBox PictTitleBar
    BackColor = &HFFFFFF&
    Left = 9915
    Top = 1200
    Width = 1800
    Height = 7680
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 4 'Align Right
    Begin BtnEnh LblTimeAustralia
      Left = 0
      Top = 5595
      Width = 1875
      Height = 675
      TabIndex = 14
    End
    Begin BtnEnh LblTimeJapan
      Left = 0
      Top = 4980
      Width = 1875
      Height = 675
      TabIndex = 13
    End
    Begin BtnEnh LblTimeLondon
      Left = 0
      Top = 4380
      Width = 1875
      Height = 675
      TabIndex = 12
    End
    Begin BtnEnh LblTimeItaly
      Left = 0
      Top = 3780
      Width = 1875
      Height = 675
      TabIndex = 11
    End
    Begin BtnEnh LblTimeCanada
      Left = 0
      Top = 3165
      Width = 1875
      Height = 675
      TabIndex = 9
    End
    Begin BtnEnh LblTimeIndia
      Left = 0
      Top = 2550
      Width = 1875
      Height = 675
      TabIndex = 10
    End
    Begin BtnEnh LblCalender
      Left = 0
      Top = 1890
      Width = 1800
      Height = 675
      TabIndex = 16
    End
    Begin BtnEnh Reload
      Left = 0
      Top = 6240
      Width = 900
      Height = 480
      TabIndex = 17
    End
    Begin BtnEnh cmdExit
      Left = 900
      Top = 6240
      Width = 900
      Height = 480
      TabIndex = 18
    End
    Begin Image DealerLogo
      Picture = "MDIForm1.ctx":74C
      Left = -180
      Top = 7275
      Width = 2100
      Height = 1650
    End
    Begin Image ImgLogo
      Left = 0
      Top = 0
      Width = 1800
      Height = 1890
      Stretch = -1  'True
    End
    Begin Image tmpImage
      Left = 0
      Top = 0
      Width = 1800
      Height = 1890
      Visible = 0   'False
      Stretch = -1  'True
    End
  End
  Begin PictureBox PictMainMenu
    BackColor = &HFFFFFF&
    Left = 0
    Top = 1200
    Width = 1605
    Height = 7680
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin BtnEnh LblMgsInfo
      Left = 720
      Top = 8400
      Width = 975
      Height = 375
      Visible = 0   'False
      TabIndex = 20
    End
    Begin BtnEnh LblMgs
      Left = 0
      Top = 8400
      Width = 1695
      Height = 375
      TabIndex = 19
    End
    Begin BtnEnh LblStatus
      Left = 0
      Top = 8745
      Width = 1605
      Height = 465
      TabIndex = 8
    End
    Begin BtnEnh CmdMainMenu
      Index = 0
      Left = 0
      Top = 0
      Width = 1605
      Height = 650
      TabIndex = 6
    End
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 2025
    Top = 1050
  End
  Begin PictureBox Picture3
    BackColor = &H80000006&
    ForeColor = &H80000008&
    Left = 4770
    Top = 1200
    Width = 7335
    Height = 7680
    Visible = 0   'False
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Align = 3 'Align Left
    Appearance = 0 'Flat
    Begin Timer Print_KOT_Timer
      Enabled = 0   'False
      Interval = 5000
      Left = 420
      Top = 825
    End
    Begin Timer SMSJobTimer
      Enabled = 0   'False
      Interval = 1000
      Left = 0
      Top = 825
    End
    Begin Timer SMSTimer
      Enabled = 0   'False
      Interval = 5000
      Left = 405
      Top = 405
    End
    Begin Winsock sckControlPanel
    End
    Begin Timer Timer2
      Enabled = 0   'False
      Interval = 10000
      Left = 0
      Top = 405
    End
    Begin Label Label1
      BackColor = &H80000007&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 0
      Width = 12225
      Height = 1665
      TabIndex = 2
      WordWrap = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin StatusBar sbar
    Left = 0
    Top = 8880
    Width = 11715
    Height = 360
    TabIndex = 0
  End
  Begin ImageList ImageList1
  End
  Begin Menu FA
    Caption = "&Finance"
    Begin Menu FAT
      Caption = "&Transaction"
      Begin Menu fate
        Index = 0
        Caption = "&Voucher Entry"
      End
      Begin Menu fate
        Index = 1
        Visible = 0   'False
        Caption = "Adjustment Entry"
      End
      Begin Menu fate
        Index = 2
        Visible = 0   'False
        Caption = "Delete Adjustment Entry"
      End
      Begin Menu fate
        Index = 3
        Caption = "Bank Reconciliation"
      End
      Begin Menu fate
        Index = 5
        Visible = 0   'False
        Caption = "T.D.S. Challan Entry"
      End
      Begin Menu fate
        Index = 6
        Visible = 0   'False
        Caption = "T.D.S. Certificate Entry"
      End
      Begin Menu fate
        Index = 7
        Caption = "&Expense Voucher"
      End
    End
    Begin Menu faD
      Visible = 0   'False
      Caption = "&Display"
      Begin Menu FAREPORTD
        Index = 0
        Visible = 0   'False
        Caption = "Balanc&e Sheet"
      End
      Begin Menu FAREPORTD
        Index = 1
        Visible = 0   'False
        Caption = "&Profit And Loss Account"
      End
      Begin Menu FAREPORTD
        Index = 2
        Visible = 0   'False
        Caption = "&Trial Balance (Group)"
      End
      Begin Menu FAREPORTD
        Index = 3
        Caption = "&Trial Ledger"
      End
      Begin Menu FAREPORTD
        Index = 4
        Visible = 0   'False
        Caption = "Cash &Flow"
      End
      Begin Menu FAREPORTD
        Index = 5
        Visible = 0   'False
        Caption = "Fund Flo&w"
      End
      Begin Menu FAREPORTD
        Index = 6
        Visible = 0   'False
        Caption = "Cash And Bank Books"
      End
    End
    Begin Menu farp
      Caption = "&Reports"
      Begin Menu FAREPORT
        Index = 0
        Caption = "Trial Balance"
      End
      Begin Menu FAREPORT
        Index = 1
        Visible = 0   'False
        Caption = "&Day Book"
      End
      Begin Menu FAREPORT
        Index = 3
        Caption = "&Ledger"
      End
      Begin Menu FAREPORT
        Index = 4
        Visible = 0   'False
        Caption = "&Interest Ledger"
      End
      Begin Menu FAREPORT
        Index = 5
        Caption = "Cas&h Book"
      End
      Begin Menu FAREPORT
        Index = 6
        Caption = "Ban&k Book"
      End
      Begin Menu FAREPORT
        Index = 7
        Caption = "&Journal Books"
      End
      Begin Menu FAREPORT
        Index = 10
        Caption = "&Annexure"
      End
      Begin Menu FAREPORT
        Index = 13
        Caption = "Bank &Register"
      End
      Begin Menu FAREPORT
        Index = 14
        Caption = "A&geing Analysis for Debtors"
      End
      Begin Menu FAREPORT
        Index = 15
        Caption = "Ageing A&nalysis for Creditors"
      End
      Begin Menu FAREPORT
        Index = 22
        Caption = "Ch&eque Cleared Register"
      End
      Begin Menu FAREPORT
        Index = 23
        Caption = "Che&que Not Cleared Register"
      End
      Begin Menu FAREPORT
        Index = 24
        Caption = "Outstanding Report For Debtors"
      End
      Begin Menu FAREPORT
        Index = 25
        Caption = "Outstanding Report For Creditors"
      End
      Begin Menu FAREPORT
        Index = 27
        Visible = 0   'False
        Caption = "Daily Transaction Summary"
      End
      Begin Menu FAREPORT
        Index = 29
        Visible = 0   'False
        Caption = "Non Transaction Report"
      End
      Begin Menu FAREPORT
        Index = 30
        Visible = 0   'False
        Caption = "Reference Report"
      End
      Begin Menu FAREPORT
        Index = 31
        Caption = "Detailed Trial Ledger"
      End
      Begin Menu FAREPORT
        Index = 32
        Visible = 0   'False
        Caption = "A/c Check List"
      End
      Begin Menu FAREPORT
        Index = 33
        Caption = "Bill Wise Outstanding Report For Debtors"
      End
      Begin Menu FAREPORT
        Index = 34
        Visible = 0   'False
        Caption = "Control Ledger"
      End
      Begin Menu FAREPORT
        Index = 35
        Caption = "Roz Namcha"
      End
    End
  End
  Begin Menu Mast
    Caption = "&Main Setup"
    Begin Menu GEN
      Caption = "General Setup"
      Begin Menu GENMas
        Index = 0
        Caption = "Tax Master"
      End
      Begin Menu GENMas
        Index = 1
        Caption = "Tax Structure"
      End
      Begin Menu GENMas
        Index = 2
        Caption = "Payment Type"
      End
      Begin Menu GENMas
        Index = 4
        Caption = "Parameter"
      End
      Begin Menu GENMas
        Index = 5
        Visible = 0   'False
        Caption = "Revenue Group Setting"
      End
      Begin Menu GENMas
        Index = 6
        Caption = "Printing Parameters"
      End
      Begin Menu GENMas
        Index = 7
        Caption = "Printing Setup"
      End
      Begin Menu GENMas
        Index = 8
        Visible = 0   'False
        Caption = "Revenue Wise Budget Entry"
      End
    End
    Begin Menu FO
      Caption = "Front Office"
      Begin Menu Mas
        Index = 0
        Visible = 0   'False
        Caption = "Country Master"
      End
      Begin Menu Mas
        Index = 1
        Visible = 0   'False
        Caption = "State Master"
      End
      Begin Menu Mas
        Index = 2
        Visible = 0   'False
        Caption = "City Master"
      End
      Begin Menu Mas
        Index = 4
        Caption = "Market Segment"
      End
      Begin Menu Mas
        Index = 5
        Caption = "Business Source"
      End
      Begin Menu Mas
        Index = 6
        Caption = "Guest Status"
      End
      Begin Menu Mas
        Index = 7
        Caption = "Charge Master"
      End
      Begin Menu Mas
        Index = 8
        Caption = "Fixed Charge"
      End
      Begin Menu Mas
        Index = 9
        Caption = "Package Master"
      End
      Begin Menu Mas
        Index = 12
        Caption = "Plan Master"
      End
      Begin Menu Mas
        Index = 13
        Visible = 0   'False
        Caption = "Season Master"
      End
      Begin Menu Mas
        Index = 14
        Caption = "Room Features"
      End
      Begin Menu Mas
        Index = 15
        Caption = "Room Category"
      End
      Begin Menu Mas
        Index = 16
        Caption = "Room Master"
      End
      Begin Menu Mas
        Index = 17
        Caption = "Company Master"
      End
      Begin Menu Mas
        Index = 20
        Caption = "Forex Master"
      End
      Begin Menu Mas
        Index = 21
        Caption = "Guest History"
      End
      Begin Menu Mas
        Index = 22
        Visible = 0   'False
        Caption = "Group Profile"
      End
      Begin Menu Mas
        Index = 23
        Caption = "Room Display"
      End
    End
    Begin Menu Pos
      Caption = "Point of Sale"
      Begin Menu POSMas
        Index = 0
        Caption = "Setup Outlet"
      End
      Begin Menu POSMas
        Index = 1
        Caption = "Outlet Bill Sundry Setting"
      End
      Begin Menu POSMas
        Index = 2
        Caption = "Server Master"
      End
      Begin Menu POSMas
        Index = 3
        Caption = "Table Master"
      End
      Begin Menu POSMas
        Index = 4
        Caption = "Item List"
      End
      Begin Menu POSMas
        Index = 5
        Caption = "Menu Group"
      End
      Begin Menu POSMas
        Index = 6
        Caption = "Menu Category"
      End
      Begin Menu POSMas
        Index = 7
        Caption = "Menu Item"
      End
      Begin Menu POSMas
        Index = 8
        Caption = "Menu Item Rate"
      End
      Begin Menu POSMas
        Index = 9
        Visible = 0   'False
        Caption = "Rate Group Master"
      End
      Begin Menu POSMas
        Index = 10
        Caption = "Session Master"
      End
      Begin Menu POSMas
        Index = 11
        Caption = "Open Item Consumption"
      End
      Begin Menu POSMas
        Index = 12
        Caption = "Scheme Master"
      End
      Begin Menu POSMas
        Index = 15
        Visible = 0   'False
        Caption = "Happy Hours"
      End
      Begin Menu POSMas
        Index = 16
        Caption = "Happy Hours [ Free Items ]"
      End
      Begin Menu POSMas
        Index = 17
        Caption = "Combo Pack"
      End
      Begin Menu POSMas
        Index = 18
        Caption = "NC Type"
      End
      Begin Menu POSMas
        Index = 19
        Caption = "Customer History"
      End
      Begin Menu POSMas
        Index = 20
        Caption = "Delivery Boy"
      End
    End
    Begin Menu Mem
      Caption = "Members Mgmt"
      Begin Menu MemMas
        Index = 0
        Caption = "Category Master"
      End
      Begin Menu MemMas
        Index = 1
        Caption = "Member Master"
      End
      Begin Menu MemMas
        Index = 2
        Caption = "Corporate Member Master"
      End
      Begin Menu MemMas
        Index = 3
        Caption = "Revenue Master"
      End
      Begin Menu MemMas
        Index = 4
        Caption = "Facility Master"
      End
      Begin Menu MemMas
        Index = 5
        Caption = "Category wise Revenue"
      End
      Begin Menu MemMas
        Index = 6
        Caption = "Category wise Facility"
      End
      Begin Menu MemMas
        Index = 7
        Caption = "Member Bill Sundry Setting"
      End
      Begin Menu MemMas
        Index = 8
        Caption = "Environment Settings"
      End
      Begin Menu MemMas
        Index = 9
        Caption = "Member Age Wise Revenue"
      End
      Begin Menu MemMas
        Index = 10
        Caption = "Member Select Category"
      End
    End
    Begin Menu HL
      Caption = "Banquet"
      Begin Menu HallM
        Index = 0
        Caption = "Events"
      End
      Begin Menu HallM
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu HallM
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu HallM
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu HallM
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu HallM
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu HallM
        Index = 6
        Caption = "Catalog Master"
      End
      Begin Menu HallM
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu CCenter
      Caption = "Inventory"
      Begin Menu CCenterMas
        Index = 0
        Caption = "Party Master"
      End
      Begin Menu CCenterMas
        Index = 1
        Caption = "Department"
      End
      Begin Menu CCenterMas
        Index = 2
        Caption = "Item Group"
      End
      Begin Menu CCenterMas
        Index = 3
        Caption = "Item Category"
      End
      Begin Menu CCenterMas
        Index = 4
        Caption = "Item Entry "
      End
      Begin Menu CCenterMas
        Index = 5
        Visible = 0   'False
        Caption = "Consumption Master"
      End
      Begin Menu CCenterMas
        Index = 6
        Caption = "Purchase Sundry Setting"
      End
      Begin Menu CCenterMas
        Index = 7
        Visible = 0   'False
        Caption = "Location Master"
      End
      Begin Menu CCenterMas
        Index = 8
        Caption = "Opening Stock"
      End
      Begin Menu CCenterMas
        Index = 9
        Caption = "Item  List"
      End
      Begin Menu CCenterMas
        Index = 10
        Visible = 0   'False
        Caption = "Shift Master"
      End
      Begin Menu CCenterMas
        Index = 11
        Caption = "Enviro Inventry"
      End
    End
    Begin Menu PR
      Caption = "HR/Payroll"
      Begin Menu PRM
        Index = 0
        Caption = "Designation Master"
      End
      Begin Menu PRM
        Index = 1
        Caption = "Category  Master"
      End
      Begin Menu PRM
        Index = 2
        Caption = "Holiday Master"
      End
      Begin Menu PRM
        Index = 3
        Caption = "Employee Master"
      End
    End
    Begin Menu Tel
      Caption = "EPABX"
      Begin Menu TelMaast
        Index = 0
        Visible = 0   'False
        Caption = "Com Port Properties"
      End
      Begin Menu TelMaast
        Index = 1
        Caption = "Call Type Master"
      End
      Begin Menu TelMaast
        Index = 2
        Caption = "Extension Master"
      End
      Begin Menu TelMaast
        Index = 3
        Caption = "Call Codes Master"
      End
      Begin Menu TelMaast
        Index = 4
        Visible = 0   'False
        Caption = "Call Control Master"
      End
    End
    Begin Menu fae
      Caption = "&Finance"
      Begin Menu fame
        Index = 0
        Caption = "Group Accounts"
      End
      Begin Menu fame
        Index = 1
        Caption = "Ledger Accounts"
      End
      Begin Menu fame
        Index = 2
        Caption = "Narration Master"
      End
      Begin Menu fame
        Index = 3
        Caption = "T.D.S. Category"
      End
      Begin Menu fame
        Index = 4
        Caption = "FA Environment"
      End
      Begin Menu fame
        Index = 5
        Caption = "Voucher Environment"
      End
      Begin Menu fame
        Index = 6
        Visible = 0   'False
        Caption = "Opening Balance Updation"
      End
      Begin Menu fame
        Index = 7
        Caption = "Year End Updation"
      End
      Begin Menu fame
        Index = 8
        Caption = "Current Balance Updation"
      End
      Begin Menu fame
        Index = 9
        Visible = 0   'False
        Caption = "Country Master"
      End
      Begin Menu fame
        Index = 10
        Visible = 0   'False
        Caption = "State Master"
      End
      Begin Menu fame
        Index = 11
        Visible = 0   'False
        Caption = "City Master"
      End
      Begin Menu fame
        Index = 12
        Caption = "Delete Message"
      End
      Begin Menu fame
        Index = 13
        Caption = "Account Merging"
      End
      Begin Menu fame
        Index = 14
        Caption = "Voucher Serialisation"
      End
    End
    Begin Menu Util
      Caption = "Utility"
      Begin Menu UTL
        Index = 0
        Caption = "User Master"
      End
      Begin Menu UTL
        Index = 1
        Caption = "Permissions"
      End
      Begin Menu UTL
        Index = 6
        Visible = 0   'False
        Caption = "Update Database Nulls"
      End
      Begin Menu UTL
        Index = 8
        Caption = "Backup Data"
      End
      Begin Menu UTL
        Index = 9
        Visible = 0   'False
        Caption = "Account Merging"
      End
      Begin Menu UTL
        Index = 11
        Visible = 0   'False
        Caption = "Guest Parameters Setting"
      End
      Begin Menu UTL
        Index = 12
        Caption = "Sundry Master"
      End
      Begin Menu UTL
        Index = 13
        Visible = 0   'False
        Caption = "Voucher Wise Sundry Entry"
      End
      Begin Menu UTL
        Index = 14
        Visible = 0   'False
        Caption = "Sale MIS Customized"
      End
      Begin Menu UTL
        Index = 15
        Visible = 0   'False
        Caption = "Guest BirthDates/Anniversary"
      End
      Begin Menu UTL
        Index = 16
        Caption = "Inconsistency Check"
      End
      Begin Menu UTL
        Index = 17
        Caption = "Year End Updation"
      End
      Begin Menu UTL
        Index = 18
        Visible = 0   'False
        Caption = "Data Transfer"
      End
      Begin Menu UTL
        Index = 19
        Visible = 0   'False
        Caption = "Data Recieving"
      End
      Begin Menu UTL
        Index = 20
        Caption = "Menu Item Copy"
      End
      Begin Menu UTL
        Index = 21
        Caption = "POS Bill Deletion"
      End
      Begin Menu UTL
        Index = 22
        Caption = "Guest LookUp"
      End
      Begin Menu UTL
        Index = 23
        Caption = "Country Master"
      End
      Begin Menu UTL
        Index = 24
        Caption = "State Master"
      End
      Begin Menu UTL
        Index = 25
        Caption = "City Master"
      End
      Begin Menu UTL
        Index = 26
        Caption = "Company Master"
      End
      Begin Menu UTL
        Index = 27
        Caption = "Department"
      End
      Begin Menu UTL
        Index = 28
        Caption = "Ledger Accounts"
      End
      Begin Menu UTL
        Index = 29
        Visible = 0   'False
        Caption = "Data Transfer (POS)"
      End
      Begin Menu UTL
        Index = 30
        Visible = 0   'False
        Caption = "PLU File (W.Scale)"
      End
      Begin Menu UTL
        Index = 31
        Visible = 0   'False
        Caption = "User Permissions (Advanced)"
      End
      Begin Menu UTL
        Index = 32
        Caption = "POS Recycle"
      End
      Begin Menu UTL
        Index = 33
        Caption = "Unit Master"
      End
      Begin Menu UTL
        Index = 34
        Caption = "Task Scheduler"
      End
    End
    Begin Menu SCard
      Index = 33
      Visible = 0   'False
      Caption = "Smart Card"
      Begin Menu SCRD
        Index = 1
        Caption = "Registration Entry"
      End
      Begin Menu SCRD
        Index = 2
        Caption = "Recharge/Refund Entry"
      End
      Begin Menu SCRD
        Index = 40
        Caption = "-"
      End
      Begin Menu SCRD
        Index = 41
        Caption = "Cash Card Transaction Report"
      End
      Begin Menu SCRD
        Index = 42
        Caption = "Cash Card Collection Summary"
      End
    End
  End
  Begin Menu Reserv
    Caption = "Reservation"
    Begin Menu ReservationEnt
      Index = 0
      Caption = "Operations"
      Begin Menu ResOpEnt
        Index = 0
        Caption = "Reservation/Cancellation"
      End
      Begin Menu ResOpEnt
        Index = 1
        Visible = 0   'False
        Caption = "Add/Edit/Delete Group With Reservation "
      End
      Begin Menu ResOpEnt
        Index = 2
        Caption = "Look Up Room types"
      End
      Begin Menu ResOpEnt
        Index = 3
        Caption = "Look Up Rooms"
      End
      Begin Menu ResOpEnt
        Index = 4
        Caption = "Reservation With History"
      End
      Begin Menu ResOpEnt
        Index = 5
        Caption = "Advance Deposit"
      End
      Begin Menu ResOpEnt
        Index = 6
        Caption = "Confirmation Letters"
      End
      Begin Menu ResOpEnt
        Index = 7
        Caption = "Cancellation Letters"
      End
      Begin Menu ResOpEnt
        Index = 8
        Caption = "Registration Card"
      End
      Begin Menu ResOpEnt
        Index = 9
        Caption = "Reservation Status Screen"
      End
    End
    Begin Menu ReservationEnt
      Index = 1
      Caption = "Reservation Status Report"
      Begin Menu ResStatusRpt
        Index = 0
        Caption = "Reservation Status"
      End
      Begin Menu ResStatusRpt
        Index = 1
        Caption = "Reservation Status Arrival"
      End
      Begin Menu ResStatusRpt
        Index = 2
        Caption = "Reservation Status In-House"
      End
      Begin Menu ResStatusRpt
        Index = 3
        Visible = 0   'False
        Caption = "Group Pickup Report"
      End
      Begin Menu ResStatusRpt
        Index = 4
        Visible = 0   'False
        Caption = "Group Arrival Report"
      End
      Begin Menu ResStatusRpt
        Index = 5
        Caption = "Arrival List"
      End
    End
    Begin Menu ReservationEnt
      Index = 2
      Caption = "Advance Recd. Report"
      Begin Menu AdvRecdRpt
        Index = 0
        Caption = "Advance Recd."
      End
      Begin Menu AdvRecdRpt
        Index = 1
        Caption = "Advance Recd. Arrival"
      End
      Begin Menu AdvRecdRpt
        Index = 2
        Caption = "Advance Recd. In-House"
      End
    End
    Begin Menu ReservationEnt
      Index = 4
      Caption = "M.I.S."
      Begin Menu ReservationMIS
        Index = 0
        Caption = "7-730 Days Forecast"
      End
      Begin Menu ReservationMIS
        Index = 1
        Caption = "23 Day Room Availability Forecast"
      End
      Begin Menu ReservationMIS
        Index = 2
        Caption = "23 Day Room Type Availability Forecast"
      End
      Begin Menu ReservationMIS
        Index = 3
        Caption = "Package Forecast "
      End
    End
  End
  Begin Menu FrontDesk
    Caption = "Front Office"
    Begin Menu FDO
      Index = 0
      Caption = "Operations"
      Begin Menu FDOMenu
        Index = 0
        Caption = "WalkIn CheckIn"
      End
      Begin Menu FDOMenu
        Index = 2
        Caption = "Room Status"
      End
      Begin Menu FDOMenu
        Index = 8
        Caption = "Expense Entry"
      End
      Begin Menu FDOMenu
        Index = 13
        Caption = "Forex Receive Entry"
      End
      Begin Menu FDOMenu
        Index = 16
        Caption = "Display Rack"
      End
      Begin Menu FDOMenu
        Index = 17
        Visible = 0   'False
        Caption = "House Keeping Screen"
      End
      Begin Menu FDOMenu
        Index = 18
        Visible = 0   'False
        Caption = "Travel Agency Posting"
      End
      Begin Menu FDOMenu
        Index = 19
        Caption = "Bill Reprint"
      End
      Begin Menu FDOMenu
        Index = 20
        Caption = "Reverse Check Out"
      End
      Begin Menu FDOMenu
        Index = 21
        Caption = "Merge Room"
      End
      Begin Menu FDOMenu
        Index = 22
        Caption = "Bill Re-Settlement"
      End
      Begin Menu FDOMenu
        Index = 23
        Caption = "Reverse Room Merge"
      End
      Begin Menu FDOMenu
        Index = 24
        Caption = "Plan Meal Tokens"
      End
      Begin Menu FDOMenu
        Index = 25
        Caption = "GRC Printing"
      End
      Begin Menu FDOMenu
        Index = 26
        Caption = "Blank GRC"
      End
    End
    Begin Menu FDOReports
      Caption = "Reports"
      Begin Menu FDORep
        Index = 2
        Caption = "Instant House Count "
      End
      Begin Menu FDORep
        Index = 3
        Caption = "Room Inventory"
      End
      Begin Menu FDORep
        Index = 4
        Visible = 0   'False
        Caption = "Guest In House"
      End
      Begin Menu FDORep
        Index = 5
        Visible = 0   'False
        Caption = "House Keeping Report"
      End
      Begin Menu FDORep
        Index = 6
        Visible = 0   'False
        Caption = "Arrival & Departure List"
      End
      Begin Menu FDORep
        Index = 7
        Caption = "Charge Payment Detail"
      End
      Begin Menu FDORep
        Index = 8
        Caption = "Payments By Cashier"
      End
      Begin Menu FDORep
        Index = 9
        Caption = "Cashier Report "
      End
      Begin Menu FDORep
        Index = 10
        Caption = "Settlement Report"
      End
      Begin Menu FDORep
        Index = 11
        Caption = "Cancel Bill Details"
      End
      Begin Menu FDORep
        Index = 12
        Caption = "Room Change History"
      End
      Begin Menu FDORep
        Index = 13
        Visible = 0   'False
        Caption = "Arrival And Departure Register"
      End
      Begin Menu FDORep
        Index = 14
        Caption = "FOM Sales Register"
      End
      Begin Menu FDORep
        Index = 15
        Caption = "Room Wise Plan Detail"
      End
      Begin Menu FDORep
        Index = 16
        Visible = 0   'False
        Caption = "Expected Plan/Package F&&B Details"
      End
      Begin Menu FDORep
        Index = 17
        Caption = "Occupancy Report"
      End
      Begin Menu FDORep
        Index = 20
        Caption = "Bill Change Report"
      End
      Begin Menu FDORep
        Index = 21
        Caption = "Check Out Register"
      End
      Begin Menu FDORep
        Index = 22
        Caption = "Check In Register"
      End
      Begin Menu FDORep
        Index = 23
        Caption = "Expected Check Out"
      End
      Begin Menu FDORep
        Index = 25
        Visible = 0   'False
        Caption = "Guest Bill Details"
      End
      Begin Menu FDORep
        Index = 26
        Caption = "Guest Extra Charges"
      End
      Begin Menu FDORep
        Index = 29
        Caption = "Checked In Guest Detail"
      End
      Begin Menu FDORep
        Index = 30
        Caption = "Room Rent Audit Report"
      End
      Begin Menu FDORep
        Index = 31
        Caption = "Sales Report"
      End
      Begin Menu FDORep
        Index = 32
        Caption = "Guest Payments"
      End
    End
    Begin Menu TFDOForms
      Caption = "Tourism Forms"
      Begin Menu FDOForms
        Index = 0
        Caption = "Form  C "
      End
      Begin Menu FDOForms
        Index = 1
        Caption = "Tourism Form 1"
      End
      Begin Menu FDOForms
        Index = 2
        Caption = "Tourism Form 2"
      End
      Begin Menu FDOForms
        Index = 3
        Caption = "Tourism Form 5"
      End
      Begin Menu FDOForms
        Index = 4
        Visible = 0   'False
        Caption = "Form -3 (Luxury Tax Register)"
      End
      Begin Menu FDOForms
        Index = 5
        Caption = "Tourism Form 6"
      End
      Begin Menu FDOForms
        Index = 6
        Caption = "Tourism Form 4"
      End
      Begin Menu FDOForms
        Index = 7
        Caption = "Luxury Tax Report"
      End
      Begin Menu FDOForms
        Index = 8
        Caption = "Monthly Return"
      End
      Begin Menu FDOForms
        Index = 11
        Caption = "L.T. FORM II"
      End
      Begin Menu FDOForms
        Index = 13
        Caption = "L.T. FORM IV"
      End
    End
    Begin Menu FDOMIS
      Caption = "M.I.S."
      Begin Menu FDOMISRep
        Index = 0
        Caption = "Occupancy Display"
      End
      Begin Menu FDOMISRep
        Index = 1
        Caption = "Guest wise Analysis"
      End
      Begin Menu FDOMISRep
        Index = 2
        Caption = "Company wise Analysis"
      End
      Begin Menu FDOMISRep
        Index = 3
        Caption = "Guestwise Charges Detail"
      End
      Begin Menu FDOMISRep
        Index = 4
        Caption = "Room Occupancy"
      End
      Begin Menu FDOMISRep
        Index = 5
        Caption = "Room Type Occupancy"
      End
      Begin Menu FDOMISRep
        Index = 6
        Caption = "Room Wise Room Revenue"
      End
      Begin Menu FDOMISRep
        Index = 7
        Caption = "Occupancy Analysis"
      End
      Begin Menu FDOMISRep
        Index = 8
        Caption = "Company wise Nights"
      End
      Begin Menu FDOMISRep
        Index = 9
        Caption = "Revenue During the stay"
      End
      Begin Menu FDOMISRep
        Index = 10
        Caption = "Room Type Occupancy Analysis"
      End
      Begin Menu FDOMISRep
        Index = 11
        Caption = "Plan Report"
      End
      Begin Menu FDOMISRep
        Index = 12
        Caption = "Business Source Occupancy Analysis"
      End
    End
    Begin Menu FDOTax
      Caption = "Tax Reports"
      Begin Menu FDOTaxr
        Index = 0
        Caption = "FOM Tax Detail"
      End
      Begin Menu FDOTaxr
        Index = 1
        Caption = "Tax Wise Charge Detail"
      End
    End
  End
  Begin Menu HouseKeeping
    Caption = "House Keeping"
    Begin Menu SetHK
      Caption = "Setup"
      Begin Menu HouseSet
        Index = 0
        Caption = "Block Master"
      End
    End
    Begin Menu TransHK
      Caption = "Operations"
      Begin Menu HouseEnt
        Index = 0
        Caption = "Complaint Master"
      End
      Begin Menu HouseEnt
        Index = 1
        Caption = "Complaint Clearance"
      End
      Begin Menu HouseEnt
        Index = 2
        Caption = "Lost / Found Entry"
      End
      Begin Menu HouseEnt
        Index = 3
        Caption = "Claim Entry"
      End
      Begin Menu HouseEnt
        Index = 4
        Visible = 0   'False
        Caption = "House Keeping Op.Stock Entry"
      End
      Begin Menu HouseEnt
        Index = 5
        Visible = 0   'False
        Caption = "Issue/Recd. Entry"
      End
      Begin Menu HouseEnt
        Index = 6
        Caption = "House Keeping Screen"
      End
      Begin Menu HouseEnt
        Index = 7
        Caption = "Item Issued On Cleaning"
      End
      Begin Menu HouseEnt
        Index = 8
        Caption = "Check Out Clearance Screen"
      End
      Begin Menu HouseEnt
        Index = 9
        Caption = "Room Block"
      End
    End
    Begin Menu ReportsHK
      Caption = "Reports"
      Begin Menu HouseREP
        Index = 0
        Visible = 0   'False
        Caption = "Issue Register"
      End
      Begin Menu HouseREP
        Index = 1
        Visible = 0   'False
        Caption = "Stock Register"
      End
      Begin Menu HouseREP
        Index = 2
        Visible = 0   'False
        Caption = "Stock Summary "
      End
      Begin Menu HouseREP
        Index = 3
        Visible = 0   'False
        Caption = "Room Status Report"
      End
      Begin Menu HouseREP
        Index = 4
        Visible = 0   'False
        Caption = "Complaint Detail"
      End
      Begin Menu HouseREP
        Index = 5
        Caption = "House Keeping Report"
      End
    End
    Begin Menu CHANGEHK
      Visible = 0   'False
      Caption = "Changes Department"
    End
  End
  Begin Menu Purchase
    Caption = "Inventory"
    Begin Menu Matop
      Index = 0
      Caption = "Operations"
      Begin Menu Purch
        Index = 1
        Visible = 0   'False
        Caption = "Gravy Item Entry"
      End
      Begin Menu Purch
        Index = 2
        Caption = "Indent"
      End
      Begin Menu Purch
        Index = 3
        Caption = "Purchase Order"
      End
      Begin Menu Purch
        Index = 4
        Caption = "M.R. Entry"
      End
      Begin Menu Purch
        Index = 5
        Caption = "Purchase Bill"
      End
      Begin Menu Purch
        Index = 6
        Caption = "Requisition Slip"
      End
      Begin Menu Purch
        Index = 7
        Caption = "Stock Issue on Requisition"
      End
      Begin Menu Purch
        Index = 8
        Caption = "Kitchen Closing Stock"
      End
      Begin Menu Purch
        Index = 9
        Caption = "Stock Transfer"
      End
      Begin Menu Purch
        Index = 10
        Visible = 0   'False
        Caption = "Finish Material Receive Entry"
      End
      Begin Menu Purch
        Index = 11
        Visible = 0   'False
        Caption = "Excise Invoice Cum Gate Pass"
      End
    End
    Begin Menu MatLok
      Caption = "Look Ups"
      Begin Menu MatStat
        Index = 0
        Caption = "Pending Indent"
      End
      Begin Menu MatStat
        Index = 1
        Caption = "Pending M.R."
      End
      Begin Menu MatStat
        Index = 2
        Caption = "Pending Purchase Order"
      End
    End
    Begin Menu MatReports
      Index = 1
      Caption = "Reports"
      Begin Menu MatRep
        Index = 0
        Caption = "Purchase Register"
      End
      Begin Menu MatRep
        Index = 1
        Caption = "Purchase Summary"
      End
      Begin Menu MatRep
        Index = 2
        Caption = "Cash/Credit Purchase"
      End
      Begin Menu MatRep
        Index = 3
        Caption = "Stock Register "
      End
      Begin Menu MatRep
        Index = 4
        Caption = "Stock Summary "
      End
      Begin Menu MatRep
        Index = 5
        Caption = "Stock In Hand "
      End
      Begin Menu MatRep
        Index = 6
        Caption = "Kitchen Stock Report I/R Basis"
      End
      Begin Menu MatRep
        Index = 7
        Caption = "Excess Consumption Report"
      End
      Begin Menu MatRep
        Index = 8
        Visible = 0   'False
        Caption = "Restaurant Issue Report"
      End
      Begin Menu MatRep
        Index = 9
        Visible = 0   'False
        Caption = "Store Issue Register"
      End
      Begin Menu MatRep
        Index = 10
        Visible = 0   'False
        Caption = "Change Kitchen/Store"
      End
      Begin Menu MatRep
        Index = 11
        Visible = 0   'False
        Caption = "Daily Store Issue Reports"
      End
      Begin Menu MatRep
        Index = 12
        Caption = "Purchase Ledger"
      End
      Begin Menu MatRep
        Index = 13
        Caption = "Issue CheckList"
      End
      Begin Menu MatRep
        Index = 15
        Caption = "Stock Summary P/S Basis"
      End
      Begin Menu MatRep
        Index = 16
        Caption = "ABC Analysis"
      End
      Begin Menu MatRep
        Index = 17
        Visible = 0   'False
        Caption = "Production Report I/R Basis"
      End
      Begin Menu MatRep
        Index = 18
        Caption = "Store Issue Report"
      End
      Begin Menu MatRep
        Index = 19
        Visible = 0   'False
        Caption = "Liquor Sale Report"
      End
    End
    Begin Menu MatVat
      Index = 2
      Caption = "Tax Reports"
      Begin Menu MatVatR
        Index = 0
        Caption = "VAT Register"
      End
      Begin Menu MatVatR
        Index = 10
        Caption = "VAT Register II"
      End
      Begin Menu MatVatR
        Index = 11
        Caption = "VAT Register III"
      End
      Begin Menu MatVatR
        Index = 12
        Caption = "Form24 Annexure-A"
      End
      Begin Menu MatVatR
        Index = 15
        Caption = "Form III"
      End
      Begin Menu MatVatR
        Index = 16
        Caption = "UPVAT XXIV"
      End
    End
  End
  Begin Menu Restaurant
    Caption = "Point Of Sale"
    Begin Menu Rest
      Index = 25
      Visible = 0   'False
      Caption = "Stock Register"
    End
    Begin Menu Rest
      Index = 26
      Visible = 0   'False
      Caption = "Stock Summary"
    End
    Begin Menu Rest
      Index = 28
      Visible = 0   'False
      Caption = "Kitchen Stock Summary"
    End
    Begin Menu Rest
      Index = 30
      Visible = 0   'False
      Caption = "Restaurant Change "
    End
    Begin Menu Rest
      Index = 31
      Caption = "POS Status"
    End
    Begin Menu POSOperations
      Caption = "POS Operations"
      Begin Menu POSEnt
        Index = 0
        Caption = "KOT Entry"
      End
      Begin Menu POSEnt
        Index = 1
        Caption = "Table Change Entry"
      End
      Begin Menu POSEnt
        Index = 2
        Caption = "Sale Bill Entry"
      End
      Begin Menu POSEnt
        Index = 3
        Caption = "Settlement Entry"
      End
      Begin Menu POSEnt
        Index = 4
        Caption = "POS Bill Reprint"
      End
      Begin Menu POSEnt
        Index = 5
        Caption = "Split Sale Bill"
      End
      Begin Menu POSEnt
        Index = 6
        Caption = "Display Table"
      End
      Begin Menu POSEnt
        Index = 7
        Caption = "Order Booking"
      End
      Begin Menu POSEnt
        Index = 8
        Caption = "Bill Lookup"
      End
      Begin Menu POSEnt
        Index = 9
        Caption = "Order Booking Advance"
      End
      Begin Menu POSEnt
        Index = 10
        Caption = "KOT Transfer"
      End
      Begin Menu POSEnt
        Index = 11
        Visible = 0   'False
        Caption = "Token Entry"
      End
      Begin Menu POSEnt
        Index = 12
        Caption = "Assign Delivery"
      End
      Begin Menu POSEnt
        Index = 13
        Caption = "Payment Receive"
      End
    End
    Begin Menu POSReports
      Caption = "POS Reports"
      Begin Menu POSRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu POSRep
        Index = 1
        Caption = "Stewardwise Sale"
      End
      Begin Menu POSRep
        Index = 2
        Caption = "Table wise Sale"
      End
      Begin Menu POSRep
        Index = 3
        Caption = "Settlement Summary"
      End
      Begin Menu POSRep
        Index = 5
        Caption = "KOT Wise Details"
      End
      Begin Menu POSRep
        Index = 6
        Visible = 0   'False
        Caption = "Discount Register"
      End
      Begin Menu POSRep
        Index = 7
        Caption = "Cover Analysis"
      End
      Begin Menu POSRep
        Index = 8
        Caption = "Pending KOT"
      End
      Begin Menu POSRep
        Index = 9
        Caption = "Item wise Sale"
      End
      Begin Menu POSRep
        Index = 10
        Caption = "Deleted Unsettled Bill"
      End
      Begin Menu POSRep
        Index = 11
        Caption = "NC KOT Detail"
      End
      Begin Menu POSRep
        Index = 12
        Visible = 0   'False
        Caption = "Sales Day Book"
      End
      Begin Menu POSRep
        Index = 14
        Caption = "Order Detail Report"
      End
      Begin Menu POSRep
        Index = 16
        Caption = "NC KOT Summary"
      End
      Begin Menu POSRep
        Index = 17
        Visible = 0   'False
        Caption = "Daily DIET Report"
      End
      Begin Menu POSRep
        Index = 18
        Caption = "Discount Register"
      End
      Begin Menu POSRep
        Index = 19
        Caption = "Not Delivered Order"
      End
      Begin Menu POSRep
        Index = 20
        Caption = "Group Wise Sale"
      End
      Begin Menu POSRep
        Index = 21
        Caption = "Customer Detail"
      End
      Begin Menu POSRep
        Index = 22
        Caption = "Delivery Status"
      End
      Begin Menu POSRep
        Index = 41
        Caption = "Denomination Detail"
      End
      Begin Menu POSRep
        Index = 42
        Caption = "Payment Receive Entry (POS)"
      End
      Begin Menu POSRep
        Index = 43
        Caption = "Bill Wise Adjustment Report"
      End
    End
    Begin Menu POSMIS
      Caption = "POS M.I.S."
      Begin Menu MISREP
        Index = 0
        Caption = "Collection Summary"
      End
      Begin Menu MISREP
        Index = 1
        Caption = "Open Item Sales"
      End
      Begin Menu MISREP
        Index = 2
        Caption = "Void Bills"
      End
      Begin Menu MISREP
        Index = 3
        Caption = "KOT Change Report"
      End
      Begin Menu MISREP
        Index = 5
        Caption = "Discount Summary"
      End
      Begin Menu MISREP
        Index = 6
        Caption = "Monthwise Sales"
      End
      Begin Menu MISREP
        Index = 7
        Caption = "ABC  Analysis"
      End
      Begin Menu MISREP
        Index = 8
        Caption = "Sale Summary"
      End
      Begin Menu MISREP
        Index = 9
        Visible = 0   'False
        Caption = "Tax Invoice Detail"
      End
      Begin Menu MISREP
        Index = 10
        Caption = "Edited Bills"
      End
    End
    Begin Menu PosTax
      Caption = "Tax Reports"
      Begin Menu PosTaxRep
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu PosTaxRep
        Index = 1
        Caption = "Tax Register"
      End
      Begin Menu PosTaxRep
        Index = 2
        Caption = "Taxwise Details"
      End
      Begin Menu PosTaxRep
        Index = 3
        Caption = "Tax Summary"
      End
    End
  End
  Begin Menu Banquet
    Caption = "Banquet"
    Begin Menu BanqMas
      Visible = 0   'False
      Caption = "Setup"
      Begin Menu HallEnt
        Index = 0
        Caption = "Events"
      End
      Begin Menu HallEnt
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu HallEnt
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu HallEnt
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu HallEnt
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu HallEnt
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu HallEnt
        Index = 6
        Caption = "Catalog Master"
      End
      Begin Menu HallEnt
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu oper
      Caption = "Operation"
      Begin Menu Hallop
        Index = 0
        Caption = "Booking Inquiry"
      End
      Begin Menu Hallop
        Index = 1
        Caption = "Banquet Booking"
      End
      Begin Menu Hallop
        Index = 2
        Caption = "Catalog Selection"
      End
      Begin Menu Hallop
        Index = 3
        Caption = "Chef Pre-Costing"
      End
      Begin Menu Hallop
        Index = 4
        Caption = "Banquet Billing"
      End
      Begin Menu Hallop
        Index = 5
        Visible = 0   'False
        Caption = "Banquet Settlement"
      End
      Begin Menu Hallop
        Index = 6
        Caption = "Venue Availability"
      End
      Begin Menu Hallop
        Index = 7
        Caption = "Guest Comments"
      End
      Begin Menu Hallop
        Index = 8
        Caption = "Banquet Estimate Billing"
      End
      Begin Menu Hallop
        Index = 9
        Caption = "Banquet Booking Advance"
      End
    End
    Begin Menu HallReport
      Index = 18
      Caption = "Reports"
      Begin Menu BanqRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu BanqRep
        Index = 1
        Caption = "OutStanding Report"
      End
      Begin Menu BanqRep
        Index = 2
        Caption = "Party wise OutStanding"
      End
      Begin Menu BanqRep
        Index = 3
        Caption = "Cashier  Report"
      End
      Begin Menu BanqRep
        Index = 4
        Caption = "Booking Inquiry Detail"
      End
      Begin Menu BanqRep
        Index = 5
        Caption = "Settlement  Report"
      End
      Begin Menu BanqRep
        Index = 7
        Caption = "Daily Function Sheet"
      End
      Begin Menu BanqRep
        Index = 9
        Caption = "Item Wise Sales Report"
      End
      Begin Menu BanqRep
        Index = 10
        Caption = "Company Wise Sale Report"
      End
      Begin Menu BanqRep
        Index = 11
        Caption = "Function Wise Item Detail"
      End
    End
    Begin Menu HallMIS
      Index = 18
      Caption = "MIS"
      Begin Menu BanqRepMIS
        Index = 0
        Caption = "Cover Analysis"
      End
      Begin Menu BanqRepMIS
        Index = 1
        Caption = "Collection Summary"
      End
    End
    Begin Menu HallTax
      Caption = "Tax Report"
      Begin Menu HallTaxP
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu HallTaxP
        Index = 1
        Caption = "Tax Summary"
      End
      Begin Menu HallTaxP
        Index = 3
        Caption = "Banquet Taxwise Details"
      End
    End
  End
  Begin Menu NightAudit
    Caption = "Night Audit"
    Begin Menu NightAudito
      Caption = "Operation"
      Begin Menu NightAuditoR
        Index = 0
        Caption = "Guest Audit Ledger"
      End
      Begin Menu NightAuditoR
        Index = 1
        Caption = "Charges Posting"
      End
      Begin Menu NightAuditoR
        Index = 2
        Caption = "Night Audit Process"
      End
      Begin Menu NightAuditoR
        Index = 3
        Caption = "Account Posting"
      End
      Begin Menu NightAuditoR
        Index = 4
        Visible = 0   'False
        Caption = "Night Audit Control Panel"
      End
      Begin Menu NightAuditoR
        Index = 5
        Caption = "Reverse Night Audit"
      End
    End
    Begin Menu NightAuditR
      Caption = "Reports"
      Begin Menu NightAuditRR
        Index = 0
        Caption = "Daily Report "
      End
      Begin Menu NightAuditRR
        Index = 1
        Caption = "Daily Report-II"
      End
      Begin Menu NightAuditRR
        Index = 2
        Visible = 0   'False
        Caption = "Revenue Analysis"
      End
      Begin Menu NightAuditRR
        Index = 3
        Caption = "Guest Trail"
      End
      Begin Menu NightAuditRR
        Index = 4
        Caption = "Checkout Analysis"
      End
      Begin Menu NightAuditRR
        Index = 5
        Caption = "Occupancy Analysis"
      End
      Begin Menu NightAuditRR
        Index = 6
        Caption = "Market Segment Analysis"
      End
      Begin Menu NightAuditRR
        Index = 7
        Caption = "Business Source Analysis"
      End
      Begin Menu NightAuditRR
        Index = 8
        Caption = "Company Analysis"
      End
      Begin Menu NightAuditRR
        Index = 9
        Visible = 0   'False
        Caption = "Travel Agent Analysis"
      End
      Begin Menu NightAuditRR
        Index = 10
        Caption = "FOCC Report"
      End
      Begin Menu NightAuditRR
        Index = 11
        Caption = "Food Costing Report"
      End
      Begin Menu NightAuditRR
        Index = 12
        Caption = "F&&B Cost Statement"
      End
      Begin Menu NightAuditRR
        Index = 13
        Visible = 0   'False
        Caption = "Budget Analysis"
      End
      Begin Menu NightAuditRR
        Index = 14
        Caption = "Ageing Analysis (Debtors)"
      End
      Begin Menu NightAuditRR
        Index = 15
        Caption = "Ageing Analysis (Creditors)"
      End
      Begin Menu NightAuditRR
        Index = 16
        Caption = "Credit Report"
      End
    End
    Begin Menu NightAuditGST
      Caption = "GST Reports"
      Begin Menu NightAuditGSTR
        Index = 1
        Caption = "GSTR-1"
      End
      Begin Menu NightAuditGSTR
        Index = 2
        Caption = "GSTR-2(3)"
      End
      Begin Menu NightAuditGSTR
        Index = 3
        Caption = "GSTR-2(4A)"
      End
      Begin Menu NightAuditGSTR
        Index = 4
        Caption = "GSTR-2(4B)"
      End
    End
    Begin Menu NightAuditL
      Caption = "Log"
      Begin Menu NightAuditLR
        Index = 0
        Caption = "Night Audit Log"
      End
      Begin Menu NightAuditLR
        Index = 1
        Caption = "Charges Remove Log"
      End
    End
  End
  Begin Menu PayRoll
    Caption = "HR/Payroll"
    Begin Menu PayO
      Caption = "Operations"
      Begin Menu PayOpr
        Index = 0
        Caption = "Leave"
      End
      Begin Menu PayOpr
        Index = 1
        Visible = 0   'False
        Caption = "Attendance"
      End
      Begin Menu PayOpr
        Index = 2
        Caption = "Loan/Advance"
      End
      Begin Menu PayOpr
        Index = 3
        Caption = "Over Time"
      End
      Begin Menu PayOpr
        Index = 4
        Caption = "Leave Encashment"
      End
      Begin Menu PayOpr
        Index = 5
        Caption = "Salary Creation"
      End
    End
    Begin Menu PayR
      Caption = "Reports"
      Begin Menu PayRep
        Index = 0
        Caption = "Pay Slip"
      End
      Begin Menu PayRep
        Index = 1
        Caption = "Payroll Register"
      End
      Begin Menu PayRep
        Index = 2
        Caption = "Loan Register"
      End
      Begin Menu PayRep
        Index = 3
        Caption = "Loan/Advance Summary"
      End
      Begin Menu PayRep
        Index = 4
        Caption = "Loan/Advance Ledger"
      End
      Begin Menu PayRep
        Index = 5
        Caption = "Attendence Report"
      End
      Begin Menu PayRep
        Index = 6
        Caption = "Gratuity Report"
      End
      Begin Menu PayRep
        Index = 7
        Caption = "PF Statement"
      End
      Begin Menu PayRep
        Index = 8
        Caption = "Form C"
      End
    End
  End
  Begin Menu Telephone
    Caption = "EPABX"
    Begin Menu mnuTelMast
      Index = 0
      Visible = 0   'False
      Caption = "Telephone Call Entry"
    End
    Begin Menu mnuTelMast
      Index = 1
      Caption = "Telephone Report"
      Begin Menu mnuTelRep
        Index = 0
        Caption = "EPBAX Call Report"
      End
    End
  End
  Begin Menu Message
    Caption = "&Messaging"
    Begin Menu mnuMSG
      Index = 0
      Caption = "&InBox"
    End
    Begin Menu mnuMSG
      Index = 1
      Caption = "&OutBox"
    End
  End
  Begin Menu Member
    Caption = "Members Mgmt"
    Begin Menu MembOpr
      Caption = "Operations"
      Begin Menu MemOpr
        Index = 0
        Caption = "Member Visit Entry"
      End
      Begin Menu MemOpr
        Index = 1
        Caption = "Member Renewal Entry"
      End
      Begin Menu MemOpr
        Index = 2
        Caption = "Member Used Facility Entry"
      End
      Begin Menu MemOpr
        Index = 3
        Caption = "Member Facility Billing"
      End
      Begin Menu MemOpr
        Index = 4
        Caption = "Member Bill Printing"
      End
      Begin Menu MemOpr
        Index = 5
        Caption = "Member Assistant"
      End
      Begin Menu MemOpr
        Index = 6
        Caption = "Outstation Member Entry"
      End
      Begin Menu MemOpr
        Index = 7
        Caption = "Member Category Change Entry"
      End
      Begin Menu MemOpr
        Index = 8
        Caption = "Payment Receive Entry"
      End
      Begin Menu MemOpr
        Index = 9
        Visible = 0   'False
        Caption = "Revenue Change Entry"
      End
      Begin Menu MemOpr
        Index = 10
        Caption = "Payment Due Letter Entry"
      End
      Begin Menu MemOpr
        Index = 11
        Caption = "Member Category Change (Conditional)"
      End
      Begin Menu MemOpr
        Index = 12
        Caption = "Auto Settle Card Balance"
      End
    End
    Begin Menu MembRpt
      Caption = "Reports"
      Begin Menu MemRpt
        Index = 0
        Caption = "Member Visit Detail"
      End
      Begin Menu MemRpt
        Index = 1
        Caption = "Member Mailing Labels"
      End
      Begin Menu MemRpt
        Index = 2
        Caption = "Member Bill Missing Report"
      End
      Begin Menu MemRpt
        Index = 3
        Caption = "Member Sales Register"
      End
      Begin Menu MemRpt
        Index = 4
        Caption = "Member Ledger"
      End
      Begin Menu MemRpt
        Index = 5
        Caption = "Member Tax Report"
      End
      Begin Menu MemRpt
        Index = 6
        Caption = "Payment Due Letter Report"
      End
      Begin Menu MemRpt
        Index = 7
        Caption = "Member Birthday/Anniversary Details"
      End
    End
  End
  Begin Menu SMS
    Visible = 0   'False
    Caption = "SMS"
    Begin Menu SMSG
      Caption = "General"
      Begin Menu SMSGEN
        Index = 1
        Caption = "SMS Center Settings"
      End
      Begin Menu SMSGEN
        Index = 2
        Caption = "SMS Environment Settings"
      End
    End
    Begin Menu SMSSD
      Caption = "Send SMS"
      Begin Menu SMSSEND
        Index = 1
        Caption = "Multiple SMS Type"
      End
    End
  End
  Begin Menu MallManage
    Caption = "Mall Mgmt"
    Begin Menu MallOpr
      Caption = "Operations"
      Begin Menu MallMgmt
        Index = 0
        Caption = "Location-Master"
      End
      Begin Menu MallMgmt
        Index = 1
        Caption = "Facility Master"
      End
      Begin Menu MallMgmt
        Index = 2
        Caption = "Location Facilities"
      End
      Begin Menu MallMgmt
        Index = 3
        Caption = "Party Locations"
      End
      Begin Menu MallMgmt
        Index = 4
        Caption = "Meter Reading"
      End
      Begin Menu MallMgmt
        Index = 5
        Caption = "Facility Billing"
      End
      Begin Menu MallMgmt
        Index = 6
        Visible = 0   'False
        Caption = "Facility Sundry Setting"
      End
    End
    Begin Menu MallMgmtRpt
      Caption = "Reports"
      Begin Menu MallRep
        Index = 0
        Caption = "Facility Bill Register"
      End
    End
  End
  Begin Menu Odc
    Caption = "Outdoor Banquet"
    Begin Menu ODCMas
      Caption = "Setup"
      Begin Menu OdcEnt1
        Index = 0
        Visible = 0   'False
        Caption = "Events"
      End
      Begin Menu OdcEnt1
        Index = 1
        Caption = "Venue Features"
      End
      Begin Menu OdcEnt1
        Index = 2
        Caption = "Venue Master"
      End
      Begin Menu OdcEnt1
        Index = 3
        Caption = "Menu Category"
      End
      Begin Menu OdcEnt1
        Index = 4
        Caption = "Item Group"
      End
      Begin Menu OdcEnt1
        Index = 5
        Caption = "Menu Item"
      End
      Begin Menu OdcEnt1
        Index = 6
        Visible = 0   'False
        Caption = "Catalog Master"
      End
      Begin Menu OdcEnt1
        Index = 7
        Caption = "Banquet Bill Sundry Setting"
      End
    End
    Begin Menu OdcOPer
      Caption = "Operation"
      Begin Menu OdcOP
        Index = 0
        Caption = "Booking Inquiry"
      End
      Begin Menu OdcOP
        Index = 1
        Caption = "Banquet Booking"
      End
      Begin Menu OdcOP
        Index = 2
        Caption = "Catalog Selection"
      End
      Begin Menu OdcOP
        Index = 3
        Caption = "Chef Pre-Costing"
      End
      Begin Menu OdcOP
        Index = 4
        Caption = "Banquet Billing"
      End
      Begin Menu OdcOP
        Index = 5
        Caption = "Banquet Settlement"
      End
      Begin Menu OdcOP
        Index = 6
        Caption = "Venue Availability"
      End
      Begin Menu OdcOP
        Index = 7
        Caption = "Guest Comments"
      End
      Begin Menu OdcOP
        Index = 8
        Caption = "Banquet Estimate Billing"
      End
      Begin Menu OdcOP
        Index = 9
        Caption = "Banquet Booking Advance"
      End
    End
    Begin Menu OdcRepo
      Caption = "Reports"
      Begin Menu OdcRep
        Index = 0
        Caption = "Sales Register"
      End
      Begin Menu OdcRep
        Index = 1
        Caption = "OutStanding Report"
      End
      Begin Menu OdcRep
        Index = 2
        Caption = "Party wise OutStanding"
      End
      Begin Menu OdcRep
        Index = 3
        Caption = "Cashier Collection Summary"
      End
      Begin Menu OdcRep
        Index = 4
        Caption = "Booking Inquiry Detail"
      End
      Begin Menu OdcRep
        Index = 5
        Caption = "Settlement  Report"
      End
      Begin Menu OdcRep
        Index = 7
        Caption = "Daily Function Sheet"
      End
      Begin Menu OdcRep
        Index = 9
        Caption = "Function Wise Item Detail"
      End
    End
    Begin Menu OdcMisR
      Caption = "MIS"
      Begin Menu OdcMis
        Index = 0
        Caption = "Cover Analysis Report"
      End
      Begin Menu OdcMis
        Index = 1
        Caption = "Cashier Collection Summary"
      End
    End
    Begin Menu OdcTax
      Caption = "Tax Report"
      Begin Menu OdcTaxR
        Index = 0
        Caption = "Tax Report"
      End
      Begin Menu OdcTaxR
        Index = 1
        Caption = "Tax Summary"
      End
      Begin Menu OdcTaxR
        Index = 2
        Caption = "Banquet Taxwise Details"
      End
    End
  End
  Begin Menu EXTR
    Caption = "EXTRAs"
    Begin Menu EXTSCRD
      Caption = "Smart Card"
      Begin Menu EXTSCOPR
        Caption = "Operations"
        Begin Menu EXTSCOP
          Index = 1
          Caption = "Card Initialization"
        End
        Begin Menu EXTSCOP
          Index = 2
          Caption = "Card Registration"
        End
        Begin Menu EXTSCOP
          Index = 3
          Caption = "Card Recharge"
        End
        Begin Menu EXTSCOP
          Index = 4
          Caption = "Card Refund"
        End
        Begin Menu EXTSCOP
          Index = 5
          Caption = "Card Re-Issue"
        End
        Begin Menu EXTSCOP
          Index = 6
          Caption = "User Collection"
        End
      End
      Begin Menu EXTSCREP
        Caption = "Reports"
        Begin Menu EXTSCRP
          Index = 1
          Caption = "Card Statement (MINI)"
        End
        Begin Menu EXTSCRP
          Index = 2
          Caption = "Card Statement (FULL)"
        End
        Begin Menu EXTSCRP
          Index = 3
          Caption = "Card Transaction Report"
        End
        Begin Menu EXTSCRP
          Index = 4
          Caption = "Card Collection Summary"
        End
        Begin Menu EXTSCRP
          Index = 5
          Caption = "Card Status Report"
        End
      End
    End
    Begin Menu EXTSMS
      Caption = "SMS"
      Begin Menu SMSSETUP
        Caption = "Sstup"
        Begin Menu EXTSMSSETUP
          Index = 1
          Caption = "SMS (API)"
        End
      End
      Begin Menu SMSOPR
        Caption = "Operations"
        Begin Menu EXTSMSOPR
          Index = 1
          Caption = "SMS (Scheduled)"
        End
        Begin Menu EXTSMSOPR
          Index = 2
          Caption = "SMS (Conditional)"
        End
      End
    End
    Begin Menu EXTDTR
      Caption = "Data Transfer"
      Begin Menu DTRO
        Index = 0
        Caption = "Transfer (Offline)"
      End
      Begin Menu DTRON
        Index = 1
        Caption = "Transfer (Online)"
      End
    End
    Begin Menu RW
      Caption = "Reward Points"
      Begin Menu RWP
        Index = 1
        Caption = "Guest Registration"
      End
      Begin Menu RWP
        Index = 2
        Caption = "Reward Points Parameter I"
      End
      Begin Menu RWREP
        Caption = "Reports"
        Begin Menu EXTRWREP
          Index = 1
          Caption = "Registered Guest Detail"
        End
      End
    End
    Begin Menu TallyIntf
      Caption = "Tally Interface"
      Begin Menu TIntf
        Index = 1
        Caption = "Tally Export(XML)"
      End
    End
    Begin Menu LockManage
      Caption = "Lock Mgmt"
      Begin Menu DrLock
        Index = 1
        Caption = "Door Lock"
        Begin Menu DRLK
          Index = 1
          Caption = "Godrej Locks"
        End
      End
    End
  End
  Begin Menu DirectSale
    Visible = 0   'False
    Caption = "Direct Sale"
    Begin Menu dsale
      Index = 30
      Caption = "Restaurant Change "
    End
  End
  Begin Menu mnuWindow
    Visible = 0   'False
    Caption = "&Windows"
    Begin Menu mnuWindowCascade
      Caption = "&Cascade"
    End
    Begin Menu mnuWindowTileHorizontal
      Caption = "Tile &Horizontal"
    End
    Begin Menu mnuWindowTileVertical
      Caption = "Tile &Vertical"
    End
  End
  Begin Menu mnuExit
    Visible = 0   'False
    Caption = "&Exit"
  End
  Begin Menu UTLL
    Index = 0
    Visible = 0   'False
    Caption = "Sale Bill Modification"
  End
  Begin Menu GridPopUp
    Visible = 0   'False
    Caption = "PlanPopup"
    Begin Menu PP
      Index = 0
      Caption = ""
    End
    Begin Menu PP
      Index = 1
      Caption = ""
    End
  End
  Begin Menu mnuMdI
    Visible = 0   'False
    Caption = "MDI"
    Begin Menu smnuMdI
      Caption = "Manage MDI"
    End
  End
End

Attribute VB_Name = "MDIForm1"

Private global_100 As Integer
Private global_114 As Integer
Private var_158 As New CGZipFiles
Private var_270 As New CGZipFiles
Private global_112 As Integer
Private global_108 As Long

Private Sub mnuExit_Click() 'EA64F0
  'Data Table: 5C8378
  Dim var_88 As Variant
  loc_EA6471: Me.Global.Unload Me
  loc_EA6487: Call 0.Method_arg_2B0 (var_98)
  loc_EA649D: Set var_88 = MemVar_1F926C8.txt
  loc_EA64A3: Call 0.Method_mnuExit_Click0 (0, var_AC)
  loc_EA64AB: frmCompany.txt.Text = MemVar_1F920C8
  loc_EA64C8: Set var_88 = MemVar_1F926C8.txt
  loc_EA64CE: Call 0.Method_mnuExit_Click0 (1, var_AC)
  loc_EA64D6: frmCompany.txt.Text = MemVar_1F920D4
  loc_EA64E8: Call frmCompany.btnapplyNew_UnknownEvent_9()
  loc_EA64ED: Exit Sub
End Sub

Private Sub HouseSet_Click(Index As Integer) 'ECC584
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_ECC4EF: var_B4 = CVar("HouseSet" & "+") 'String
  loc_ECC50A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ECC51C: var_C6 = Index
  loc_ECC525: If (var_C6 = 0) Then
  loc_ECC532:   global_52 = New frmBlockMast
  loc_ECC546:   Set var_CC = var_D0(Index)
  loc_ECC54C:   Call 0.Method_HouseSet_Click0 (var_D4, var_C6)
  loc_ECC554:   MemVar_1F92200 = frmBlockMast.Menu.Caption
  loc_ECC566:   global_52.CAPTION = CVar(var_D4)
  loc_ECC57C:   Call global_52.Show
  loc_ECC582: End If
  loc_ECC582: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_A '10A2B64
  'Data Table: 5C8378
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_A0 As Variant
  Dim var_D4 As Integer
  Dim var_B4 As Variant
  Dim var_E8 As Panel
  Dim var_A4 As Variant
  Dim MemVar_1F920EC As Double
  loc_10A28B6: var_8E = 0
  loc_10A28BB: On Error Resume Next
  loc_10A28CB: Set var_A4 = Me.sckControlPanel
  loc_10A28F1: var_90 = CInt(InStr(1, var_8C, "#", 0))
  loc_10A2908: var_B4 = Left(var_8C, CLng((var_90 - 1)))
  loc_10A2926: var_A0 = var_8C
  loc_10A292E: var_D4 = Mid(var_A0, CLng((var_90 + 1)), var_B4)
  loc_10A2937: var_8C = CStr(var_D4)
  loc_10A2946: var_D8 = CStr(var_B4)
  loc_10A2953: If (var_D8 = "LockMessage") Then
  loc_10A2966:   Call 0.Method_arg_2B0 (var_A0, var_C4, var_90)
  loc_10A2976:   For var_DC = &H3C To 0 Step &HFF: var_8E = var_DC 'Integer
  loc_10A2990:     var_D4 = 6
  loc_10A299E:     Set var_A4 = MemVar_1F92244.sbar
  loc_10A29B5:     var_D4 = MDIForm1.sbar.Panels.ControlDefault
  loc_10A29BD:     var_E8._ObjectDefault = var_E8
  loc_10A29E2:     Proc_96_21_E57C50(CDbl(1), "Night Audit Counter: " & CStr(var_8E), &H3C)
  loc_10A29EC:   Next var_DC 'Integer
  loc_10A29F4: Else
  loc_10A29FE:   If (var_D8 = "LockSystem") Then
  loc_10A2A16:     SystemParametersInfo(&H61, 1, Null, 1)
  loc_10A2A34:     Call 0.Method_arg_2B0 (1)
  loc_10A2A3C:   Else
  loc_10A2A46:     If (var_D8 = "UnLockSystem") Then
  loc_10A2A5E:       SystemParametersInfo(&H61, 0, Null, 1)
  loc_10A2A6F:       var_D4 = 6
  loc_10A2A7D:       Set var_A4 = MemVar_1F92244.sbar
  loc_10A2A94:       var_D4 = MDIForm1.sbar.Panels.ControlDefault
  loc_10A2A9C:       var_E8._ObjectDefault = var_E8
  loc_10A2AC3:       Me.Global.Unload MemVar_1F936C0
  loc_10A2AE1:       Proc_156_8_EA8134("FrmNAMessageA", 0)
  loc_10A2AF2:       var_A0 = MemVar_1F920EC
  loc_10A2B21:       Call 0.Method_arg_2B0 (var_A0, var_C4, CDate(DateAdd("D", CDbl(1), var_A0)))
  loc_10A2B29:     Else
  loc_10A2B33:       If (var_D8 = "LockClose") Then
  loc_10A2B3E:         Call 0.Method_arg_2B4 (vbNullString)
  loc_10A2B58:         Call 0.Method_arg_2B0 (1, var_C4)
  loc_10A2B5D:       End If
  loc_10A2B5D:     End If
  loc_10A2B5D:   End If
  loc_10A2B5D: End If
  loc_10A2B61: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_C 'E6A6D4
  'Data Table: 5C8378
  Dim var_88 As Winsock
  Dim sckControlPanel_UnknownEvent_C6 As Variant
  loc_E6A69F: If (CLng(CInt(Me.sckControlPanel.State)) <> 0) Then
  loc_E6A6AC:   sckControlPanel_UnknownEvent_C6 = Me.sckControlPanel._RemoteHost
  loc_E6A6C2:   Set var_88 = Me.sckControlPanel
  loc_E6A6D3: End If
  loc_E6A6D3: Exit Sub
End Sub

Private Sub sckControlPanel_UnknownEvent_D 'E67BC0
  'Data Table: 5C8378
  Dim sckControlPanel_UnknownEvent_D6 As Variant
  Dim sckControlPanel_UnknownEvent_D1 As Variant
  loc_E67B8F: If (CLng(CInt(Me.sckControlPanel.State)) <> &H2749) Then
  loc_E67B9C:   sckControlPanel_UnknownEvent_D6 = Me.sckControlPanel._RemoteHost
  loc_E67BB1:   sckControlPanel_UnknownEvent_D1 = Me.sckControlPanel._RemoteHost
  loc_E67BBC: End If
  loc_E67BBC: Exit Sub
End Sub

Private Sub Reload_UnknownEvent_9 'EB8074
  'Data Table: 5C8378
  Dim var_B4 As String
  Dim var_94 As String
  Dim var_108 As Variant
  loc_EB7FEA: var_B4 = "Re-Start Application"
  loc_EB7FFA: var_94 = "Are you sure to Re Start Application ?"
  loc_EB801B: If (MsgBox(var_94, &H24, var_B4, var_E4, var_104) = 6) Then
  loc_EB802B:   Me.Global.Unload Me
  loc_EB8041:   Call 0.Method_arg_2B0 (var_94)
  loc_EB8057:   Set var_108 = MemVar_1F926C8.txt
  loc_EB805D:   Call 0.Method_Reload_UnknownEvent_90 (0, var_10C)
  loc_EB8065:   frmCompany.txt.Text = MemVar_1F920C8
  loc_EB8071: End If
  loc_EB8071: Exit Sub
End Sub

Private Sub mnuWindowTileVertical_Click() 'E08E80
  'Data Table: 5C8378
  loc_E08E79: Call 0.Method_arg_2EC (CInt(2))
  loc_E08E7E: Exit Sub
End Sub

Private Sub MDIForm_Load() '1425814
  'Data Table: 5C8378
  Dim var_B4 As Long
  Dim var_A4 As Long
  Dim var_B0 As Long
  Dim var_A8 As Long
  Dim MemVar_1F9B698 As Global
  Dim var_D4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_BC As String
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim unk_5C83B4 As Connection15
  Dim unk_5C8400 As Connection15
  Dim var_9C As Recordset15
  Dim MemVar_1F9216C As String
  Dim var_90 As Recordset15
  Dim var_150 As Integer
  Dim var_13C As Variant
  Dim var_158 As Panel
  Dim MemVar_1F9220C As String
  Dim var_104 As Boolean
  loc_1424DA8: On Error Resume Next
  loc_1424DB3: Call 0.Method_arg_58 (var_B0)
  loc_1424DC3: var_B4 = GetSystemMenu(var_B0, CLng(0))
  loc_1424DCA: var_A4 = var_B4
  loc_1424DD4: If CBool(var_A4) Then
  loc_1424DE1:   var_B0 = GetMenuItemCount(var_A4)
  loc_1424DE8:   var_A8 = var_B0
  loc_1424DFE:   RemoveMenu(var_A4, (var_A8 - 1), &H1400)
  loc_1424E17:   RemoveMenu(var_A4, (var_A8 - 2), &H1400)
  loc_1424E25:   Call 0.Method_arg_58 (var_B0, var_A8, var_B0)
  loc_1424E2D:   DrawMenuBar(var_B0)
  loc_1424E33: End If
  loc_1424E46: var_B8 = MemVar_1F9B698.App
  loc_1424E63: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\Hotel.bmp", var_C2)
  loc_1424E78: If (var_C2 = &HFF) Then
  loc_1424E9C:   var_B8 = Me.Global.App
  loc_1424EBA:   Me.Global.LoadPicture CVar(App.Path & "\Pic\Hotel.bmp"), var_E4, var_F4, var_104, var_114
  loc_1424ECB:   Call 0.Method_arg_154 (var_118, var_118)
  loc_1424EDD: End If
  loc_1424EF0: Me.PictMainMenu.BackColor = &HFFFFFF
  loc_1424EFF: var_94 = &H20
  loc_1424F1E: var_98 = CStr(String(var_94, "X"))
  loc_1424F37: GetComputerName(var_98, var_94)
  loc_1424F61: var_98 = CStr(Left(var_98, var_94))
  loc_1424F9B: If (Ucase(Left(MemVar_1F92130, 8)) = "ANALYSIS") Then
  loc_1424FAD:   Me.LblCompany.Caption = MemVar_1F92130
  loc_1424FB8: Else
  loc_1424FC3:   var_BC = MemVar_1F92130 & " { "
  loc_1424FDE:   Me.LblCompany.Caption = var_BC & MemVar_1F92014 & " }"
  loc_1424FEF: End If
  loc_1425006: Me.sbar.Height = CVar(CDbl(400))
  loc_1425016: Call 0.Method_arg_78 (var_B4, StrConv(var_98, vbUnicode), var_BC)
  loc_1425025: var_D4 = Me.sbar.Height
  loc_1425034: Call 0.Method_Me8 (var_B0, var_D4, var_94)
  loc_1425046: var_E4 = CVar(((var_B0 - var_B4) + CDbl(var_D4))) 'Single
  loc_1425055: Me.sbar.Top = CVar(CDbl(400))
  loc_142506C: var_12C = 1
  loc_1425075: Set var_B8 = Me.sbar
  loc_142507B: var_D4 = var_B8.Panels
  loc_142508C: var_12C = var_D4.ControlDefault
  loc_1425094: var_11C.Text = var_11C
  loc_14250C8: Proc_6_17_EAA2B0(var_D4, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_13C, -1)
  loc_14250DE: unk_5C83B4.Execute CStr(var_B8 & var_D4), MemVar_1F920C8, var_A4
  loc_14250E9: Set var_90 = var_B8
  loc_1425113: unk_5C8400.Execute "Select * from Enviro", var_D4, -1
  loc_142511E: Set var_9C = var_B8
  loc_1425138: var_B8 = var_9C.Fields
  loc_1425151: MemVar_1F9216C = Proc_6_38_E68A98(CVar(var_B8.Item("ChannelManagerYN")), var_B8)
  loc_1425171: If (var_90.RecordCount > 0) Then
  loc_14251A9:   var_BC = CStr("S/w Dt.:" & var_90.Fields.Item("Ncur").Value)
  loc_14251B0:   var_150 = 3
  loc_14251D0:   var_150 = Me.sbar.Panels.ControlDefault
  loc_14251D8:   var_158.Text = var_158
  loc_1425233:   If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("SMSFeatureYN")), var_BC) = "Yes") Then
  loc_1425278:     If (Ucase(CVar(var_9C.Fields.Item("SMSFeatureYN"))) = "YES") Then
  loc_1425289:       Me.SMSJobTimer.Enabled = True
  loc_142529F:       Me.SMSTimer.Enabled = True
  loc_14252A7:     End If
  loc_14252A7:   End If
  loc_14252B3:   If (MemVar_1F9216C = "Yes") Then
  loc_14252C4:     Me.Timer2.Enabled = True
  loc_14252CC:   End If
  loc_1425309:   If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("AutoPrintKOTYN")), MemVar_1F9216C) = "Yes") Then
  loc_142534E:     If (Ucase(CVar(var_9C.Fields.Item("AutoPrintKOTYN"))) = "YES") Then
  loc_142535F:       Me.Print_KOT_Timer.Enabled = True
  loc_1425367:     End If
  loc_1425367:   End If
  loc_1425369: End If
  loc_142539B: var_F4 = "YES"
  loc_14253AD: If (Ucase(CVar(var_9C.Fields.Item("TouchScreen"))) = var_F4) Then
  loc_14253BE:   Me.PictTitleBar.Visible = True
  loc_14253CB:   var_E4 = "TouchScreen"
  loc_14253DF:   var_118 = var_9C.Fields.Item(var_E4)
  loc_14253F0:   MemVar_1F9220C = Proc_6_38_E68A98(CVar(var_118))
  loc_14253FA: End If
  loc_142540D: var_B8 = MemVar_1F9B698.App
  loc_142542A: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\Hotellogo.bmp", var_C2)
  loc_142543F: If (var_C2 = &HFF) Then
  loc_1425463:   var_B8 = Me.Global.App
  loc_1425481:   Me.Global.LoadPicture CVar(App.Path & "\Pic\Hotellogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_1425496:   Me.ImgLogo.Picture = var_118
  loc_14254AA: End If
  loc_14254BA: var_B8 = MemVar_1F9B698.App
  loc_14254D3: var_118 = Me.Global.App
  loc_14254EC: var_11C = Me.Global.App
  loc_142550C: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\DelarLogo.bmp", var_C2, var_118)
  loc_1425517: var_104 = (var_C2 = &HFF)
  loc_142553C: var_E4 = "PROHMS"
  loc_1425567: var_F4 = "SWAGAT"
  loc_142559C: If CBool(var_104 And (Ucase(Left(CVar(App.EXEName), 6)) = var_E4) Or (Ucase(Left(CVar(App.EXEName), 6)) = var_F4)) Then
  loc_14255C0:   var_B8 = Me.Global.App
  loc_14255DE:   Me.Global.LoadPicture CVar(App.Path & "\Pic\DelarLogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_14255F3:   Me.DealerLogo.Picture = var_118
  loc_1425607: End If
  loc_1425617: var_B8 = MemVar_1F9B698.App
  loc_1425630: var_118 = Me.Global.App
  loc_1425649: var_11C = Me.Global.App
  loc_1425669: Call 0.Method_MDIForm_Load4 (App.Path & "\Pic\DealerLogo.bmp", var_C2, var_118)
  loc_1425674: var_104 = (var_C2 = &HFF)
  loc_1425699: var_E4 = "PROHMS"
  loc_14256C4: var_F4 = "SWAGAT"
  loc_14256F9: If CBool(var_104 And (Ucase(Left(CVar(App.EXEName), 6)) = var_E4) Or (Ucase(Left(CVar(App.EXEName), 6)) = var_F4)) Then
  loc_142571D:   var_B8 = Me.Global.App
  loc_142573B:   Me.Global.LoadPicture CVar(App.Path & "\Pic\DealerLogo.bmp"), var_E4, var_F4, var_104, var_114
  loc_1425750:   Me.DealerLogo.Picture = var_118
  loc_1425764: End If
  loc_1425778: Set var_B8 = Me.LblCalender
  loc_142577E: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Date)
  loc_142578B: Call Timer1_Timer()
  loc_14257B0: If (Ucase(MemVar_1F920C8) = "SA") Then
  loc_14257C1:   Me.Timer1.Enabled = False
  loc_14257C9: End If
  loc_14257CB: Call Proc_1_118_11821FC(var_118, MemVar_1F9220C)
  loc_14257D2: Call Proc_1_120_1208AAC(var_B4)
  loc_14257DE: global_100 = 0
  loc_14257E6: MemVar_1F9221C = "Analysis Software"
  loc_14257EF: MemVar_1F92220 = "Analysis Software"
  loc_14257FA: Set var_A0 = Nothing
  loc_1425804: Set var_A0 = Nothing
  loc_142580E: Set var_90 = Nothing
  loc_1425813: Exit Sub
End Sub

Private Sub MDIForm_Resize() '11529B4
  'Data Table: 5C8378
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  loc_115260E: Me.LblCompany.Left = CDbl(0)
  loc_1152623: var_8C = Me.PictSubMenu.ScaleWidth
  loc_1152635: Me.LblCompany.Width = var_8C
  loc_1152641: Call Proc_1_116_12B3E7C()
  loc_1152661: If (Me.PictShortCuts.Visible = &HFF) Then
  loc_1152676:   Me.TreeView1.Left = CVar(CDbl(0))
  loc_1152690:   Me.TreeView1.Top = CVar(CDbl(0))
  loc_11526AA:   Me.ListView1.Left = CVar(CDbl(0))
  loc_11526C4:   Me.ListView1.Top = CVar(CDbl(0))
  loc_11526DE:   Me.mnuGrid.Left = CVar(CDbl(0))
  loc_11526EC:   Call 0.Method_arg_108 (var_8C)
  loc_11526F8:   If (var_8C > CDbl(0)) Then
  loc_1152704:     Call 0.Method_arg_108 (var_8C)
  loc_115271B:     If (CDbl((global_108 * &H64)) > CDbl(var_8C)) Then
  loc_1152727:       Call 0.Method_arg_108 (var_8C)
  loc_1152741:       global_114 = CInt((CDbl((global_108 * &H64)) / var_8C))
  loc_1152744:     End If
  loc_1152751:     var_A4 = CVar(CDbl((global_108 - &H32))) 'Single
  loc_1152760:     Me.TreeView1.Height = CVar(CDbl(0))
  loc_1152775:     var_A4 = CVar(CDbl((global_108 - &H32))) 'Single
  loc_1152784:     Me.ListView1.Height = CVar(CDbl(0))
  loc_11527BC:     var_A4 = CVar(((CDbl(Me.ListView1.Top) + CDbl(Me.ListView1.Height)) + CDbl(&H32))) 'Single
  loc_11527CB:     Me.mnuGrid.Top = CVar(CDbl(0))
  loc_11527EA:     var_C4 = Me.ListView1.Height
  loc_11527FC:     Call 0.Method_arg_108 (var_8C, var_C4)
  loc_1152819:     If (CSng(((var_8C - CDbl(var_C4)) - CDbl(&H32))) <= CDbl(0)) Then
  loc_115281C:       GoTo loc_115286B
  loc_115281F:     End If
  loc_1152829:     var_C4 = Me.ListView1.Height
  loc_115283B:     Call 0.Method_arg_108 (var_8C, var_C4)
  loc_115284D:     var_A4 = CVar(((var_8C - CDbl(var_C4)) - CDbl(&H32))) 'Single
  loc_115285C:     Me.mnuGrid.Height = CVar(CDbl(0))
  loc_115286B:     ' Referenced from: 115281C
  loc_1152872:     Set var_88 = Me.PictShortCuts
  loc_1152884:     var_A4 = CVar((MDIForm1.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_1152893:     Me.ListView1.Width = CVar(CDbl(0))
  loc_11528B8:     var_A4 = CVar((Me.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_11528C7:     Me.TreeView1.Width = CVar(CDbl(0))
  loc_11528EC:     var_A4 = CVar((Me.PictShortCuts.Width - CDbl(&H32))) 'Single
  loc_11528FB:     Me.mnuGrid.Width = CVar(CDbl(0))
  loc_1152907:     var_A4 = 1
  loc_1152929:     var_E8 = CVar(CLng((CDbl(Me.mnuGrid.Width) - CDbl(325)))) 'Long
  loc_1152932:     Set var_90 = Me.mnuGrid
  loc_1152938:     LateIdCallSt
  loc_115294A:   End If
  loc_1152966:   If (CBool(Me.mnuGrid.Visible) = &HFF) Then
  loc_115298B:     Me.Picture3.Left = (CDbl(Me.mnuGrid.Width) + CDbl(&H50))
  loc_115299D:   Else
  loc_11529AB:     Me.Picture3.Left = CDbl(0)
  loc_11529B3:   End If
  loc_11529B3: End If
  loc_11529B3: Exit Sub
End Sub

Private Sub MDIForm_Unload(Cancel As Integer) 'E54674
  'Data Table: 5C8378
  Dim MemVar_1F92030(CLng(var_86)) As Connection15
  Dim unk_5C83B4 As Connection15
  Dim unk_5C8400 As Connection15
  Dim var_B0 As Long
  loc_E5463C: For var_8A = 1 To MemVar_1F92040: var_86 = var_8A 'Integer
  loc_E5464D:   MemVar_1F92030(CLng(var_86)).Close
  loc_E54655: Next var_8A 'Integer
  loc_E54660: unk_5C83B4.Close
  loc_E5466B: unk_5C8400.Close
  loc_E54670: Exit Sub
  loc_E54671: var_B0 = 
End Sub

Private Sub MDIForm_UnknownEvent_13 'EEFCF0
  'Data Table: 5C8378
  loc_EEFC3A: If (((CLng(Cancel) = 2) And (CLng(arg_10) = 2)) And (MemVar_1F920C8 = "SA")) Then
  loc_EEFC55:   Call 0.Method_arg_2BC (Me.mnuMdI, var_9C, var_AC)
  loc_EEFC5D: End If
  loc_EEFC7B: If (((CLng(Cancel) = 1) And (CLng(arg_10) = 2)) And (MemVar_1F920C8 = "SA")) Then
  loc_EEFC8C:   Call 0.Method_arg_2B0 (var_9C, var_AC)
  loc_EEFC91: End If
  loc_EEFCAF: If (((CLng(Cancel) = 2) And (CLng(arg_10) = 4)) And (MemVar_1F920C8 = "SA")) Then
  loc_EEFCBA:   Call 0.Method_arg_1BC (&HFF, var_BC)
  loc_EEFCE2:   Call 0.Method_Me4 ((CDbl(MemVar_1F93664.FGrid1.Width) + CDbl(&HA)))
  loc_EEFCED: End If
  loc_EEFCED: Exit Sub
End Sub

Private Sub PP_Click(Index As Integer) '13B858C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C8 As Integer
  Dim var_100 As Integer
  Dim var_A4 As Variant
  Dim var_14C As Integer
  Dim var_188 As Variant
  Dim var_1A8 As Integer
  Dim var_1E0 As Variant
  Dim var_200 As Integer
  Dim var_238 As Variant
  Dim var_258 As Integer
  Dim var_290 As Variant
  Dim var_2B0 As Integer
  Dim var_2E8 As Variant
  Dim var_308 As Integer
  Dim var_340 As Variant
  Dim var_360 As Integer
  Dim var_3EC As Variant
  loc_13B7D27: var_B4 = CVar("PP" & "+") 'String
  loc_13B7D42: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13B7D58: Call 0.Method_arg_A4 (CInt(&HB))
  loc_13B7D60: var_C8 = Index
  loc_13B7D69: If (var_C8 = 0) Then
  loc_13B7D7B:   var_CC = Me.Global.Screen
  loc_13B7D83:   var_D0 = Screen.ActiveForm
  loc_13B7D93:   var_94 = Form.ActiveControl.Row
  loc_13B7D99:   var_100 = 15
  loc_13B7DAE:   var_D8 = Me.Global.Screen
  loc_13B7DB6:   var_DC = Screen.ActiveForm
  loc_13B7DE9:   var_118 = Me.Global.Screen
  loc_13B7DF1:   var_11C = Screen.ActiveForm
  loc_13B7E01:   var_B4 = Form.ActiveControl.Row
  loc_13B7E07:   var_14C = 13
  loc_13B7E1C:   var_124 = Me.Global.Screen
  loc_13B7E24:   var_128 = Screen.ActiveForm
  loc_13B7E57:   var_164 = Me.Global.Screen
  loc_13B7E5F:   var_168 = Screen.ActiveForm
  loc_13B7E6F:   var_188 = Form.ActiveControl.Row
  loc_13B7E75:   var_1A8 = 16
  loc_13B7E8A:   var_170 = Me.Global.Screen
  loc_13B7E92:   var_174 = Screen.ActiveForm
  loc_13B7EBB:   var_1BC = Me.Global.Screen
  loc_13B7EC3:   var_1C0 = Screen.ActiveForm
  loc_13B7ED3:   var_1E0 = Form.ActiveControl.Row
  loc_13B7ED9:   var_200 = 17
  loc_13B7EEE:   var_1C8 = Me.Global.Screen
  loc_13B7EF6:   var_1CC = Screen.ActiveForm
  loc_13B7F1F:   var_214 = Me.Global.Screen
  loc_13B7F27:   var_218 = Screen.ActiveForm
  loc_13B7F37:   var_238 = Form.ActiveControl.Row
  loc_13B7F3D:   var_258 = 1
  loc_13B7F52:   var_220 = Me.Global.Screen
  loc_13B7F5A:   var_224 = Screen.ActiveForm
  loc_13B7F83:   var_26C = Me.Global.Screen
  loc_13B7F8B:   var_270 = Screen.ActiveForm
  loc_13B7F9B:   var_290 = Form.ActiveControl.Row
  loc_13B7FA1:   var_2B0 = 14
  loc_13B7FB6:   var_278 = Me.Global.Screen
  loc_13B7FBE:   var_27C = Screen.ActiveForm
  loc_13B7FE7:   var_2C4 = Me.Global.Screen
  loc_13B7FEF:   var_2C8 = Screen.ActiveForm
  loc_13B7FFF:   var_2E8 = Form.ActiveControl.Row
  loc_13B8005:   var_308 = 18
  loc_13B801A:   var_2D0 = Me.Global.Screen
  loc_13B8022:   var_2D4 = Screen.ActiveForm
  loc_13B804B:   var_31C = Me.Global.Screen
  loc_13B8053:   var_320 = Screen.ActiveForm
  loc_13B8063:   var_340 = Form.ActiveControl.Row
  loc_13B8069:   var_360 = 19
  loc_13B807E:   var_328 = Me.Global.Screen
  loc_13B8086:   var_32C = Screen.ActiveForm
  loc_13B8096:   var_3EC = Form.ActiveControl.TextMatrix
  loc_13B80DC:   Proc_96_23_1C33AEC(MemVar_1F920EC, CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix))
  loc_13B817D: Else
  loc_13B8183:   If (var_C8 = 1) Then
  loc_13B8195:     var_CC = Me.Global.Screen
  loc_13B819D:     var_D0 = Screen.ActiveForm
  loc_13B81C6:     If (Form.ActiveControl.rows > 1) Then
  loc_13B81DF:       var_CC = Me.Global.Screen
  loc_13B81E7:       var_D0 = Screen.ActiveForm
  loc_13B8201:       var_A4 = (Form.ActiveControl.rows - 1)
  loc_13B8213:       For var_404 = CByte(1) To CByte(Form.ActiveControl.TextMatrix):   var_C6 = var_404 'Byte
  loc_13B8220:         var_100 = 17
  loc_13B8235:         var_CC = Me.Global.Screen
  loc_13B823D:         var_D0 = Screen.ActiveForm
  loc_13B8278:         If CBool(Trim(Form.ActiveControl.TextMatrix) <> vbNullString) Then
  loc_13B8282:           var_100 = 15
  loc_13B8297:           var_CC = Me.Global.Screen
  loc_13B829F:           var_D0 = Screen.ActiveForm
  loc_13B82CA:           var_14C = 13
  loc_13B82DF:           var_D8 = Me.Global.Screen
  loc_13B82E7:           var_DC = Screen.ActiveForm
  loc_13B8312:           var_1A8 = 16
  loc_13B8327:           var_118 = Me.Global.Screen
  loc_13B832F:           var_11C = Screen.ActiveForm
  loc_13B8350:           var_200 = 17
  loc_13B8365:           var_124 = Me.Global.Screen
  loc_13B836D:           var_128 = Screen.ActiveForm
  loc_13B838E:           var_258 = 1
  loc_13B83A3:           var_164 = Me.Global.Screen
  loc_13B83AB:           var_168 = Screen.ActiveForm
  loc_13B83CC:           var_2B0 = 14
  loc_13B83E1:           var_170 = Me.Global.Screen
  loc_13B83E9:           var_174 = Screen.ActiveForm
  loc_13B8412:           var_1BC = Me.Global.Screen
  loc_13B841A:           var_1C0 = Screen.ActiveForm
  loc_13B842A:           var_B4 = Form.ActiveControl.Row
  loc_13B8430:           var_308 = 18
  loc_13B8445:           var_1C8 = Me.Global.Screen
  loc_13B844D:           var_1CC = Screen.ActiveForm
  loc_13B8476:           var_214 = Me.Global.Screen
  loc_13B847E:           var_218 = Screen.ActiveForm
  loc_13B848E:           var_C4 = Form.ActiveControl.Row
  loc_13B8494:           var_360 = 19
  loc_13B84A9:           var_220 = Me.Global.Screen
  loc_13B84B1:           var_224 = Screen.ActiveForm
  loc_13B84C1:           var_340 = Form.ActiveControl.TextMatrix
  loc_13B8507:           Proc_96_23_1C33AEC(MemVar_1F920EC, CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CLng(Val(CStr(Form.ActiveControl.TextMatrix))), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix), CStr(Form.ActiveControl.TextMatrix))
  loc_13B8575:         End If
  loc_13B8578:       Next var_404 'Byte
  loc_13B857E:     End If
  loc_13B857E:   End If
  loc_13B857E: End If
  loc_13B8585: Call 0.Method_arg_A4 (CInt(0))
  loc_13B858A: Exit Sub
End Sub

Private Sub FAREPORT_Click(Index As Integer) '12A54F8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_DA As Integer
  Dim var_E2 As Integer
  Dim var_114 As Variant
  Dim var_128 As Menu
  loc_12A4EE7: var_B4 = CVar("FAREPORT" & "+") 'String
  loc_12A4EFD: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_12A4F02: MemVar_1F92200 = CStr(var_C4)
  loc_12A4F11: On Error Goto loc_12A54B1
  loc_12A4F17: var_DA = Index
  loc_12A4F20: If Not (var_DA = 0) Then
  loc_12A4F29:   If Not (var_DA = 3) Then
  loc_12A4F32:     If Not (var_DA = 4) Then
  loc_12A4F3B:       If Not (var_DA = 5) Then
  loc_12A4F44:         If Not (var_DA = 6) Then
  loc_12A4F4D:           If Not (var_DA = 7) Then
  loc_12A4F56:             If Not (var_DA = &HA) Then
  loc_12A4F5F:               If Not (var_DA = &HD) Then
  loc_12A4F68:                 If Not (var_DA = &HE) Then
  loc_12A4F71:                   If Not (var_DA = &HF) Then
  loc_12A4F7A:                     If Not (var_DA = &H16) Then
  loc_12A4F83:                       If Not (var_DA = &H17) Then
  loc_12A4F8C:                         If Not (var_DA = &H18) Then
  loc_12A4F95:                           If Not (var_DA = &H19) Then
  loc_12A4F9E:                             If Not (var_DA = &H1B) Then
  loc_12A4FA7:                               If Not (var_DA = &H1D) Then
  loc_12A4FB0:                                 If Not (var_DA = &H1E) Then
  loc_12A4FB9:                                   If Not (var_DA = &H1F) Then
  loc_12A4FC2:                                     If Not (var_DA = &H20) Then
  loc_12A4FCB:                                       If Not (var_DA = &H21) Then
  loc_12A4FD4:                                         If Not (var_DA = &H22) Then
  loc_12A4FDD:                                           If (var_DA = &H23) Then
  loc_12A4FE0:                                           End If
  loc_12A4FE0:                                         End If
  loc_12A4FE0:                                       End If
  loc_12A4FE0:                                     End If
  loc_12A4FE0:                                   End If
  loc_12A4FE0:                                 End If
  loc_12A4FE0:                               End If
  loc_12A4FE0:                             End If
  loc_12A4FE0:                           End If
  loc_12A4FE0:                         End If
  loc_12A4FE0:                       End If
  loc_12A4FE0:                     End If
  loc_12A4FE0:                   End If
  loc_12A4FE0:                 End If
  loc_12A4FE0:               End If
  loc_12A4FE0:             End If
  loc_12A4FE0:           End If
  loc_12A4FE0:         End If
  loc_12A4FE0:       End If
  loc_12A4FE0:     End If
  loc_12A4FE0:   End If
  loc_12A4FEA:   global_52 = New FaReports
  loc_12A4FF4:   var_E2 = Index
  loc_12A4FFD:   If (var_E2 = 0) Then
  loc_12A500C:     global_52.GRepFormName = "DayBook"
  loc_12A5013:   Else
  loc_12A5019:     If (var_E2 = 3) Then
  loc_12A5028:       global_52.GRepFormName = "Led"
  loc_12A5036:       VarLateMemLdRfVar
  loc_12A503C:       global_52.Visible = True
  loc_12A5046:     Else
  loc_12A504C:       If (var_E2 = 4) Then
  loc_12A505B:         global_52.GRepFormName = "LedInt"
  loc_12A505F:         var_114 = False
  loc_12A5070:         VarLateMemCallLdRfVar
  loc_12A5078:         global_52.Visible = 1
  loc_12A5089:         VarLateMemLdRfVar
  loc_12A508F:         global_52.Visible = True
  loc_12A5099:       Else
  loc_12A509F:         If (var_E2 = 5) Then
  loc_12A50AE:           global_52.GRepFormName = "CashBook"
  loc_12A50B5:         Else
  loc_12A50BB:           If (var_E2 = 6) Then
  loc_12A50CA:             global_52.GRepFormName = "BankBook"
  loc_12A50D1:           Else
  loc_12A50D7:             If (var_E2 = 7) Then
  loc_12A50E6:               global_52.GRepFormName = "JournalBook"
  loc_12A50ED:             Else
  loc_12A50F3:               If (var_E2 = &HA) Then
  loc_12A5102:                 global_52.GRepFormName = "Annexure"
  loc_12A5109:               Else
  loc_12A510F:                 If (var_E2 = &HD) Then
  loc_12A511E:                   global_52.GRepFormName = "BankReg"
  loc_12A5122:                   var_114 = False
  loc_12A5133:                   VarLateMemCallLdRfVar
  loc_12A513B:                   global_52.Visible = 1
  loc_12A5145:                 Else
  loc_12A514B:                   If (var_E2 = &HE) Then
  loc_12A515A:                     global_52.GRepFormName = "AgingDr"
  loc_12A515E:                     var_114 = False
  loc_12A516F:                     VarLateMemCallLdRfVar
  loc_12A5177:                     global_52.Visible = 1
  loc_12A5181:                   Else
  loc_12A5187:                     If (var_E2 = &HF) Then
  loc_12A5196:                       global_52.GRepFormName = "AgingCr"
  loc_12A519A:                       var_114 = False
  loc_12A51AB:                       VarLateMemCallLdRfVar
  loc_12A51B3:                       global_52.Visible = 1
  loc_12A51BD:                     Else
  loc_12A51C3:                       If (var_E2 = &H16) Then
  loc_12A51D2:                         global_52.GRepFormName = "Clg"
  loc_12A51D6:                         var_114 = False
  loc_12A51E7:                         VarLateMemCallLdRfVar
  loc_12A51EF:                         global_52.Visible = 1
  loc_12A51F9:                       Else
  loc_12A51FF:                         If (var_E2 = &H17) Then
  loc_12A520E:                           global_52.GRepFormName = "ClgNot"
  loc_12A5212:                           var_114 = False
  loc_12A5223:                           VarLateMemCallLdRfVar
  loc_12A522B:                           global_52.Visible = 1
  loc_12A5235:                         Else
  loc_12A523B:                           If (var_E2 = &H18) Then
  loc_12A524A:                             global_52.GRepFormName = "LedDeb"
  loc_12A524E:                             var_114 = "Letter"
  loc_12A5260:                             VarLateMemCallLdRfVar
  loc_12A5268:                             global_52.CAPTION = 1
  loc_12A5279:                             VarLateMemLdRfVar
  loc_12A527F:                             global_52.Visible = True
  loc_12A5289:                           Else
  loc_12A528F:                             If (var_E2 = &H19) Then
  loc_12A529E:                               global_52.GRepFormName = "LedCred"
  loc_12A52A2:                               var_114 = False
  loc_12A52B3:                               VarLateMemCallLdRfVar
  loc_12A52BB:                               global_52.Visible = 1
  loc_12A52CC:                               VarLateMemLdRfVar
  loc_12A52D2:                               global_52.Visible = True
  loc_12A52DC:                             Else
  loc_12A52E2:                               If (var_E2 = &H1B) Then
  loc_12A52F1:                                 global_52.GRepFormName = "DailySumm"
  loc_12A52F8:                               Else
  loc_12A52FE:                                 If (var_E2 = &H1D) Then
  loc_12A530D:                                   global_52.GRepFormName = "NonTrans"
  loc_12A5311:                                   var_114 = False
  loc_12A5322:                                   VarLateMemCallLdRfVar
  loc_12A532A:                                   global_52.Visible = 1
  loc_12A5334:                                 Else
  loc_12A533A:                                   If (var_E2 = &H1E) Then
  loc_12A5349:                                     global_52.GRepFormName = "RefReport"
  loc_12A534D:                                     var_114 = False
  loc_12A535E:                                     VarLateMemCallLdRfVar
  loc_12A5366:                                     global_52.Visible = 1
  loc_12A5370:                                   Else
  loc_12A5376:                                     If (var_E2 = &H1F) Then
  loc_12A5385:                                       global_52.GRepFormName = "DetailedTrial"
  loc_12A5389:                                       var_114 = False
  loc_12A539A:                                       VarLateMemCallLdRfVar
  loc_12A53A2:                                       global_52.Visible = 1
  loc_12A53AC:                                     Else
  loc_12A53B2:                                       If (var_E2 = &H20) Then
  loc_12A53C1:                                         global_52.GRepFormName = "AcCheckList"
  loc_12A53CF:                                         VarLateMemLdRfVar
  loc_12A53D5:                                         global_52.Visible = True
  loc_12A53DF:                                       Else
  loc_12A53E5:                                         If (var_E2 = &H21) Then
  loc_12A53F4:                                           global_52.GRepFormName = "DUELIST"
  loc_12A53F8:                                           var_114 = True
  loc_12A5408:                                           VarLateMemCallLdRfVar
  loc_12A5410:                                           global_52.Visible = 1
  loc_12A541A:                                         Else
  loc_12A5420:                                           If (var_E2 = &H22) Then
  loc_12A542F:                                             global_52.GRepFormName = "CONTROLLED"
  loc_12A5436:                                           Else
  loc_12A543C:                                             If (var_E2 = &H23) Then
  loc_12A544B:                                               global_52.GRepFormName = "RozNamcha"
  loc_12A544F:                                             End If
  loc_12A544F:                                           End If
  loc_12A544F:                                         End If
  loc_12A544F:                                       End If
  loc_12A544F:                                     End If
  loc_12A544F:                                   End If
  loc_12A544F:                                 End If
  loc_12A544F:                               End If
  loc_12A544F:                             End If
  loc_12A544F:                           End If
  loc_12A544F:                         End If
  loc_12A544F:                       End If
  loc_12A544F:                     End If
  loc_12A544F:                   End If
  loc_12A544F:                 End If
  loc_12A544F:               End If
  loc_12A544F:             End If
  loc_12A544F:           End If
  loc_12A544F:         End If
  loc_12A544F:       End If
  loc_12A544F:     End If
  loc_12A544F:   End If
  loc_12A545C:   Set var_E0 = Me.FAREPORT
  loc_12A5462:   Call 0.Method_FAREPORT_Click0 (Index, var_128, var_12C, var_114, var_114, var_114, var_114)
  loc_12A546A:   var_114 = var_128.Caption
  loc_12A548C:   var_94 = CVar(Replace(var_12C, "&", vbNullString, 1, -1, 0)) 'String
  loc_12A5496:   global_52.CAPTION = CVar(CStr(Index))
  loc_12A54A7: End If
  loc_12A54AC: global_52 = Nothing
  loc_12A54B0: Exit Sub
  loc_12A54B1: ' Referenced from: 12A4F11
  loc_12A54B9: Set var_E0 = Err()
  loc_12A54BF: Call 0.Method_arg_2C (var_12C, var_114, var_114, var_114)
  loc_12A54E0: MsgBox(CVar(var_12C), &H40, "Information", var_B4, var_C4)
  loc_12A54F3: Exit Sub
  loc_12A54F4: Exit Sub
End Sub

Private Sub BanqRep_Click(Index As Integer) '12BE378
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_12BDD23: var_B4 = CVar("BanqRep" & "+") 'String
  loc_12BDD3E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_12BDD5A: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_12BDD6A: Call 0.Method_arg_1C4 (var_CC & "BANQ")
  loc_12BDD79: var_D2 = Index
  loc_12BDD82: If (var_D2 = 0) Then
  loc_12BDD8F:   global_52 = New rHallRepView
  loc_12BDDA2:   global_52.GRepFormName = "SalesRegister"
  loc_12BDDB3:   Set var_D8 = var_FC(Index)
  loc_12BDDB9:   Call 0.Method_BanqRep_Click0 (var_CC, var_D2)
  loc_12BDDC1:   MemVar_1F92200 = global_52.Menu.Caption
  loc_12BDDD3:   global_52.CAPTION = CVar(var_CC)
  loc_12BDDE9:   Call global_52.Show
  loc_12BDDF2: Else
  loc_12BDDF8:   If (var_D2 = 1) Then
  loc_12BDE05:     global_52 = New rHallRepView
  loc_12BDE18:     global_52.GRepFormName = "PartyOutStanding"
  loc_12BDE29:     Set var_D8 = var_FC(Index)
  loc_12BDE2F:     Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BDE37:      = global_52.Menu.Caption
  loc_12BDE49:     global_52.CAPTION = CVar(var_CC)
  loc_12BDE5F:     Call global_52.Show
  loc_12BDE68:   Else
  loc_12BDE6E:     If (var_D2 = 2) Then
  loc_12BDE7B:       global_52 = New rHallRepView
  loc_12BDE8E:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_12BDE9F:       Set var_D8 = var_FC(Index)
  loc_12BDEA5:       Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BDEAD:        = global_52.Menu.Caption
  loc_12BDEBF:       global_52.CAPTION = CVar(var_CC)
  loc_12BDED5:       Call global_52.Show
  loc_12BDEDE:     Else
  loc_12BDEE4:       If (var_D2 = 3) Then
  loc_12BDEF1:         global_52 = New rHallRepView
  loc_12BDF04:         global_52.GRepFormName = "CashierCollection"
  loc_12BDF15:         Set var_D8 = var_FC(Index)
  loc_12BDF1B:         Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BDF23:          = global_52.Menu.Caption
  loc_12BDF35:         global_52.CAPTION = CVar(var_CC)
  loc_12BDF4B:         Call global_52.Show
  loc_12BDF54:       Else
  loc_12BDF5A:         If (var_D2 = 4) Then
  loc_12BDF67:           global_52 = New rHallRepView
  loc_12BDF7A:           global_52.GRepFormName = "BookingDetail"
  loc_12BDF8B:           Set var_D8 = var_FC(Index)
  loc_12BDF91:           Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BDF99:            = global_52.Menu.Caption
  loc_12BDFAB:           global_52.CAPTION = CVar(var_CC)
  loc_12BDFC1:           Call global_52.Show
  loc_12BDFCA:         Else
  loc_12BDFD0:           If (var_D2 = 5) Then
  loc_12BDFDD:             global_52 = New rHallRepView
  loc_12BDFF0:             global_52.GRepFormName = "SettleRepHall"
  loc_12BE001:             Set var_D8 = var_FC(Index)
  loc_12BE007:             Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE00F:              = global_52.Menu.Caption
  loc_12BE021:             global_52.CAPTION = CVar(var_CC)
  loc_12BE037:             Call global_52.Show
  loc_12BE040:           Else
  loc_12BE046:             If (var_D2 = 6) Then
  loc_12BE053:               global_52 = New rHallRepView
  loc_12BE066:               global_52.GRepFormName = "TaxReportHall"
  loc_12BE077:               Set var_D8 = var_FC(Index)
  loc_12BE07D:               Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE085:                = global_52.Menu.Caption
  loc_12BE097:               global_52.CAPTION = CVar(var_CC)
  loc_12BE0AD:               Call global_52.Show
  loc_12BE0B6:             Else
  loc_12BE0BC:               If (var_D2 = 7) Then
  loc_12BE0C9:                 global_52 = New rHallRepView
  loc_12BE0DC:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_12BE0ED:                 Set var_D8 = var_FC(Index)
  loc_12BE0F3:                 Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE0FB:                  = global_52.Menu.Caption
  loc_12BE10D:                 global_52.CAPTION = CVar(var_CC)
  loc_12BE123:                 Call global_52.Show
  loc_12BE12C:               Else
  loc_12BE132:                 If (var_D2 = 8) Then
  loc_12BE13F:                   global_52 = New rHallRepView
  loc_12BE152:                   global_52.GRepFormName = "CoverAnalysis"
  loc_12BE163:                   Set var_D8 = var_FC(Index)
  loc_12BE169:                   Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE171:                    = global_52.Menu.Caption
  loc_12BE183:                   global_52.CAPTION = CVar(var_CC)
  loc_12BE199:                   Call global_52.Show
  loc_12BE1A2:                 Else
  loc_12BE1A8:                   If (var_D2 = 9) Then
  loc_12BE1B5:                     global_52 = New rHallRepView
  loc_12BE1C8:                     global_52.GRepFormName = "ItemWiseSaleHall"
  loc_12BE1D9:                     Set var_D8 = var_FC(Index)
  loc_12BE1DF:                     Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE1E7:                      = global_52.Menu.Caption
  loc_12BE1F9:                     global_52.CAPTION = CVar(var_CC)
  loc_12BE20F:                     Call global_52.Show
  loc_12BE218:                   Else
  loc_12BE21E:                     If (var_D2 = &HA) Then
  loc_12BE22B:                       global_52 = New rHallRepView
  loc_12BE23E:                       global_52.GRepFormName = "CompanyWiseSaleHall"
  loc_12BE24F:                       Set var_D8 = var_FC(Index)
  loc_12BE255:                       Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE25D:                        = global_52.Menu.Caption
  loc_12BE26F:                       global_52.CAPTION = CVar(var_CC)
  loc_12BE285:                       Call global_52.Show
  loc_12BE28E:                     Else
  loc_12BE294:                       If (var_D2 = &HB) Then
  loc_12BE2A1:                         global_52 = New rHallRepView
  loc_12BE2B4:                         global_52.GRepFormName = "FunctionWiseItemDetail"
  loc_12BE2C5:                         Set var_D8 = var_FC(Index)
  loc_12BE2CB:                         Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE2D3:                          = global_52.Menu.Caption
  loc_12BE2E5:                         global_52.CAPTION = CVar(var_CC)
  loc_12BE2FB:                         Call global_52.Show
  loc_12BE304:                       Else
  loc_12BE30A:                         If (var_D2 = &HC) Then
  loc_12BE317:                           global_52 = New rHallRepView
  loc_12BE32A:                           global_52.GRepFormName = "TaxwiseDetailReportHall"
  loc_12BE33B:                           Set var_D8 = var_FC(Index)
  loc_12BE341:                           Call 0.Method_BanqRep_Click0 (var_CC)
  loc_12BE349:                            = global_52.Menu.Caption
  loc_12BE35B:                           global_52.CAPTION = CVar(var_CC)
  loc_12BE371:                           Call global_52.Show
  loc_12BE377:                         End If
  loc_12BE377:                       End If
  loc_12BE377:                     End If
  loc_12BE377:                   End If
  loc_12BE377:                 End If
  loc_12BE377:               End If
  loc_12BE377:             End If
  loc_12BE377:           End If
  loc_12BE377:         End If
  loc_12BE377:       End If
  loc_12BE377:     End If
  loc_12BE377:   End If
  loc_12BE377: End If
  loc_12BE377: Exit Sub
End Sub

Private Sub BanqRepMIS_Click(Index As Integer) 'F86518
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F863D3: var_B4 = CVar("BanqRepMIS" & "+") 'String
  loc_F863EE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F8640A: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_F8641A: Call 0.Method_arg_1C4 (var_CC & "BANQ")
  loc_F86429: var_D2 = Index
  loc_F86432: If (var_D2 = 0) Then
  loc_F8643F:   global_52 = New rHallRepView
  loc_F86452:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F86463:   Set var_D8 = var_FC(Index)
  loc_F86469:   Call 0.Method_BanqRepMIS_Click0 (var_CC, var_D2)
  loc_F86471:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F86483:   global_52.CAPTION = CVar(var_CC)
  loc_F86499:   Call global_52.Show
  loc_F864A2: Else
  loc_F864A8:   If (var_D2 = 1) Then
  loc_F864B5:     global_52 = New rHallRepView
  loc_F864C8:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F864D9:     Set var_D8 = var_FC(Index)
  loc_F864DF:     Call 0.Method_BanqRepMIS_Click0 (var_CC)
  loc_F864E7:      = global_52.Menu.Caption
  loc_F864F9:     global_52.CAPTION = CVar(var_CC)
  loc_F8650F:     Call global_52.Show
  loc_F86515:   End If
  loc_F86515: End If
  loc_F86515: Exit Sub
End Sub

Private Sub MallMgmt_Click() 'DFB8BC
  'Data Table: 5C8378
  loc_DFB8B8: Exit Sub
End Sub

Private Sub DTRO_Click(Index As Integer) 'F7AB9C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_F7AA5F: var_B4 = CVar("DTRO" & "+") 'String
  loc_F7AA7A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F7AA8C: var_C6 = Index
  loc_F7AA95: If (var_C6 = 1) Then
  loc_F7AA9E:   If (MemVar_1F920B8 >= 1) Then
  loc_F7AAAB:     global_52 = New Transfer
  loc_F7AAC1:     global_52.OpenMode = 2
  loc_F7AAD2:     Set var_CC = var_F0(Index)
  loc_F7AAD8:     Call 0.Method_DTRO_Click0 (var_F4, var_C6)
  loc_F7AAE0:     MemVar_1F92200 = global_52.Menu.Caption
  loc_F7AAF2:     global_52.CAPTION = CVar(var_F4)
  loc_F7AB08:     Call global_52.Show
  loc_F7AB0E:   End If
  loc_F7AB11: Else
  loc_F7AB17:   If (var_C6 = 2) Then
  loc_F7AB20:     If (MemVar_1F920B8 >= 1) Then
  loc_F7AB2D:       global_52 = New Transfer
  loc_F7AB43:       global_52.OpenMode = 1
  loc_F7AB54:       Set var_CC = var_F0(Index)
  loc_F7AB5A:       Call 0.Method_DTRO_Click0 (var_F4)
  loc_F7AB62:        = global_52.Menu.Caption
  loc_F7AB74:       global_52.CAPTION = CVar(var_F4)
  loc_F7AB8A:       Call global_52.Show
  loc_F7AB90:     End If
  loc_F7AB90:   End If
  loc_F7AB90: End If
  loc_F7AB95: global_52 = Nothing
  loc_F7AB99: Exit Sub
End Sub

Private Sub CHANGEHK_Click() 'E22DE4
  'Data Table: 5C8378
  loc_E22DDD: Call New FrmChangeDepart.Show
  loc_E22DE3: Exit Sub
End Sub

Private Sub EXTSCOP_Click(Index As Integer) '117CF00
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim unk_5C83B4 As Connection15
  Dim var_102 As Integer
  Dim var_108 As Menu
  Dim var_C8 As Recordset15
  Dim var_100 As Fields15
  loc_117CB47: var_B4 = CVar("EXTSCOP" & "+") 'String
  loc_117CB4F: var_94 = CVar(CStr(Index)) 'String
  loc_117CB5D: var_C4 = var_B4 & Trim(var_94) 
  loc_117CB8E: Proc_6_17_EAA2B0(var_94, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_B4)
  loc_117CB96: var_A4 = -1 & var_94 
  loc_117CBA4: unk_5C83B4.Execute CStr(Trim(var_94)), var_100, CStr(var_C4)
  loc_117CBAF: Set var_C8 = var_100
  loc_117CBC4: var_102 = Index
  loc_117CBCD: If (var_102 = 1) Then
  loc_117CBD9:   global_52 = MemVar_1F92330
  loc_117CBEA:   Set var_100 = Me.EXTSCOP
  loc_117CBF0:   Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CC0A:   global_52.CAPTION = CVar(var_108.Caption)
  loc_117CC20:   Call global_52.Show
  loc_117CC29: Else
  loc_117CC2F:   If (var_102 = 2) Then
  loc_117CC49:     var_108 = var_C8.Fields.Item("CashCardDebitAc")
  loc_117CC81:     var_A4 = CVar(var_C8.Fields.Item("CashCardCreditAc")) 'Address
  loc_117CCB2:     var_B4 = CVar(var_C8.Fields.Item("CashCardSecurityAc")) 'Address
  loc_117CCDF:     If ((var_102 Or (Proc_6_38_E68A98(var_A4, (Proc_6_38_E68A98(CVar(var_108)) = vbNullString)) = vbNullString)) Or (Proc_6_38_E68A98(var_B4) = vbNullString)) Then
  loc_117CCFB:       MsgBox("Parameter Settings are not set.", &H40, var_A4, var_B4, var_C4)
  loc_117CD0E:     Else
  loc_117CD17:       global_52 = MemVar_1F92344
  loc_117CD28:       Set var_100 = Me.EXTSCOP
  loc_117CD2E:       Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CD48:       global_52.CAPTION = CVar(var_108.Caption)
  loc_117CD5E:       Call global_52.Show
  loc_117CD64:     End If
  loc_117CD67:   Else
  loc_117CD6D:     If (var_102 = 3) Then
  loc_117CD79:       global_52 = MemVar_1F92358
  loc_117CD8A:       Set var_100 = Me.EXTSCOP
  loc_117CD90:       Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CDAA:       global_52.CAPTION = CVar(var_108.Caption)
  loc_117CDC0:       Call global_52.Show
  loc_117CDC9:     Else
  loc_117CDCF:       If (var_102 = 4) Then
  loc_117CDDB:         global_52 = MemVar_1F9236C
  loc_117CDEC:         Set var_100 = Me.EXTSCOP
  loc_117CDF2:         Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CE0C:         global_52.CAPTION = CVar(var_108.Caption)
  loc_117CE22:         Call global_52.Show
  loc_117CE2B:       Else
  loc_117CE31:         If (var_102 = 5) Then
  loc_117CE3D:           global_52 = MemVar_1F92380
  loc_117CE4E:           Set var_100 = Me.EXTSCOP
  loc_117CE54:           Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CE6E:           global_52.CAPTION = CVar(var_108.Caption)
  loc_117CE84:           Call global_52.Show
  loc_117CE8D:         Else
  loc_117CE93:           If (var_102 = 6) Then
  loc_117CE9F:             global_52 = MemVar_1F92394
  loc_117CEB0:             Set var_100 = Me.EXTSCOP
  loc_117CEB6:             Call 0.Method_EXTSCOP_Click0 (Index, var_108)
  loc_117CED0:             global_52.CAPTION = CVar(var_108.Caption)
  loc_117CEE6:             Call global_52.Show
  loc_117CEEC:           End If
  loc_117CEEC:         End If
  loc_117CEEC:       End If
  loc_117CEEC:     End If
  loc_117CEEC:   End If
  loc_117CEEC: End If
  loc_117CEF1: Set var_C8 = Nothing
  loc_117CEF9: global_52 = Nothing
  loc_117CEFD: Exit Sub
End Sub

Private Sub EXTSCRP_Click(Index As Integer) 'F859D8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_F8588F: var_B4 = CVar("EXTSCRP" & "+") 'String
  loc_F858AA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F858BC: var_C6 = Index
  loc_F858C5: If (var_C6 = 1) Then
  loc_F858CB:   Proc_275_18_150145C(MemVar_1F923B4, var_C6)
  loc_F858D3: Else
  loc_F858D9:   If (var_C6 = 2) Then
  loc_F858DC:     Proc_275_22_10E4F40(MemVar_1F92200)
  loc_F858E4:   Else
  loc_F858EA:     If (var_C6 = 3) Then
  loc_F858F7:       global_52 = New rPOSRepView
  loc_F8590A:       global_52.GRepFormName = "CashCardTransRep"
  loc_F8591B:       Set var_CC = var_F0(Index)
  loc_F85921:       Call 0.Method_EXTSCRP_Click0 (var_F4)
  loc_F85929:        = global_52.Menu.Caption
  loc_F8593B:       global_52.CAPTION = CVar(var_F4)
  loc_F85951:       Call global_52.Show
  loc_F8595A:     Else
  loc_F85960:       If (var_C6 = 4) Then
  loc_F8596D:         global_52 = New rPOSRepView
  loc_F85980:         global_52.GRepFormName = "CashCardCollectSumm"
  loc_F85991:         Set var_CC = var_F0(Index)
  loc_F85997:         Call 0.Method_EXTSCRP_Click0 (var_F4)
  loc_F8599F:          = global_52.Menu.Caption
  loc_F859B1:         global_52.CAPTION = CVar(var_F4)
  loc_F859C7:         Call global_52.Show
  loc_F859CD:       End If
  loc_F859CD:     End If
  loc_F859CD:   End If
  loc_F859CD: End If
  loc_F859D2: global_52 = Nothing
  loc_F859D6: Exit Sub
End Sub

Private Sub mnuWindowTileHorizontal_Click() 'E08780
  'Data Table: 5C8378
  loc_E08779: Call 0.Method_arg_2EC (CInt(1))
  loc_E0877E: Exit Sub
End Sub

Private Sub EXTSMSOPR_Click(Index As Integer) 'F2C390
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_F2C293: var_B4 = CVar("EXTSMSOPR" & "+") 'String
  loc_F2C2AE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2C2C9: If (Index = 1) Then
  loc_F2C2D5:   global_52 = MemVar_1F9243C
  loc_F2C2E6:   Set var_CC = Me.EXTSMSOPR
  loc_F2C2EC:   Call 0.Method_EXTSMSOPR_Click0 (Index, var_D0, var_D4)
  loc_F2C2F4:   var_C6 = var_D0.Caption
  loc_F2C306:   global_52.CAPTION = CVar(var_D4)
  loc_F2C31C:   Call global_52.Show
  loc_F2C325: Else
  loc_F2C32B:   If (var_C6 = 2) Then
  loc_F2C337:     global_52 = MemVar_1F92450
  loc_F2C348:     Set var_CC = Me.EXTSMSOPR
  loc_F2C34E:     Call 0.Method_EXTSMSOPR_Click0 (Index, var_D0)
  loc_F2C368:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_F2C37E:     Call global_52.Show
  loc_F2C384:   End If
  loc_F2C384: End If
  loc_F2C389: global_52 = Nothing
  loc_F2C38D: Exit Sub
End Sub

Private Sub UTL_Click(Index As Integer) '160D254
  'Data Table: 5C8378
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim MemVar_1F92200 As String
  Dim var_D6 As Integer
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim unk_5C83B4 As Connection15
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_100 As Fields15
  Dim var_14C As Field20
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1D8 As Variant
  Dim var_238 As Variant
  Dim var_144 As Variant
  loc_160BDEB: var_B8 = CVar("utl" & "+") 'String
  loc_160BE01: var_C8 = var_B8 & Trim(CVar(CStr(Index))) 
  loc_160BE06: MemVar_1F92200 = CStr(var_C8)
  loc_160BE18: var_D6 = Index
  loc_160BE21: If (var_D6 = 0) Then
  loc_160BE32:   Call 0.Method_arg_2B0 (var_E8, var_F8)
  loc_160BE44:   Set var_FC = var_100(Index)
  loc_160BE4A:   Call 0.Method_UTL_Click0 (var_104, var_D6)
  loc_160BE52:   MemVar_1F92200 = UserMast.Menu.Caption
  loc_160BE60:   Call 0.Method_arg_54 (var_104)
  loc_160BE74:   MemVar_1F933BC = Nothing
  loc_160BE7B: Else
  loc_160BE81:   If (var_D6 = 1) Then
  loc_160BE92:     Call 0.Method_arg_2B0 (var_E8)
  loc_160BEA4:     Set var_FC = var_100(Index)
  loc_160BEAA:     Call 0.Method_UTL_Click0 (var_104)
  loc_160BEB2:     var_F8 = UserPermission.Menu.Caption
  loc_160BEC0:     Call 0.Method_arg_54 (var_104)
  loc_160BED4:     MemVar_1F933D0 = Nothing
  loc_160BEDB:   Else
  loc_160BEE1:     If (var_D6 = 6) Then
  loc_160BEE4:       GoTo loc_160D248
  loc_160BEE7:     End If
  loc_160BEED:     If (var_D6 = 8) Then
  loc_160BF06:       var_98 = "Creating the ZIP at '" & MemVar_1F9209C 
  loc_160BF2B:       If (MsgBox(var_98 & " '", 4, var_B8, var_C8, var_144) = 6) Then
  loc_160BF3B:         Set var_FC = (&HFF)
  loc_160BF41:         CGZipFiles.PictureBox.Visible = 
  loc_160BF56:         Me.Label1.Caption = vbNullString
  loc_160BF68:         Me.Label1.Refresh
  loc_160BF7B:         unk_5C83B4.CommandTimeout = &H118
  loc_160BF87:         var_104 = "Backing Up Database [DATA] From Sql-Server " & vbCrLf
  loc_160BF94:         Me.Label1.Caption = var_104
  loc_160BFB3:         Me.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_160BFC8:         Me.Label1.Refresh
  loc_160BFE6:         unk_5C83B4.Execute "sp_dropdevice 'HOTELBKUP'", var_98, -1
  loc_160C00B:         var_98 = (MemVar_1F9209C + "\HOTELBKUP")
  loc_160C00F:         var_A8 = "sp_addumpdevice  'Disk' , 'HOTELBKUP' ,'" & var_98 
  loc_160C026:         unk_5C83B4.Execute CStr(var_A8 & "',2"), var_C8, -1
  loc_160C054:         var_F8 = 0
  loc_160C081:         unk_5C83B4.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_98, -1
  loc_160C089:         var_FC = var_FC.Fields
  loc_160C091:         var_F8 = var_100.Item(var_100)
  loc_160C099:         var_14C = var_14C.Value
  loc_160C0B8:         unk_5C83B4.Execute CStr(var_A8 & var_A8 & " to HOTELBKUP"), "Backup Database ", var_144
  loc_160C0E9:         unk_5C83B4.CommandTimeout = &H78
  loc_160C0F1:         Set var_158 = New CGZipFiles 
  loc_160C116:         var_188 = Date
  loc_160C156:         var_168 = CVar("DATA-" & MemVar_1F92128) 'String
  loc_160C17C:         var_178 = (1 + Format(Str(Year(Date)), "0000"))
  loc_160C1A3:         var_1D8 = (1 + Format(Str(Month(var_188)), "00"))
  loc_160C1CA:         var_238 = (1 + Format(Str(Day(Date)), "00"))
  loc_160C1CF:         var_D4 = CStr(var_238)
  loc_160C234:         var_158.ZipFileName = CStr(MemVar_1F9209C & "\" & CVar(MemVar_1F92130) & "(" & CVar(var_D4) & ").ZIP")
  loc_160C24E:         var_158.UpdatingZip = 0
  loc_160C26D:         var_B8 = "Creating " & MemVar_1F9209C & "\" & "(" 
  loc_160C277:         var_C8 = var_B8 & CVar(var_D4) 
  loc_160C285:         var_168 = var_C8 & CVar(").ZIP" & vbCrLf) 
  loc_160C297:         Me.Label1.Caption = CStr(var_168)
  loc_160C2BB:         Me.Label1.Refresh
  loc_160C2FC:         If (var_158.MakeZipFile() <> 0) Then
  loc_160C31E:           MsgBox(CVar(var_158.GetLastMessage()), 0, var_158.AddFile(CStr(MemVar_1F9209C & "\HOTELBKUP")), var_B8, var_C8)
  loc_160C331:         Else
  loc_160C33B:           var_98 = (MemVar_1F9209C + "\HOTELBKUP")
  loc_160C349:           Call 0.Method_arg_5C (CStr(CVar(var_158.GetLastMessage())), 0, 1, var_1D8, 1, var_178)
  loc_160C36A:           var_98 = MemVar_1F9209C & "\" 
  loc_160C387:           var_C8 = var_98 & CVar(MemVar_1F92130) & "(" & CVar(var_D4) 
  loc_160C394:           MsgBox(var_C8 & ").ZIP Created Successfully", 0, var_168, var_178, var_188)
  loc_160C3AC:         End If
  loc_160C3AE:         Set var_158 = Nothing 
  loc_160C3B7:         Set var_CC = Nothing
  loc_160C3C8:         Set var_FC = 1(vbNullString)
  loc_160C3CE:         CGZipFiles.Label.Caption = var_168
  loc_160C3E0:         Me.Label1.Refresh
  loc_160C3F3:         unk_5C83B4.CommandTimeout = &H118
  loc_160C3FF:         var_104 = "Backing Up Database [MAIN] From Sql-Server " & vbCrLf
  loc_160C40C:         Me.Label1.Caption = CStr(CVar(var_158.GetLastMessage()))
  loc_160C42B:         Me.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_160C440:         Me.Label1.Refresh
  loc_160C45E:         unk_5C83B4.Execute "sp_dropdevice  'MAINBKUP'", var_98, -1
  loc_160C483:         var_98 = (MemVar_1F9209C + "\MAINBKUP")
  loc_160C49E:         unk_5C83B4.Execute CStr("sp_addumpdevice  'Disk' , 'MAINBKUP' ,'" & var_98 & "',2"), var_C8, -1
  loc_160C4D8:         unk_5C83B4.Execute "Backup Database " & MemVar_1F92010 & " to MAINBKUP", var_98, -1
  loc_160C4F5:         unk_5C83B4.CommandTimeout = &H78
  loc_160C4FD:         Set var_270 = New CGZipFiles 
  loc_160C522:         var_188 = Date
  loc_160C562:         var_168 = CVar("MAIN-" & MemVar_1F92128) 'String
  loc_160C588:         var_178 = (1 + Format(Str(Year(Date)), "0000"))
  loc_160C5AF:         var_1D8 = (1 + Format(Str(Month(var_188)), "00"))
  loc_160C5D6:         var_238 = (1 + Format(Str(Day(Date)), "00"))
  loc_160C5DB:         var_D4 = CStr(var_238)
  loc_160C640:         var_270.ZipFileName = CStr(MemVar_1F9209C & "\" & CVar(MemVar_1F92130) & "(" & CVar(var_D4) & ").ZIP")
  loc_160C65A:         var_270.UpdatingZip = 0
  loc_160C679:         var_B8 = "Creating " & MemVar_1F9209C & "\" & "(" 
  loc_160C683:         var_C8 = var_B8 & CVar(var_D4) 
  loc_160C691:         var_168 = var_C8 & CVar(").ZIP" & vbCrLf) 
  loc_160C6A3:         Me.Label1.Caption = CStr(var_168)
  loc_160C6C7:         Me.Label1.Refresh
  loc_160C708:         If (var_270.MakeZipFile() <> 0) Then
  loc_160C72A:           MsgBox(CVar(var_270.GetLastMessage()), 0, var_270.AddFile(CStr(MemVar_1F9209C & "\MAINBKUP")), var_B8, var_C8)
  loc_160C73D:         Else
  loc_160C747:           var_98 = (MemVar_1F9209C + "\MAINBKUP")
  loc_160C755:           Call 0.Method_arg_5C (CStr(CVar(var_270.GetLastMessage())), 0, 1, var_1D8, 1, var_178)
  loc_160C776:           var_98 = MemVar_1F9209C & "\" 
  loc_160C780:           var_A8 = var_98 & CVar(MemVar_1F92130) 
  loc_160C79C:           var_144 = var_A8 & "(" & CVar(var_D4) & ").ZIP Created Successfully" 
  loc_160C7A0:           MsgBox(var_144, 0, var_168, var_178, var_188)
  loc_160C7B8:         End If
  loc_160C7BA:         Set var_270 = Nothing 
  loc_160C7C3:         Set var_CC = Nothing
  loc_160C7C6:         GoTo loc_160C7C9
  loc_160C7C9:         ' Referenced from:     160C7C6
  loc_160C7C9:       End If
  loc_160C7E1:       var_F8 = 0
  loc_160C80E:       unk_5C83B4.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_98, -1
  loc_160C816:       var_FC = var_FC.Fields
  loc_160C81E:       var_F8 = var_100.Item(var_100)
  loc_160C826:       var_14C = var_14C.Value
  loc_160C845:       unk_5C83B4.Execute CStr(var_A8 & var_A8 & " WITH TRUNCATE_ONLY"), "BACKUP LOG ", var_144
  loc_160C883:       var_F8 = 0
  loc_160C8B0:       unk_5C83B4.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_98, -1
  loc_160C8B8:       var_FC = var_FC.Fields
  loc_160C8C0:       var_F8 = var_100.Item(var_100)
  loc_160C8C8:       var_14C = var_14C.Value
  loc_160C8E7:       unk_5C83B4.Execute CStr(var_A8 & var_A8 & " WITH NO_LOG"), "BACKUP LOG ", var_144
  loc_160C925:       var_F8 = 0
  loc_160C942:       var_104 = "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128
  loc_160C952:       unk_5C83B4.Execute var_104 & "'", var_98, -1
  loc_160C95A:       var_FC = var_FC.Fields
  loc_160C962:       var_F8 = var_100.Item(var_100)
  loc_160C96A:       var_14C = var_14C.Value
  loc_160C989:       unk_5C83B4.Execute CStr(var_A8 & var_A8 & " , 0, TRUNCATEONLY)"), "DBCC SHRINKDATABASE( ", var_144
  loc_160C9BB:       Me.Picture3.Visible = False
  loc_160C9C3:       Exit Sub
  loc_160C9C7:     Else
  loc_160C9CD:       If (var_D6 = 9) Then
  loc_160C9D0:         GoTo loc_160D248
  loc_160C9D3:       End If
  loc_160C9D9:       If (var_D6 = &HB) Then
  loc_160C9E6:         global_52 = New frmGuestParamMast
  loc_160C9F9:         global_52.Tag = "11"
  loc_160CA0A:         Set var_FC = var_100(Index)
  loc_160CA10:         Call 0.Method_UTL_Click0 (var_104, -1, var_154)
  loc_160CA18:         -1 = global_52.Menu.Caption
  loc_160CA2A:         global_52.CAPTION = CVar(var_104)
  loc_160CA40:         Call global_52.Show
  loc_160CA49:       Else
  loc_160CA4F:         If (var_D6 = &HC) Then
  loc_160CA5C:           global_52 = New SundryMast
  loc_160CA70:           Set var_FC = var_100(Index)
  loc_160CA76:           Call 0.Method_UTL_Click0 (var_104, var_154)
  loc_160CA7E:           -1 = SundryMast.Menu.Caption
  loc_160CA90:           global_52.CAPTION = CVar(var_104)
  loc_160CAA6:           Call global_52.Show
  loc_160CAAF:         Else
  loc_160CAB5:           If (var_D6 = &HD) Then
  loc_160CAB8:             GoTo loc_160D248
  loc_160CABB:           End If
  loc_160CAC1:           If (var_D6 = &HE) Then
  loc_160CAC4:             GoTo loc_160D248
  loc_160CAC7:           End If
  loc_160CACD:           If (var_D6 = &HF) Then
  loc_160CADA:             global_52 = New frmWelcome
  loc_160CAEE:             Set var_FC = var_100(Index)
  loc_160CAF4:             Call 0.Method_UTL_Click0 (var_104)
  loc_160CAFC:              = frmWelcome.Menu.Caption
  loc_160CB0E:             global_52.CAPTION = CVar(var_104)
  loc_160CB24:             Call global_52.Show
  loc_160CB2D:           Else
  loc_160CB33:             If (var_D6 = &H10) Then
  loc_160CB40:               global_52 = New FrmInc
  loc_160CB54:               Set var_FC = var_100(Index)
  loc_160CB5A:               Call 0.Method_UTL_Click0 (var_104)
  loc_160CB62:                = FrmInc.Menu.Caption
  loc_160CB74:               global_52.CAPTION = CVar(var_104)
  loc_160CB8A:               Call global_52.Show
  loc_160CB93:             Else
  loc_160CB99:               If (var_D6 = &H11) Then
  loc_160CBA2:                 If (MemVar_1F920B8 = 1) Then
  loc_160CBAF:                   global_52 = New frmYearEnd
  loc_160CBC3:                   Set var_FC = var_100(Index)
  loc_160CBC9:                   Call 0.Method_UTL_Click0 (var_104)
  loc_160CBD1:                    = frmYearEnd.Menu.Caption
  loc_160CBE3:                   global_52.CAPTION = CVar(var_104)
  loc_160CBF9:                   Call global_52.Show
  loc_160CBFF:                 End If
  loc_160CC02:               Else
  loc_160CC08:                 If (var_D6 = &H12) Then
  loc_160CC11:                   If (MemVar_1F920B8 = 1) Then
  loc_160CC1E:                     global_52 = New Transfer
  loc_160CC32:                     Set var_FC = var_100(Index)
  loc_160CC38:                     Call 0.Method_UTL_Click0 (var_104)
  loc_160CC40:                      = Transfer.Menu.Caption
  loc_160CC52:                     global_52.CAPTION = CVar(var_104)
  loc_160CC68:                     Call global_52.Show
  loc_160CC6E:                   End If
  loc_160CC71:                 Else
  loc_160CC77:                   If (var_D6 = &H13) Then
  loc_160CC80:                     If (MemVar_1F920B8 = 1) Then
  loc_160CC8D:                       global_52 = New FrmDataRecieving
  loc_160CCA1:                       Set var_FC = var_100(Index)
  loc_160CCA7:                       Call 0.Method_UTL_Click0 (var_104)
  loc_160CCAF:                        = FrmDataRecieving.Menu.Caption
  loc_160CCC1:                       global_52.CAPTION = CVar(var_104)
  loc_160CCD7:                       Call global_52.Show
  loc_160CCDD:                     End If
  loc_160CCE0:                   Else
  loc_160CCE6:                     If (var_D6 = &H14) Then
  loc_160CCF3:                       global_52 = New frmMenuItemCopy
  loc_160CD07:                       Set var_FC = var_100(Index)
  loc_160CD0D:                       Call 0.Method_UTL_Click0 (var_104)
  loc_160CD15:                        = frmMenuItemCopy.Menu.Caption
  loc_160CD27:                       global_52.CAPTION = CVar(var_104)
  loc_160CD3D:                       Call global_52.Show
  loc_160CD46:                     Else
  loc_160CD4C:                       If (var_D6 = &H15) Then
  loc_160CD59:                         global_52 = New FrmPOSBillDeletion
  loc_160CD6D:                         Set var_FC = var_100(Index)
  loc_160CD73:                         Call 0.Method_UTL_Click0 (var_104)
  loc_160CD7B:                          = FrmPOSBillDeletion.Menu.Caption
  loc_160CD8D:                         global_52.CAPTION = CVar(var_104)
  loc_160CDA3:                         Call global_52.Show
  loc_160CDAC:                       Else
  loc_160CDB2:                         If (var_D6 = &H16) Then
  loc_160CDBF:                           global_52 = New FrmBdayLookup
  loc_160CDD3:                           Set var_FC = var_100(Index)
  loc_160CDD9:                           Call 0.Method_UTL_Click0 (var_104)
  loc_160CDE1:                            = FrmBdayLookup.Menu.Caption
  loc_160CDF3:                           global_52.CAPTION = CVar(var_104)
  loc_160CE01:                           var_E8 = 1
  loc_160CE0D:                           var_114 = CVar(Me) 'Address
  loc_160CE1A:                           Call global_52.Show
  loc_160CE23:                         Else
  loc_160CE29:                           If (var_D6 = &H17) Then
  loc_160CE36:                             global_52 = New FaCountryMast
  loc_160CE4A:                             Set var_FC = var_100(Index)
  loc_160CE50:                             Call 0.Method_UTL_Click0 (var_104, var_114)
  loc_160CE58:                             var_E8 = FaCountryMast.Menu.Caption
  loc_160CE6A:                             global_52.CAPTION = CVar(var_104)
  loc_160CE80:                             Call global_52.Show
  loc_160CE89:                           Else
  loc_160CE8F:                             If (var_D6 = &H18) Then
  loc_160CE9C:                               global_52 = New FaStateMast
  loc_160CEB0:                               Set var_FC = var_100(Index)
  loc_160CEB6:                               Call 0.Method_UTL_Click0 (var_104)
  loc_160CEBE:                                = FaStateMast.Menu.Caption
  loc_160CED0:                               global_52.CAPTION = CVar(var_104)
  loc_160CEE6:                               Call global_52.Show
  loc_160CEEF:                             Else
  loc_160CEF5:                               If (var_D6 = &H19) Then
  loc_160CF02:                                 global_52 = New FaCityMast
  loc_160CF16:                                 Set var_FC = var_100(Index)
  loc_160CF1C:                                 Call 0.Method_UTL_Click0 (var_104)
  loc_160CF24:                                  = FaCityMast.Menu.Caption
  loc_160CF36:                                 global_52.CAPTION = CVar(var_104)
  loc_160CF4C:                                 Call global_52.Show
  loc_160CF55:                               Else
  loc_160CF5B:                                 If (var_D6 = &H1A) Then
  loc_160CF68:                                   global_52 = New CompMast
  loc_160CF7C:                                   Set var_FC = var_100(Index)
  loc_160CF82:                                   Call 0.Method_UTL_Click0 (var_104)
  loc_160CF8A:                                    = CompMast.Menu.Caption
  loc_160CF9C:                                   global_52.CAPTION = CVar(var_104)
  loc_160CFB2:                                   Call global_52.Show
  loc_160CFBB:                                 Else
  loc_160CFC1:                                   If (var_D6 = &H1B) Then
  loc_160CFCE:                                     global_52 = New DepartMast
  loc_160CFE2:                                     Set var_FC = var_100(Index)
  loc_160CFE8:                                     Call 0.Method_UTL_Click0 (var_104)
  loc_160CFF0:                                      = DepartMast.Menu.Caption
  loc_160D002:                                     global_52.CAPTION = CVar(var_104)
  loc_160D018:                                     Call global_52.Show
  loc_160D021:                                   Else
  loc_160D027:                                     If (var_D6 = &H1C) Then
  loc_160D034:                                       global_52 = New FaSubGroup
  loc_160D048:                                       Set var_FC = var_100(Index)
  loc_160D04E:                                       Call 0.Method_UTL_Click0 (var_104)
  loc_160D056:                                        = FaSubGroup.Menu.Caption
  loc_160D068:                                       global_52.CAPTION = CVar(var_104)
  loc_160D07E:                                       Call global_52.Show
  loc_160D090:                                       global_52.WindowState = 2
  loc_160D097:                                     Else
  loc_160D09D:                                       If (var_D6 = &H1D) Then
  loc_160D0AA:                                         global_52 = New FrmPOSSaleDataTransfer
  loc_160D0BE:                                         Set var_FC = var_100(Index)
  loc_160D0C4:                                         Call 0.Method_UTL_Click0 (var_104)
  loc_160D0CC:                                          = FrmPOSSaleDataTransfer.Menu.Caption
  loc_160D0DE:                                         global_52.CAPTION = CVar(var_104)
  loc_160D0F4:                                         Call global_52.Show
  loc_160D0FD:                                       Else
  loc_160D103:                                         If (var_D6 = &H1E) Then
  loc_160D110:                                           global_52 = New rPOSRepView
  loc_160D123:                                           global_52.GRepFormName = "PLUFile"
  loc_160D134:                                           Set var_FC = var_100(Index)
  loc_160D13A:                                           Call 0.Method_UTL_Click0 (var_104)
  loc_160D142:                                            = global_52.Menu.Caption
  loc_160D154:                                           global_52.CAPTION = CVar(var_104)
  loc_160D174:                                           Me.Global.Unload global_52
  loc_160D17F:                                         Else
  loc_160D185:                                           If (var_D6 = &H20) Then
  loc_160D192:                                             global_52 = New FrmPOSRecycleData
  loc_160D1A6:                                             Set var_FC = var_100(Index)
  loc_160D1AC:                                             Call 0.Method_UTL_Click0 (var_104)
  loc_160D1B4:                                              = FrmPOSRecycleData.Menu.Caption
  loc_160D1C6:                                             global_52.CAPTION = CVar(var_104)
  loc_160D1DC:                                             Call global_52.Show
  loc_160D1E5:                                           Else
  loc_160D1EB:                                             If (var_D6 = &H22) Then
  loc_160D1F8:                                               global_52 = New FrmJobScheduler
  loc_160D20C:                                               Set var_FC = var_100(Index)
  loc_160D212:                                               Call 0.Method_UTL_Click0 (var_104)
  loc_160D21A:                                                = FrmJobScheduler.Menu.Caption
  loc_160D22C:                                               global_52.CAPTION = CVar(var_104)
  loc_160D242:                                               Call global_52.Show
  loc_160D248:                                             End If
  loc_160D248:                                           End If
  loc_160D248:                                         End If
  loc_160D248:                                       End If
  loc_160D248:                                     End If
  loc_160D248:                                   End If
  loc_160D248:                                 End If
  loc_160D248:                               End If
  loc_160D248:                             End If
  loc_160D248:                           End If
  loc_160D248:                         End If
  loc_160D248:                       End If
  loc_160D248:                     End If
  loc_160D248:                   End If
  loc_160D248:                 End If
  loc_160D248:               End If
  loc_160D248:             End If
  loc_160D248:             ' Referenced from:           160CAC4
  loc_160D248:             ' Referenced from:           160CAB8
  loc_160D248:           End If
  loc_160D248:         End If
  loc_160D248:         ' Referenced from:       160C9D0
  loc_160D248:       End If
  loc_160D248:       ' Referenced from:     160BEE4
  loc_160D248:     End If
  loc_160D248:   End If
  loc_160D248: End If
  loc_160D24D: global_52 = Nothing
  loc_160D251: Exit Sub
End Sub

Private Sub EXTSMSSETUP_Click(Index As Integer) 'ECF838
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ECF79F: var_B4 = CVar("EXTSMSSETUP" & "+") 'String
  loc_ECF7BA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ECF7D5: If (Index = 1) Then
  loc_ECF7E1:   global_52 = MemVar_1F92464
  loc_ECF7F2:   Set var_CC = Me.EXTSMSSETUP
  loc_ECF7F8:   Call 0.Method_EXTSMSSETUP_Click0 (Index, var_D0, var_D4)
  loc_ECF800:   var_C6 = var_D0.Caption
  loc_ECF812:   global_52.CAPTION = CVar(var_D4)
  loc_ECF828:   Call global_52.Show
  loc_ECF82E: End If
  loc_ECF833: global_52 = Nothing
  loc_ECF837: Exit Sub
End Sub

Private Sub HallEnt_Click(Index As Integer) '13EBF68
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D4 As String
  Dim var_E4 As Variant
  loc_13EB553: var_B4 = CVar("HallEnt" & "+") 'String
  loc_13EB56E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13EB580: var_C6 = Index
  loc_13EB589: If (var_C6 = 0) Then
  loc_13EB596:   global_52 = New FrmEventMast
  loc_13EB5AA:   Set var_CC = var_D0(Index)
  loc_13EB5B0:   Call 0.Method_HallEnt_Click0 (var_D4, var_C6)
  loc_13EB5B8:   MemVar_1F92200 = FrmEventMast.Menu.Caption
  loc_13EB5CA:   global_52.CAPTION = CVar(var_D4)
  loc_13EB5E0:   Call global_52.Show
  loc_13EB5E9: Else
  loc_13EB5EF:   If (var_C6 = 1) Then
  loc_13EB5FC:     global_52 = New FrmVenueFeat
  loc_13EB610:     Set var_CC = var_D0(Index)
  loc_13EB616:     Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB61E:      = FrmVenueFeat.Menu.Caption
  loc_13EB630:     global_52.CAPTION = CVar(var_D4)
  loc_13EB646:     Call global_52.Show
  loc_13EB64F:   Else
  loc_13EB655:     If (var_C6 = 2) Then
  loc_13EB662:       global_52 = New FrmVenueMast
  loc_13EB676:       var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB687:       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB69E:       Set var_CC = var_D0(Index)
  loc_13EB6A4:       Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB6AC:       2 = global_52.Menu.Caption
  loc_13EB6BE:       global_52.CAPTION = CVar(var_D4)
  loc_13EB6D4:       Call global_52.Show
  loc_13EB6DD:     Else
  loc_13EB6E3:       If (var_C6 = 3) Then
  loc_13EB6F0:         global_52 = New FrmHallItemCatMast
  loc_13EB704:         var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB715:         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB72C:         Set var_CC = var_D0(Index)
  loc_13EB732:         Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB73A:         2 = global_52.Menu.Caption
  loc_13EB74C:         global_52.CAPTION = CVar(var_D4)
  loc_13EB762:         Call global_52.Show
  loc_13EB76B:       Else
  loc_13EB771:         If (var_C6 = 4) Then
  loc_13EB77E:           global_52 = New HallItemGroupMast
  loc_13EB792:           var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB7A3:           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB7BA:           Set var_CC = var_D0(Index)
  loc_13EB7C0:           Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB7C8:           2 = global_52.Menu.Caption
  loc_13EB7DA:           global_52.CAPTION = CVar(var_D4)
  loc_13EB7F0:           Call global_52.Show
  loc_13EB7F9:         Else
  loc_13EB7FF:           If (var_C6 = 5) Then
  loc_13EB80C:             global_52 = New HallMenuItemEntry
  loc_13EB820:             var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB831:             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB848:             Set var_CC = var_D0(Index)
  loc_13EB84E:             Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB856:             2 = global_52.Menu.Caption
  loc_13EB868:             global_52.CAPTION = CVar(var_D4)
  loc_13EB87E:             Call global_52.Show
  loc_13EB887:           Else
  loc_13EB88D:             If (var_C6 = 6) Then
  loc_13EB89A:               global_52 = New HallMenuCatalog
  loc_13EB8AE:               var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB8BF:               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB8D6:               Set var_CC = var_D0(Index)
  loc_13EB8DC:               Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB8E4:               2 = global_52.Menu.Caption
  loc_13EB8F6:               global_52.CAPTION = CVar(var_D4)
  loc_13EB90C:               Call global_52.Show
  loc_13EB915:             Else
  loc_13EB91B:               If (var_C6 = 7) Then
  loc_13EB928:                 global_52 = New HallSundry
  loc_13EB93C:                 var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB94D:                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB964:                 Set var_CC = var_D0(Index)
  loc_13EB96A:                 Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EB972:                 2 = global_52.Menu.Caption
  loc_13EB984:                 global_52.CAPTION = CVar(var_D4)
  loc_13EB99A:                 Call global_52.Show
  loc_13EB9A3:               Else
  loc_13EB9A9:                 If (var_C6 = 9) Then
  loc_13EB9B6:                   global_52 = New FrmBookingInquiry
  loc_13EB9CA:                   var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EB9DB:                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EB9F2:                   Set var_CC = var_D0(Index)
  loc_13EB9F8:                   Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBA00:                   2 = global_52.Menu.Caption
  loc_13EBA12:                   global_52.CAPTION = CVar(var_D4)
  loc_13EBA28:                   Call global_52.Show
  loc_13EBA31:                 Else
  loc_13EBA37:                   If (var_C6 = &HA) Then
  loc_13EBA44:                     global_52 = New HallBooking
  loc_13EBA58:                     var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBA69:                     global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBA82:                     global_52.OpenMode = 2
  loc_13EBA93:                     Set var_CC = var_D0(Index)
  loc_13EBA99:                     Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBAA1:                     2 = global_52.Menu.Caption
  loc_13EBAB3:                     global_52.CAPTION = CVar(var_D4)
  loc_13EBAC9:                     Call global_52.Show
  loc_13EBAD2:                   Else
  loc_13EBAD8:                     If (var_C6 = &HB) Then
  loc_13EBAE5:                       global_52 = New CateringBooking
  loc_13EBAF9:                       var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBB0A:                       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBB21:                       Set var_CC = var_D0(Index)
  loc_13EBB27:                       Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBB2F:                       2 = global_52.Menu.Caption
  loc_13EBB41:                       global_52.CAPTION = CVar(var_D4)
  loc_13EBB57:                       Call global_52.Show
  loc_13EBB60:                     Else
  loc_13EBB66:                       If (var_C6 = &HC) Then
  loc_13EBB73:                         global_52 = New HallChefPreCosting
  loc_13EBB87:                         var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBB98:                         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBBAF:                         Set var_CC = var_D0(Index)
  loc_13EBBB5:                         Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBBBD:                         2 = global_52.Menu.Caption
  loc_13EBBCF:                         global_52.CAPTION = CVar(var_D4)
  loc_13EBBE5:                         Call global_52.Show
  loc_13EBBEE:                       Else
  loc_13EBBF4:                         If (var_C6 = &HD) Then
  loc_13EBC01:                           global_52 = New HallBill
  loc_13EBC15:                           var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBC26:                           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBC3D:                           Set var_CC = var_D0(Index)
  loc_13EBC43:                           Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBC4B:                           2 = global_52.Menu.Caption
  loc_13EBC5D:                           global_52.CAPTION = CVar(var_D4)
  loc_13EBC73:                           Call global_52.Show
  loc_13EBC7C:                         Else
  loc_13EBC82:                           If (var_C6 = &HE) Then
  loc_13EBC8F:                             global_52 = New HallAdvanceDepDialog
  loc_13EBCA3:                             var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBCB4:                             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBCCB:                             Set var_CC = var_D0(Index)
  loc_13EBCD1:                             Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBCD9:                             2 = global_52.Menu.Caption
  loc_13EBCEB:                             global_52.CAPTION = CVar(var_D4)
  loc_13EBD01:                             Call global_52.Show
  loc_13EBD0A:                           Else
  loc_13EBD10:                             If (var_C6 = &HF) Then
  loc_13EBD13:                               GoTo loc_13EBF5B
  loc_13EBD16:                             End If
  loc_13EBD1C:                             If (var_C6 = &H10) Then
  loc_13EBD29:                               global_52 = New BanqAvailability
  loc_13EBD3D:                               var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBD4E:                               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBD65:                               Set var_CC = var_D0(Index)
  loc_13EBD6B:                               Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBD73:                               2 = global_52.Menu.Caption
  loc_13EBD85:                               global_52.CAPTION = CVar(var_D4)
  loc_13EBD9B:                               Call global_52.Show
  loc_13EBDA4:                             Else
  loc_13EBDAA:                               If (var_C6 = &H11) Then
  loc_13EBDB7:                                 global_52 = New frmGuestComments
  loc_13EBDCB:                                 var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBDDC:                                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBDF3:                                 Set var_CC = var_D0(Index)
  loc_13EBDF9:                                 Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBE01:                                 2 = global_52.Menu.Caption
  loc_13EBE13:                                 global_52.CAPTION = CVar(var_D4)
  loc_13EBE29:                                 Call global_52.Show
  loc_13EBE32:                               Else
  loc_13EBE38:                                 If (var_C6 = &H12) Then
  loc_13EBE3B:                                   GoTo loc_13EBF5B
  loc_13EBE3E:                                 End If
  loc_13EBE44:                                 If (var_C6 = &H13) Then
  loc_13EBE51:                                   global_52 = New HallBillEstimate
  loc_13EBE65:                                   var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_13EBE76:                                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_13EBE8D:                                   Set var_CC = var_D0(Index)
  loc_13EBE93:                                   Call 0.Method_HallEnt_Click0 (var_D4)
  loc_13EBE9B:                                   2 = global_52.Menu.Caption
  loc_13EBEAD:                                   global_52.CAPTION = CVar(var_D4)
  loc_13EBEC3:                                   Call global_52.Show
  loc_13EBECC:                                 Else
  loc_13EBED2:                                   If (var_C6 = &H14) Then
  loc_13EBEDF:                                     global_52 = New HallAdvanceDepDialog
  loc_13EBEF2:                                     global_52.AdvType = "AD"
  loc_13EBF05:                                     global_52.OpenMode = 2
  loc_13EBF18:                                     global_52.OpenType = 6
  loc_13EBF3A:                                     global_52.MDIRestCode = CVar(Proc_6_45_EAD428(MemVar_1F92078) & "BANQ")
  loc_13EBF44:                                     var_E4 = 1
  loc_13EBF55:                                     Call global_52.Show
  loc_13EBF5B:                                   End If
  loc_13EBF5B:                                   ' Referenced from:                                 13EBE3B
  loc_13EBF5B:                                 End If
  loc_13EBF5B:                               End If
  loc_13EBF5B:                               ' Referenced from:                             13EBD13
  loc_13EBF5B:                             End If
  loc_13EBF5B:                           End If
  loc_13EBF5B:                         End If
  loc_13EBF5B:                       End If
  loc_13EBF5B:                     End If
  loc_13EBF5B:                   End If
  loc_13EBF5B:                 End If
  loc_13EBF5B:               End If
  loc_13EBF5B:             End If
  loc_13EBF5B:           End If
  loc_13EBF5B:         End If
  loc_13EBF5B:       End If
  loc_13EBF5B:     End If
  loc_13EBF5B:   End If
  loc_13EBF5B: End If
  loc_13EBF60: global_52 = Nothing
  loc_13EBF64: Exit Sub
End Sub

Private Sub HallM_Click(Index As Integer) 'E58970
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  loc_E58943: var_B4 = CVar("HallM" & "+") 'String
  loc_E5895E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_E5896D: Exit Sub
End Sub

Private Sub HouseEnt_Click(Index As Integer) '11A7D60
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_E4 As Variant
  Dim var_D0 As Menu
  loc_11A793F: var_B4 = CVar("HouseEnt" & "+") 'String
  loc_11A795A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11A796C: var_C6 = Index
  loc_11A7975: If (var_C6 = 0) Then
  loc_11A7982:   global_52 = New FrmComplaintMast
  loc_11A7996:   Set var_CC = var_D0(Index)
  loc_11A799C:   Call 0.Method_HouseEnt_Click0 (var_D4, var_C6)
  loc_11A79A4:   MemVar_1F92200 = FrmComplaintMast.Menu.Caption
  loc_11A79B6:   global_52.CAPTION = CVar(var_D4)
  loc_11A79CC:   Call global_52.Show
  loc_11A79D5: Else
  loc_11A79DB:   If (var_C6 = 1) Then
  loc_11A79E8:     global_52 = New FrmComplaintClearing
  loc_11A79FC:     Set var_CC = var_D0(Index)
  loc_11A7A02:     Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7A0A:      = FrmComplaintClearing.Menu.Caption
  loc_11A7A1C:     global_52.CAPTION = CVar(var_D4)
  loc_11A7A32:     Call global_52.Show
  loc_11A7A3B:   Else
  loc_11A7A41:     If (var_C6 = 2) Then
  loc_11A7A4E:       global_52 = New FrmLostFound
  loc_11A7A62:       Set var_CC = var_D0(Index)
  loc_11A7A68:       Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7A70:        = FrmLostFound.Menu.Caption
  loc_11A7A82:       global_52.CAPTION = CVar(var_D4)
  loc_11A7A98:       Call global_52.Show
  loc_11A7AA1:     Else
  loc_11A7AA7:       If (var_C6 = 3) Then
  loc_11A7AB4:         global_52 = New FrmClaimEntry
  loc_11A7AC8:         Set var_CC = var_D0(Index)
  loc_11A7ACE:         Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7AD6:          = FrmClaimEntry.Menu.Caption
  loc_11A7AE8:         global_52.CAPTION = CVar(var_D4)
  loc_11A7AFE:         Call global_52.Show
  loc_11A7B07:       Else
  loc_11A7B0D:         If (var_C6 = 4) Then
  loc_11A7B2E:           If (Trim(MemVar_1F921B8) = vbNullString) Then
  loc_11A7B3B:             global_52 = New FrmChangeDepart
  loc_11A7B42:             var_E4 = 1
  loc_11A7B50:             Call global_52.Show
  loc_11A7B56:             var_E4 = 0
  loc_11A7B64:             Call global_52.ZOrder
  loc_11A7B6A:           End If
  loc_11A7B74:           global_52 = New HKHouseOpStk
  loc_11A7B88:           Set var_CC = Me.HouseEnt
  loc_11A7B8E:           Call 0.Method_HouseEnt_Click0 (Index, var_D0, var_D4)
  loc_11A7B96:           var_E4 = var_D0.Caption
  loc_11A7BA8:           global_52.CAPTION = CVar(var_D4)
  loc_11A7BBE:           Call global_52.Show
  loc_11A7BC7:         Else
  loc_11A7BCD:           If (var_C6 = 5) Then
  loc_11A7BDA:             global_52 = New FrmStockTransfer
  loc_11A7BEE:             Set var_CC = var_D0(Index)
  loc_11A7BF4:             Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7BFC:             var_E4 = FrmStockTransfer.Menu.Caption
  loc_11A7C0E:             global_52.CAPTION = CVar(var_D4)
  loc_11A7C24:             Call global_52.Show
  loc_11A7C2D:           Else
  loc_11A7C33:             If (var_C6 = 6) Then
  loc_11A7C40:               global_52 = New HHouseKeeping
  loc_11A7C54:               Set var_CC = var_D0(Index)
  loc_11A7C5A:               Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7C62:                = HHouseKeeping.Menu.Caption
  loc_11A7C74:               global_52.CAPTION = CVar(var_D4)
  loc_11A7C8A:               Call global_52.Show
  loc_11A7C93:             Else
  loc_11A7C99:               If (var_C6 = 7) Then
  loc_11A7CA6:                 global_52 = New FrmItemIssuedOnCleaning
  loc_11A7CBA:                 Set var_CC = var_D0(Index)
  loc_11A7CC0:                 Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7CC8:                  = FrmItemIssuedOnCleaning.Menu.Caption
  loc_11A7CDA:                 global_52.CAPTION = CVar(var_D4)
  loc_11A7CF0:                 Call global_52.Show
  loc_11A7CF9:               Else
  loc_11A7CFF:                 If (var_C6 = 8) Then
  loc_11A7D0C:                   global_52 = New HRoomCheckOutClearance
  loc_11A7D20:                   Set var_CC = var_D0(Index)
  loc_11A7D26:                   Call 0.Method_HouseEnt_Click0 (var_D4)
  loc_11A7D2E:                    = HRoomCheckOutClearance.Menu.Caption
  loc_11A7D40:                   global_52.CAPTION = CVar(var_D4)
  loc_11A7D56:                   Call global_52.Show
  loc_11A7D5C:                 End If
  loc_11A7D5C:               End If
  loc_11A7D5C:             End If
  loc_11A7D5C:           End If
  loc_11A7D5C:         End If
  loc_11A7D5C:       End If
  loc_11A7D5C:     End If
  loc_11A7D5C:   End If
  loc_11A7D5C: End If
  loc_11A7D5C: Exit Sub
End Sub

Private Sub LblMgs_UnknownEvent_9 'EACD0C
  'Data Table: 5C8378
  Dim var_AC As String
  loc_EACC80: Set var_88 = Me.LblMgs
  loc_EACC86: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA()
  loc_EACC9F: If (CStr() = "In Box") Then
  loc_EACCA2:   var_AC = "Out Box"
  loc_EACCAC:   Set var_88 = Me.LblMgs
  loc_EACCB2:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_AC)
  loc_EACCC8:   Call 0.Method_arg_2B0 (var_AC)
  loc_EACCD0: Else
  loc_EACCD0:   var_AC = "In Box"
  loc_EACCDA:   Set var_88 = Me.LblMgs
  loc_EACCE0:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_AC)
  loc_EACCF1:   Call 0.Method_arg_54 ("Out Box")
  loc_EACD04:   Call 0.Method_arg_2B0 (var_AC, var_BC)
  loc_EACD09: End If
  loc_EACD09: Exit Sub
End Sub

Private Sub PictShortCuts_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E09FFC
  'Data Table: 5C8378
  loc_E09FF4: Call PictShortCuts_MouseMove(Button, Shift, X, Y)
  loc_E09FF9: Exit Sub
End Sub

Private Sub PictShortCuts_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F7C190
  'Data Table: 5C8378
  Dim X As Single
  loc_F7C05A: If (X >= CDbl(Me.ListView1.Width)) Then
  loc_F7C06D:   Me.PictShortCuts.MousePointer = CInt(9)
  loc_F7C086:   If ((X > CDbl(1400)) And (X <= CDbl(10000))) Then
  loc_F7C08F:     If (Button = 1) Then
  loc_F7C099:       global_112 = CInt(X)
  loc_F7C0B8:       If (Me.PictShortCuts.Width > X) Then
  loc_F7C0C2:         X = (X - CDbl(5))
  loc_F7C0D2:         Me.PictShortCuts.Width = X
  loc_F7C0DD:       Else
  loc_F7C0E4:         X = (X + CDbl(5))
  loc_F7C0F4:         Me.PictShortCuts.Width = X
  loc_F7C0FC:       End If
  loc_F7C0FC:       Call MDIForm_Resize()
  loc_F7C101:     End If
  loc_F7C101:   End If
  loc_F7C104: Else
  loc_F7C114:   Me.PictShortCuts.MousePointer = CInt(7)
  loc_F7C150:   If (((Y > CDbl(1400)) And (Y > CDbl(Me.ListView1.Height))) And (Y <= CDbl(9000))) Then
  loc_F7C159:     If (Button = 1) Then
  loc_F7C168:       If (CDbl(global_108) > CDbl(Y)) Then
  loc_F7C176:         global_108 = CLng((Y - CDbl(5)))
  loc_F7C17C:       Else
  loc_F7C187:         global_108 = CLng((Y + CDbl(5)))
  loc_F7C18A:       End If
  loc_F7C18A:       Call MDIForm_Resize()
  loc_F7C18F:     End If
  loc_F7C18F:   End If
  loc_F7C18F: End If
  loc_F7C18F: Exit Sub
End Sub

Private Sub PictShortCuts_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E09D10
  'Data Table: 5C8378
  loc_E09D08: Call PictShortCuts_MouseMove(Button, Shift, X, Y)
  loc_E09D0D: Exit Sub
  loc_E09D0E: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_6 '105E8A8
  'Data Table: 5C8378
  Dim var_8C As TreeView
  Dim var_9C As Variant
  Dim var_C0 As String
  Dim var_128 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_198 As String
  Dim unk_5C83B4 As Connection15
  loc_105E680: On Error Resume Next
  loc_105E6E5: var_128 = (Me.TreeView1.SelectedItem.Image = "Rep") Or (Me.TreeView1.SelectedItem.Image = "Frm")
  loc_105E701: If CBool(var_128) Then
  loc_105E709:   var_9C = Me.SelectedItem
  loc_105E70E:   VarLateMemLdRfVar
  loc_105E731:   var_C0 = "-"
  loc_105E744:   var_F8 = (InStr(1, Me.SelectedItem.key, "Rep", 0) + 1)
  loc_105E750:   var_148 = Mid(var_118, CLng(Me.TreeView1.SelectedItem.Image), var_128)
  loc_105E779:   VarLateMemLdRfVar
  loc_105E784:   var_B0 = Me.SelectedItem
  loc_105E789:   VarLateMemLdRfVar
  loc_105E798:   Set var_8C = Me.TreeView1
  loc_105E815:   Me.ListView1.ListItems.Add var_128, var_148, var_164, CVar(Me.ImageList1.ListImages.Item(Me.TreeView1.SelectedItem.Image).Key), var_184
  loc_105E871:   var_198 = "Update MenuHelp set ShowInList='Y' Where Code=" & CStr(var_148) & "  AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_105E888:   unk_5C83B4.Execute var_198 & MemVar_1F92128 & "'", Me.SelectedItem, -1
  loc_105E8A2: End If
  loc_105E8A6: Exit Sub
  loc_105E8A7: var_8C = var_18C
End Sub

Private Sub TreeView1_UnknownEvent_B 'E22D3C
  'Data Table: 5C8378
  Dim var_88 As Node
  loc_E22D1F: Set var_88 = Button 
  loc_E22D2C: var_88.Image = "Close"
  loc_E22D36: var_88.Selected = True
  loc_E22D3B: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_C 'E22C94
  'Data Table: 5C8378
  Dim var_88 As Node
  loc_E22C77: Set var_88 = Button 
  loc_E22C84: var_88.Image = "Open"
  loc_E22C8E: var_88.Selected = True
  loc_E22C93: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_10 'E09A68
  'Data Table: 5C8378
  loc_E09A5E: If (CLng(Button) = &HD) Then
  loc_E09A61:   Call TreeView1_UnknownEvent_14()
  loc_E09A66: End If
  loc_E09A66: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_12 'E6ADF4
  'Data Table: 5C8378
  Dim var_88 As PictureBox
  Dim var_98 As Long
  loc_E6ADA0: On Error Resume Next
  loc_E6ADB5: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E6ADC9: If (CLng(Button) = 1) Then
  loc_E6ADCE:   var_98 = 1
  loc_E6ADDB:   Set var_88 = Me.TreeView1
  loc_E6ADEC: End If
  loc_E6ADF0: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_14 'F2E9A0
  'Data Table: 5C8378
  loc_F2E8F4: If (InStr(1, Me.TreeView1.SelectedItem.Key, "-", 0) <> 0) Then
  loc_F2E961:   var_FC = Mid(CVar(Me.TreeView1.SelectedItem.Key), (InStr(1, Me.TreeView1.SelectedItem.Key, "-", 0) + 1), var_EC)
  loc_F2E96B:   var_104 = 0
  loc_F2E979:   Proc_165_2_1E4B100(CLng(var_FC))
  loc_F2E99D: End If
  loc_F2E99D: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_6 '105C4B4
  'Data Table: 5C8378
  Dim var_8C As TreeView
  Dim var_9C As Variant
  Dim var_C0 As String
  Dim var_128 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_198 As String
  Dim unk_5C83B4 As Connection15
  loc_105C28C: On Error Resume Next
  loc_105C2F1: var_128 = (Me.TreeView1.SelectedItem.Image = "Rep") Or (Me.TreeView1.SelectedItem.Image = "Frm")
  loc_105C30D: If CBool(var_128) Then
  loc_105C315:   var_9C = Me.SelectedItem
  loc_105C31A:   VarLateMemLdRfVar
  loc_105C33D:   var_C0 = "-"
  loc_105C350:   var_F8 = (InStr(1, Me.SelectedItem.key, "Rep", 0) + 1)
  loc_105C35C:   var_148 = Mid(var_118, CLng(Me.TreeView1.SelectedItem.Image), var_128)
  loc_105C385:   VarLateMemLdRfVar
  loc_105C390:   var_B0 = Me.SelectedItem
  loc_105C395:   VarLateMemLdRfVar
  loc_105C3A4:   Set var_8C = Me.TreeView1
  loc_105C421:   Me.ListView1.ListItems.Add var_128, var_148, var_164, CVar(Me.ImageList1.ListImages.Item(Me.TreeView1.SelectedItem.Image).Key), var_184
  loc_105C47D:   var_198 = "Update MenuHelp set ShowInList='Y' Where Code=" & CStr(var_148) & "  AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_105C494:   unk_5C83B4.Execute var_198 & MemVar_1F92128 & "'", Me.SelectedItem, -1
  loc_105C4AE: End If
  loc_105C4B2: Exit Sub
  loc_105C4B3: var_8C = var_18C
End Sub

Private Sub ListView1_UnknownEvent_D '100F828
  'Data Table: 5C8378
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_12C As String
  Dim unk_5C83B4 As Connection15
  loc_100F63C: On Error Resume Next
  loc_100F6A5: var_D0 = CVar(Me.ListView1.SelectedItem.Key) 'String
  loc_100F6AB: var_100 = Mid(var_D0, (InStr(1, Me.ListView1.SelectedItem.Key, "-", 0) + 1), var_F0)
  loc_100F6DF: If (CLng(Button) = &H2E) Then
  loc_100F6F1:   var_9C = Me.ListView1.SelectedItem
  loc_100F741:   If (MsgBox(CVar("Are you sure to delete ShortCut " & var_9C.Text), &H114, var_D0, var_F0, var_100) = 6) Then
  loc_100F774:     var_12C = "Update MenuHelp set ShowInList='' Where Code=" & CStr(CLng(var_100)) & " AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_100F78B:     unk_5C83B4.Execute var_12C & MemVar_1F92128 & "'", var_9C, -1
  loc_100F7EE:     Me.ListView1.ListItems.Remove CVar(Me.ListView1.SelectedItem.Index)
  loc_100F817:     Me.ListView1.Sorted = True
  loc_100F81F:   End If
  loc_100F821: End If
  loc_100F825: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_F 'E09914
  'Data Table: 5C8378
  loc_E0990A: If (CLng(Button) = &HD) Then
  loc_E0990D:   Call ListView1_UnknownEvent_13()
  loc_E09912: End If
  loc_E09912: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_11 'E1F7C0
  'Data Table: 5C8378
  loc_E1F7B4: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E1F7BC: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'EF8F90
  'Data Table: 5C8378
  loc_EF8EE0: On Error Resume Next
  loc_EF8F4F: var_FC = Mid(CVar(Me.ListView1.SelectedItem.Key), (InStr(1, Me.ListView1.SelectedItem.Key, "-", 0) + 1), var_EC)
  loc_EF8F59: var_104 = 0
  loc_EF8F67: Proc_165_2_1E4B100(CLng(var_FC))
  loc_EF8F8D: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_9 '168EBC0
  'Data Table: 5C8378
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_160 As Fields15
  Dim var_184 As Variant
  Dim var_334 As String
  Dim var_2E4 As String
  Dim var_3D8 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D4 As Variant
  Dim var_22C As Variant
  Dim var_404 As TreeView
  Dim var_408 As Nodes
  Dim var_41C As String
  Dim var_42C As TreeView
  Dim var_14C As Variant
  Dim var_430 As Nodes
  Dim var_434 As Node
  Dim var_2AC As Variant
  Dim var_3B8 As String
  Dim var_324 As Variant
  Dim var_510 As Node
  Dim var_50C As Fields15
  Dim var_3F8 As Variant
  Dim var_4A8 As Variant
  Dim var_540 As Fields15
  Dim var_21C As Variant
  Dim var_28C As Variant
  Dim var_304 As Variant
  Dim var_364 As Variant
  Dim var_508 As Variant
  Dim var_674 As Node
  Dim var_384 As Variant
  Dim var_678 As Node
  loc_168D4EC: On Error Resume Next
  loc_168D4F5: Set var_8C = Me.ListView1
  loc_168D4FB: var_9C = var_8C.ListItems
  loc_168D50C: var_9C.Clear
  loc_168D546: var_B0 = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4 "
  loc_168D54F: unk_5C83B4.Execute var_B0, var_9C, -1
  loc_168D55A: Set var_88 = var_8C
  loc_168D56E: ' Referenced from: 168D822
  loc_168D57F: If Not(var_88.EOF) Then
  loc_168D5B5:   var_E4 = Trim(Str(CVar(var_88.Fields.Item("Opt1"))))
  loc_168D60F:   var_184 = CVar(var_88.Fields.Item("Opt3")) 'Address
  loc_168D616:   var_194 = Str(var_184)
  loc_168D6A8:   var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168D76C:   var_104 = ("C" + var_E4)
  loc_168D773:   var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168D77A:   var_1B4 = (var_15C + Trim(var_194))
  loc_168D77E:   var_1C4 = "-"
  loc_168D783:   var_1D4 = (var_1B4 + var_1C4)
  loc_168D78A:   var_22C = (var_1D4 + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168D7AC:   Me.ListView1.ListItems.Add var_3C8, var_22C, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Open")), var_3F8
  loc_168D81B:   var_88.MoveNext
  loc_168D822:   GoTo loc_168D56E
  loc_168D825: End If
  loc_168D849: Me.TreeView1.Nodes.Clear
  loc_168D852: Set var_408 = Nothing 
  loc_168D85A: Set var_404 = Nothing 
  loc_168D873: var_C0 = CVar(CLng(Me.mnuGrid.Row)) 'Long
  loc_168D878: var_118 = 1
  loc_168D885: Set var_A0 = Me.mnuGrid
  loc_168D8AF: If (CStr(var_A0.TextMatrix)) = "Short Cut(s)") Then
  loc_168D8B4:   var_C0 = 0
  loc_168D8BE:   Set var_8C = Me.ListView1
  loc_168D8D1:   Exit Sub
  loc_168D8D5: Else
  loc_168D8D9:   var_C0 = 1
  loc_168D8E3:   Set var_8C = Me.ListView1
  loc_168D911:   If (Me.PictSubMenu.Visible = &HFF) Then
  loc_168D916:     var_C0 = True
  loc_168D923:     Set var_8C = Me.CmdSubMenu
  loc_168D929:     Call 0.Method_mnuGrid_UnknownEvent_90 (0, var_A0, var_C0, ListView1.DispID_18001, var_C0, ListView1.DispID_18001)
  loc_168D931:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_C0)
  loc_168D952:     var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168D996:     Call Proc_1_121_133085C(CInt(Val(CStr(Me.mnuGrid.TextMatrix)))), 0, 0, 0, Val(CStr(Me.mnuGrid.TextMatrix))), 0)
  loc_168D9C1:     var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168D9C6:     var_118 = 0
  loc_168D9F5:     Set var_108 = Me.PictMainMenu
  loc_168D9FB:     var_108.Tag = CStr(Val(CStr(Me.mnuGrid.TextMatrix))))
  loc_168DA55:     global_72 = CStr(Me.mnuGrid.TextMatrix))
  loc_168DA72:     global_76 = vbNullString
  loc_168DA7E:     global_80 = vbNullString
  loc_168DA8A:     global_84 = vbNullString
  loc_168DA96:     global_88 = vbNullString
  loc_168DAB7:     Call 0.Method_arg_54 (MemVar_1F92130 & " { " & MemVar_1F92014 & " }", 1, CVar(CLng(Me.mnuGrid.RowSel)), 1, CVar(CLng(Me.mnuGrid.RowSel)))
  loc_168DAD3:     Me.LblCompany.Visible = False
  loc_168DADB:   End If
  loc_168DADD: End If
  loc_168DAF4: var_C0 = CVar(CLng(Me.mnuGrid.RowSel)) 'Long
  loc_168DAF9: var_118 = 0
  loc_168DB4B: var_41C = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND Opt1="
  loc_168DB67: unk_5C83B4.Execute var_41C & CStr(Val(CStr(Me.mnuGrid.TextMatrix)))) & " ORDER BY OPT1,OPT2,OPT3,OPT4 ", var_E4, -1
  loc_168DB72: Set var_88 = var_108
  loc_168DB9A: ' Referenced from: 168EBAD
  loc_168DBAB: If Not(var_88.EOF) Then
  loc_168DBDE:   var_F4 = "-"
  loc_168DBF0:   If CBool(Trim(CVar(var_88.Fields.Item("Option"))) <> "C") Then
  loc_168DC0C:     Set var_430 = Me.TreeView1.Nodes
  loc_168DC92:     var_160 = var_88.Fields
  loc_168DCD2:     If CBool((var_88.Fields.Item("Opt2").Value = 0) And (var_88.Fields.Item("Opt3").Value = 0) And (var_160.Item("Opt4").Value = 0)) Then
  loc_168DD59:       var_14C = CVar(Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)) 'String
  loc_168DD80:       var_104 = ("A" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168DD8D:       var_430.Add var_184, var_194, var_104, Ucase(Trim(Str(CVar(var_88.Fields.Item("Opt2"))))), "Open", var_1B4
  loc_168DD95:       Set var_434 = var_160
  loc_168DDC4:       var_434.Bold = True
  loc_168DDD0:       var_434.Expanded = True
  loc_168DDD9:       Set var_434 = Nothing 
  loc_168DDE0:     Else
  loc_168DE82:       var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value = 0) And (var_88.Fields.Item("Opt4").Value = 0)
  loc_168DEA0:       If CBool(var_15C) Then
  loc_168DFD6:         var_2E4 = "-"
  loc_168DFDE:         var_2AC = ("R" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168E05B:         var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168E11F:         var_15C = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168E126:         var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168E12D:         var_324 = (var_1B4 + IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), var_2AC, vbNullString))
  loc_168E13E:         var_104 = ("A" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168E145:         var_430.Add var_104, 4, "Rep", CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Close")), var_508
  loc_168E14D:         Set var_510 = var_50C
  loc_168E1C6:         var_510.Bold = True
  loc_168E1D2:         var_510.Expanded = False
  loc_168E1DB:         Set var_510 = Nothing 
  loc_168E1E2:       Else
  loc_168E284:         var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value <> 0) And (var_88.Fields.Item("Opt4").Value <> 0)
  loc_168E2A2:         If CBool(var_15C) Then
  loc_168E4B0:           var_3B8 = "-"
  loc_168E4B8:           var_4A8 = ("E" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168E535:           var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168E54A:           var_540 = var_88.Fields
  loc_168E596:           var_5AC = "Rep"
  loc_168E5F9:           var_21C = ("E" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168E600:           var_28C = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168E607:           var_304 = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168E60E:           var_364 = (IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), CVar(var_88.Fields.Item("Opt3")), vbNullString) + Trim(Str(CVar(var_88.Fields.Item("Opt4")))))
  loc_168E615:           var_508 = (var_88.Fields.Item("Flag").Value + IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), "Frm", vbNullString))
  loc_168E626:           var_104 = ("B" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168E62D:           var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168E634:           var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168E63B:           var_430.Add var_1B4, 4, var_508, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"), IIf((var_540.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), var_5AC, "Close")), var_66C
  loc_168E643:           Set var_674 = var_670
  loc_168E6E4:           var_674.Bold = False
  loc_168E6F0:           var_674.Expanded = False
  loc_168E6F9:           Set var_674 = Nothing 
  loc_168E700:         Else
  loc_168E7A2:           var_15C = (var_88.Fields.Item("Opt2").Value <> 0) And (var_88.Fields.Item("Opt3").Value <> 0) And (var_88.Fields.Item("Opt4").Value = 0)
  loc_168E7C0:           If CBool(var_15C) Then
  loc_168E962:             var_334 = "-"
  loc_168E96A:             var_384 = ("R" + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_168E996:             var_3C8 = IIf((var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), var_88.Fields.Item("Flag").Value, vbNullString)
  loc_168E9E7:             var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_168EA8F:             var_57C = IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Close"))
  loc_168EAAB:             var_1B4 = ("B" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168EAB2:             var_21C = (var_1B4 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168EAB9:             var_28C = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_168EAC0:             var_3D8 = (Trim(Str(CVar(var_88.Fields.Item("Code")))) + var_3C8)
  loc_168EAD1:             var_104 = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_168EAD8:             var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_168EADF:             var_430.Add var_15C, 4, (var_88.Fields.Item("Flag").Value = "E") Or (var_88.Fields.Item("Flag").Value = "R"), CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"), var_57C, var_5AC
  loc_168EAE7:             Set var_678 = var_540
  loc_168EB74:             var_678.Bold = False
  loc_168EB80:             var_678.Expanded = False
  loc_168EB89:             Set var_678 = Nothing 
  loc_168EB8D:           End If
  loc_168EB8D:         End If
  loc_168EB8D:       End If
  loc_168EB8D:     End If
  loc_168EB93:     Set var_430 = Nothing 
  loc_168EB9B:     Set var_42C = Nothing 
  loc_168EB9F:   End If
  loc_168EBA6:   var_88.MoveNext
  loc_168EBAD:   GoTo loc_168DB9A
  loc_168EBB0: End If
  loc_168EBB7: Set var_88 = Nothing
  loc_168EBBC: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_A 'E420B8
  'Data Table: 5C8378
  loc_E420AF: If ((((CLng(Button) = &H21) Or (CLng(Button) = &H22)) Or (CLng(Button) = &H26)) Or (CLng(Button) = &H28)) Then
  loc_E420B2:   Call mnuGrid_UnknownEvent_9()
  loc_E420B7: End If
  loc_E420B7: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_C 'E09EEC
  'Data Table: 5C8378
  loc_E09EE2: If (CLng(Button) = 0) Then
  loc_E09EE5:   Call mnuGrid_UnknownEvent_9()
  loc_E09EEA: End If
  loc_E09EEA: Exit Sub
End Sub

Private Sub mnuGrid_UnknownEvent_F 'E1FB30
  'Data Table: 5C8378
  loc_E1FB24: Me.PictShortCuts.MousePointer = CInt(0)
  loc_E1FB2C: Exit Sub
End Sub

Private Sub POSRep_Click(Index As Integer) '142D29C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_142C7BF: var_B4 = CVar("POSRep" & "+") 'String
  loc_142C7DA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_142C7EC: var_C6 = Index
  loc_142C7F5: If (var_C6 = 0) Then
  loc_142C802:   global_52 = New rPOSRepView
  loc_142C815:   global_52.GRepFormName = "SalesRegister"
  loc_142C826:   Set var_CC = var_F0(Index)
  loc_142C82C:   Call 0.Method_POSRep_Click0 (var_F4, var_C6)
  loc_142C834:   MemVar_1F92200 = global_52.Menu.Caption
  loc_142C846:   global_52.CAPTION = CVar(var_F4)
  loc_142C85C:   Call global_52.Show
  loc_142C865: Else
  loc_142C86B:   If (var_C6 = 1) Then
  loc_142C878:     global_52 = New rPOSRepView
  loc_142C88B:     global_52.GRepFormName = "WaiterWiseSale"
  loc_142C89C:     Set var_CC = var_F0(Index)
  loc_142C8A2:     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142C8AA:      = global_52.Menu.Caption
  loc_142C8BC:     global_52.CAPTION = CVar(var_F4)
  loc_142C8D2:     Call global_52.Show
  loc_142C8DB:   Else
  loc_142C8E1:     If (var_C6 = 2) Then
  loc_142C8EE:       global_52 = New rPOSRepView
  loc_142C901:       global_52.GRepFormName = "TableWiseSale"
  loc_142C912:       Set var_CC = var_F0(Index)
  loc_142C918:       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142C920:        = global_52.Menu.Caption
  loc_142C932:       global_52.CAPTION = CVar(var_F4)
  loc_142C948:       Call global_52.Show
  loc_142C951:     Else
  loc_142C957:       If (var_C6 = 3) Then
  loc_142C964:         global_52 = New rPOSRepView
  loc_142C977:         global_52.GRepFormName = "CashierSettlement"
  loc_142C988:         Set var_CC = var_F0(Index)
  loc_142C98E:         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142C996:          = global_52.Menu.Caption
  loc_142C9A8:         global_52.CAPTION = CVar(var_F4)
  loc_142C9BE:         Call global_52.Show
  loc_142C9C7:       Else
  loc_142C9CD:         If (var_C6 = 5) Then
  loc_142C9DA:           global_52 = New rPOSRepView
  loc_142C9ED:           global_52.GRepFormName = "KOTWiseDetails"
  loc_142C9FE:           Set var_CC = var_F0(Index)
  loc_142CA04:           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CA0C:            = global_52.Menu.Caption
  loc_142CA1E:           global_52.CAPTION = CVar(var_F4)
  loc_142CA34:           Call global_52.Show
  loc_142CA3D:         Else
  loc_142CA43:           If (var_C6 = 6) Then
  loc_142CA50:             global_52 = New rPOSRepView
  loc_142CA63:             global_52.GRepFormName = "DiscountReg"
  loc_142CA74:             Set var_CC = var_F0(Index)
  loc_142CA7A:             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CA82:              = global_52.Menu.Caption
  loc_142CA94:             global_52.CAPTION = CVar(var_F4)
  loc_142CAAA:             Call global_52.Show
  loc_142CAB3:           Else
  loc_142CAB9:             If (var_C6 = 7) Then
  loc_142CAC6:               global_52 = New rPOSRepView
  loc_142CAD9:               global_52.GRepFormName = "CoverAnalysis"
  loc_142CAEA:               Set var_CC = var_F0(Index)
  loc_142CAF0:               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CAF8:                = global_52.Menu.Caption
  loc_142CB0A:               global_52.CAPTION = CVar(var_F4)
  loc_142CB20:               Call global_52.Show
  loc_142CB29:             Else
  loc_142CB2F:               If (var_C6 = 8) Then
  loc_142CB3C:                 global_52 = New rPOSRepView
  loc_142CB4F:                 global_52.GRepFormName = "PendingKot"
  loc_142CB60:                 Set var_CC = var_F0(Index)
  loc_142CB66:                 Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CB6E:                  = global_52.Menu.Caption
  loc_142CB80:                 global_52.CAPTION = CVar(var_F4)
  loc_142CB96:                 Call global_52.Show
  loc_142CB9F:               Else
  loc_142CBA5:                 If (var_C6 = 9) Then
  loc_142CBB2:                   global_52 = New rPOSRepView
  loc_142CBC5:                   global_52.GRepFormName = "ItemWiseSale"
  loc_142CBD6:                   Set var_CC = var_F0(Index)
  loc_142CBDC:                   Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CBE4:                    = global_52.Menu.Caption
  loc_142CBF6:                   global_52.CAPTION = CVar(var_F4)
  loc_142CC0C:                   Call global_52.Show
  loc_142CC15:                 Else
  loc_142CC1B:                   If (var_C6 = &HA) Then
  loc_142CC28:                     global_52 = New rPOSRepView
  loc_142CC3B:                     global_52.GRepFormName = "DelBillUnsetBill"
  loc_142CC4C:                     Set var_CC = var_F0(Index)
  loc_142CC52:                     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CC5A:                      = global_52.Menu.Caption
  loc_142CC6C:                     global_52.CAPTION = CVar(var_F4)
  loc_142CC82:                     Call global_52.Show
  loc_142CC8B:                   Else
  loc_142CC91:                     If (var_C6 = &HB) Then
  loc_142CC9E:                       global_52 = New rPOSRepView
  loc_142CCB1:                       global_52.GRepFormName = "NCKOTWiseDetails"
  loc_142CCC2:                       Set var_CC = var_F0(Index)
  loc_142CCC8:                       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CCD0:                        = global_52.Menu.Caption
  loc_142CCE2:                       global_52.CAPTION = CVar(var_F4)
  loc_142CCF8:                       Call global_52.Show
  loc_142CD01:                     Else
  loc_142CD07:                       If (var_C6 = &HC) Then
  loc_142CD14:                         global_52 = New rPOSRepView
  loc_142CD27:                         global_52.GRepFormName = "SalesDayBook"
  loc_142CD38:                         Set var_CC = var_F0(Index)
  loc_142CD3E:                         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CD46:                          = global_52.Menu.Caption
  loc_142CD58:                         global_52.CAPTION = CVar(var_F4)
  loc_142CD6E:                         Call global_52.Show
  loc_142CD77:                       Else
  loc_142CD7D:                         If (var_C6 = &HE) Then
  loc_142CD8A:                           global_52 = New rPOSRepView
  loc_142CD9D:                           global_52.GRepFormName = "OrderDetailReport"
  loc_142CDAE:                           Set var_CC = var_F0(Index)
  loc_142CDB4:                           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CDBC:                            = global_52.Menu.Caption
  loc_142CDCE:                           global_52.CAPTION = CVar(var_F4)
  loc_142CDE4:                           Call global_52.Show
  loc_142CDED:                         Else
  loc_142CDF3:                           If (var_C6 = &H10) Then
  loc_142CE00:                             global_52 = New rPOSRepView
  loc_142CE13:                             global_52.GRepFormName = "NCKOTSummary"
  loc_142CE24:                             Set var_CC = var_F0(Index)
  loc_142CE2A:                             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CE32:                              = global_52.Menu.Caption
  loc_142CE44:                             global_52.CAPTION = CVar(var_F4)
  loc_142CE5A:                             Call global_52.Show
  loc_142CE63:                           Else
  loc_142CE69:                             If (var_C6 = &H11) Then
  loc_142CE76:                               global_52 = New rPOSRepView
  loc_142CE89:                               global_52.GRepFormName = "DailyDiet"
  loc_142CE9A:                               Set var_CC = var_F0(Index)
  loc_142CEA0:                               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CEA8:                                = global_52.Menu.Caption
  loc_142CEBA:                               global_52.CAPTION = CVar(var_F4)
  loc_142CED0:                               Call global_52.Show
  loc_142CED9:                             Else
  loc_142CEDF:                               If (var_C6 = &H12) Then
  loc_142CEEC:                                 global_52 = New rPOSRepView
  loc_142CEFF:                                 global_52.GRepFormName = "DiscountPartyWiseReg"
  loc_142CF10:                                 Set var_CC = var_F0(Index)
  loc_142CF16:                                 Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CF1E:                                  = global_52.Menu.Caption
  loc_142CF30:                                 global_52.CAPTION = CVar(var_F4)
  loc_142CF46:                                 Call global_52.Show
  loc_142CF4F:                               Else
  loc_142CF55:                                 If (var_C6 = &H13) Then
  loc_142CF62:                                   global_52 = New FrmDeliveredItemDetail
  loc_142CF75:                                   global_52.CAPTION = "Not Delivered Order"
  loc_142CF86:                                   Set var_CC = var_F0(Index)
  loc_142CF8C:                                   Call 0.Method_POSRep_Click0 (var_F4)
  loc_142CF94:                                    = global_52.Menu.Caption
  loc_142CFA6:                                   global_52.CAPTION = CVar(var_F4)
  loc_142CFBC:                                   Call global_52.Show
  loc_142CFC5:                                 Else
  loc_142CFCB:                                   If (var_C6 = &H14) Then
  loc_142CFD8:                                     global_52 = New rPOSRepView
  loc_142CFEB:                                     global_52.GRepFormName = "ItemWiseGroupWiseSaleReport"
  loc_142CFFC:                                     Set var_CC = var_F0(Index)
  loc_142D002:                                     Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D00A:                                      = global_52.Menu.Caption
  loc_142D01C:                                     global_52.CAPTION = CVar(var_F4)
  loc_142D032:                                     Call global_52.Show
  loc_142D03B:                                   Else
  loc_142D041:                                     If (var_C6 = &H15) Then
  loc_142D04E:                                       global_52 = New rPOSRepView
  loc_142D061:                                       global_52.GRepFormName = "CustomerDetail"
  loc_142D072:                                       Set var_CC = var_F0(Index)
  loc_142D078:                                       Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D080:                                        = global_52.Menu.Caption
  loc_142D092:                                       global_52.CAPTION = CVar(var_F4)
  loc_142D0B2:                                       Me.Global.Unload global_52
  loc_142D0BD:                                     Else
  loc_142D0C3:                                       If (var_C6 = &H16) Then
  loc_142D0D0:                                         global_52 = New rPOSRepView
  loc_142D0E3:                                         global_52.GRepFormName = "DeliveryStatus"
  loc_142D0F4:                                         Set var_CC = var_F0(Index)
  loc_142D0FA:                                         Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D102:                                          = global_52.Menu.Caption
  loc_142D114:                                         global_52.CAPTION = CVar(var_F4)
  loc_142D134:                                         Me.Global.Unload global_52
  loc_142D13F:                                       Else
  loc_142D145:                                         If (var_C6 = &H29) Then
  loc_142D152:                                           global_52 = New FrmDenomination
  loc_142D165:                                           global_52.CAPTION = "DenominationDetail"
  loc_142D176:                                           Set var_CC = var_F0(Index)
  loc_142D17C:                                           Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D184:                                            = global_52.Menu.Caption
  loc_142D196:                                           global_52.CAPTION = CVar(var_F4)
  loc_142D1AC:                                           Call global_52.Show
  loc_142D1B5:                                         Else
  loc_142D1BB:                                           If (var_C6 = &H2A) Then
  loc_142D1C8:                                             global_52 = New RsPaymentReceice
  loc_142D1DC:                                             Set var_CC = var_F0(Index)
  loc_142D1E2:                                             Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D1EA:                                              = RsPaymentReceice.Menu.Caption
  loc_142D1FC:                                             global_52.CAPTION = CVar(var_F4)
  loc_142D212:                                             Call global_52.Show
  loc_142D21B:                                           Else
  loc_142D221:                                             If (var_C6 = &H2B) Then
  loc_142D22E:                                               global_52 = New rPOSRepView
  loc_142D241:                                               global_52.GRepFormName = "BillWiseAdjustmentReport"
  loc_142D252:                                               Set var_CC = var_F0(Index)
  loc_142D258:                                               Call 0.Method_POSRep_Click0 (var_F4)
  loc_142D260:                                                = global_52.Menu.Caption
  loc_142D272:                                               global_52.CAPTION = CVar(var_F4)
  loc_142D292:                                               Me.Global.Unload global_52
  loc_142D29A:                                             End If
  loc_142D29A:                                           End If
  loc_142D29A:                                         End If
  loc_142D29A:                                       End If
  loc_142D29A:                                     End If
  loc_142D29A:                                   End If
  loc_142D29A:                                 End If
  loc_142D29A:                               End If
  loc_142D29A:                             End If
  loc_142D29A:                           End If
  loc_142D29A:                         End If
  loc_142D29A:                       End If
  loc_142D29A:                     End If
  loc_142D29A:                   End If
  loc_142D29A:                 End If
  loc_142D29A:               End If
  loc_142D29A:             End If
  loc_142D29A:           End If
  loc_142D29A:         End If
  loc_142D29A:       End If
  loc_142D29A:     End If
  loc_142D29A:   End If
  loc_142D29A: End If
  loc_142D29A: Exit Sub
End Sub

Private Sub NightAuditGSTR_Click(Index As Integer) 'FE8C7C
  'Data Table: 5C8378
  Dim var_86 As Integer
  loc_FE8AA0: If (Index = 1) Then
  loc_FE8AAD:   global_52 = New rFomRepView
  loc_FE8AC0:   global_52.GRepFormName = "GSTR1"
  loc_FE8AD1:   Set var_8C = var_B0(Index)
  loc_FE8AD7:   Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FE8ADF:   var_86 = global_52.Menu.Caption
  loc_FE8AF1:   global_52.CAPTION = CVar(var_B4)
  loc_FE8B07:   Call global_52.Show
  loc_FE8B10: Else
  loc_FE8B16:   If (var_86 = 2) Then
  loc_FE8B23:     global_52 = New rFomRepView
  loc_FE8B36:     global_52.GRepFormName = "GSTR2(3)"
  loc_FE8B47:     Set var_8C = var_B0(Index)
  loc_FE8B4D:     Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FE8B55:      = global_52.Menu.Caption
  loc_FE8B67:     global_52.CAPTION = CVar(var_B4)
  loc_FE8B7D:     Call global_52.Show
  loc_FE8B86:   Else
  loc_FE8B8C:     If (var_86 = 3) Then
  loc_FE8B99:       global_52 = New rFomRepView
  loc_FE8BAC:       global_52.GRepFormName = "GSTR2(4A)"
  loc_FE8BBD:       Set var_8C = var_B0(Index)
  loc_FE8BC3:       Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FE8BCB:        = global_52.Menu.Caption
  loc_FE8BDD:       global_52.CAPTION = CVar(var_B4)
  loc_FE8BF3:       Call global_52.Show
  loc_FE8BFC:     Else
  loc_FE8C02:       If (var_86 = 4) Then
  loc_FE8C0F:         global_52 = New rFomRepView
  loc_FE8C22:         global_52.GRepFormName = "GSTR2(4B)"
  loc_FE8C33:         Set var_8C = var_B0(Index)
  loc_FE8C39:         Call 0.Method_NightAuditGSTR_Click0 (var_B4)
  loc_FE8C41:          = global_52.Menu.Caption
  loc_FE8C53:         global_52.CAPTION = CVar(var_B4)
  loc_FE8C69:         Call global_52.Show
  loc_FE8C6F:       End If
  loc_FE8C6F:     End If
  loc_FE8C6F:   End If
  loc_FE8C6F: End If
  loc_FE8C74: global_52 = Nothing
  loc_FE8C78: Exit Sub
End Sub

Private Sub OdcEnt1_Click(Index As Integer) '1194ACC
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_11946D3: var_B4 = CVar("ODCEnt1" & "+") 'String
  loc_11946EE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1194700: var_C6 = Index
  loc_1194709: If (var_C6 = 0) Then
  loc_1194716:   global_52 = New FrmEventMast
  loc_119472A:   Set var_CC = var_D0(Index)
  loc_1194730:   Call 0.Method_OdcEnt1_Click0 (var_D4, var_C6)
  loc_1194738:   MemVar_1F92200 = FrmEventMast.Menu.Caption
  loc_119474A:   global_52.CAPTION = CVar(var_D4)
  loc_1194760:   Call global_52.Show
  loc_1194769: Else
  loc_119476F:   If (var_C6 = 1) Then
  loc_119477C:     global_52 = New FrmVenueFeat
  loc_1194790:     Set var_CC = var_D0(Index)
  loc_1194796:     Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_119479E:      = FrmVenueFeat.Menu.Caption
  loc_11947B0:     global_52.CAPTION = CVar(var_D4)
  loc_11947C6:     Call global_52.Show
  loc_11947CF:   Else
  loc_11947D5:     If (var_C6 = 2) Then
  loc_11947E2:       global_52 = New FrmVenueMast
  loc_11947FA:       global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_119480E:       Set var_CC = var_D0(Index)
  loc_1194814:       Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_119481C:        = global_52.Menu.Caption
  loc_119482E:       global_52.CAPTION = CVar(var_D4)
  loc_1194844:       Call global_52.Show
  loc_119484D:     Else
  loc_1194853:       If (var_C6 = 3) Then
  loc_1194860:         global_52 = New FrmHallItemCatMast
  loc_1194878:         global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_119488C:         Set var_CC = var_D0(Index)
  loc_1194892:         Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_119489A:          = global_52.Menu.Caption
  loc_11948AC:         global_52.CAPTION = CVar(var_D4)
  loc_11948C2:         Call global_52.Show
  loc_11948CB:       Else
  loc_11948D1:         If (var_C6 = 4) Then
  loc_11948DE:           global_52 = New HallItemGroupMast
  loc_11948F6:           global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_119490A:           Set var_CC = var_D0(Index)
  loc_1194910:           Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1194918:            = global_52.Menu.Caption
  loc_119492A:           global_52.CAPTION = CVar(var_D4)
  loc_1194940:           Call global_52.Show
  loc_1194949:         Else
  loc_119494F:           If (var_C6 = 5) Then
  loc_119495C:             global_52 = New HallMenuItemEntry
  loc_1194974:             global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1194988:             Set var_CC = var_D0(Index)
  loc_119498E:             Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1194996:              = global_52.Menu.Caption
  loc_11949A8:             global_52.CAPTION = CVar(var_D4)
  loc_11949BE:             Call global_52.Show
  loc_11949C7:           Else
  loc_11949CD:             If (var_C6 = 6) Then
  loc_11949DA:               global_52 = New HallMenuCatalog
  loc_11949F2:               global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1194A06:               Set var_CC = var_D0(Index)
  loc_1194A0C:               Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1194A14:                = global_52.Menu.Caption
  loc_1194A26:               global_52.CAPTION = CVar(var_D4)
  loc_1194A3C:               Call global_52.Show
  loc_1194A45:             Else
  loc_1194A4B:               If (var_C6 = 7) Then
  loc_1194A58:                 global_52 = New HallSundry
  loc_1194A70:                 global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1194A84:                 Set var_CC = var_D0(Index)
  loc_1194A8A:                 Call 0.Method_OdcEnt1_Click0 (var_D4)
  loc_1194A92:                  = global_52.Menu.Caption
  loc_1194AA4:                 global_52.CAPTION = CVar(var_D4)
  loc_1194ABA:                 Call global_52.Show
  loc_1194AC0:               End If
  loc_1194AC0:             End If
  loc_1194AC0:           End If
  loc_1194AC0:         End If
  loc_1194AC0:       End If
  loc_1194AC0:     End If
  loc_1194AC0:   End If
  loc_1194AC0: End If
  loc_1194AC5: global_52 = Nothing
  loc_1194AC9: Exit Sub
  loc_1194ACA: VCallFPR8
End Sub

Private Sub OdcMis_Click(Index As Integer) 'F84CF4
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F84BAF: var_B4 = CVar("OdcMis" & "+") 'String
  loc_F84BCA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F84BE6: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_F84BF6: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_F84C05: var_D2 = Index
  loc_F84C0E: If (var_D2 = 0) Then
  loc_F84C1B:   global_52 = New rHallRepView
  loc_F84C2E:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F84C3F:   Set var_D8 = var_FC(Index)
  loc_F84C45:   Call 0.Method_OdcMis_Click0 (var_CC, var_D2)
  loc_F84C4D:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F84C5F:   global_52.CAPTION = CVar(var_CC)
  loc_F84C75:   Call global_52.Show
  loc_F84C7E: Else
  loc_F84C84:   If (var_D2 = 1) Then
  loc_F84C91:     global_52 = New rHallRepView
  loc_F84CA4:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F84CB5:     Set var_D8 = var_FC(Index)
  loc_F84CBB:     Call 0.Method_OdcMis_Click0 (var_CC)
  loc_F84CC3:      = global_52.Menu.Caption
  loc_F84CD5:     global_52.CAPTION = CVar(var_CC)
  loc_F84CEB:     Call global_52.Show
  loc_F84CF1:   End If
  loc_F84CF1: End If
  loc_F84CF1: Exit Sub
End Sub

Private Sub OdcOP_Click(Index As Integer) '1235698
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_DC As Variant
  loc_123516F: var_B4 = CVar("OdcOP" & "+") 'String
  loc_123518A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_123519C: var_C6 = Index
  loc_12351A5: If (var_C6 = 0) Then
  loc_12351B2:   global_52 = New FrmBookingInquiry
  loc_12351CA:   global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_12351DE:   Set var_CC = var_E0(Index)
  loc_12351E4:   Call 0.Method_OdcOP_Click0 (var_E4, var_C6)
  loc_12351EC:   MemVar_1F92200 = global_52.Menu.Caption
  loc_12351FE:   global_52.CAPTION = CVar(var_E4)
  loc_1235214:   Call global_52.Show
  loc_123521D: Else
  loc_1235223:   If (var_C6 = 1) Then
  loc_1235230:     global_52 = New HallBooking
  loc_1235248:     global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_123525C:     Set var_CC = var_E0(Index)
  loc_1235262:     Call 0.Method_OdcOP_Click0 (var_E4)
  loc_123526A:      = global_52.Menu.Caption
  loc_123527C:     global_52.CAPTION = CVar(var_E4)
  loc_1235292:     Call global_52.Show
  loc_123529B:   Else
  loc_12352A1:     If (var_C6 = 2) Then
  loc_12352AE:       global_52 = New CateringBooking
  loc_12352C6:       global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_12352DA:       Set var_CC = var_E0(Index)
  loc_12352E0:       Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12352E8:        = global_52.Menu.Caption
  loc_12352FA:       global_52.CAPTION = CVar(var_E4)
  loc_1235310:       Call global_52.Show
  loc_1235319:     Else
  loc_123531F:       If (var_C6 = 3) Then
  loc_123532C:         global_52 = New HallChefPreCosting
  loc_1235344:         global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1235358:         Set var_CC = var_E0(Index)
  loc_123535E:         Call 0.Method_OdcOP_Click0 (var_E4)
  loc_1235366:          = global_52.Menu.Caption
  loc_1235378:         global_52.CAPTION = CVar(var_E4)
  loc_123538E:         Call global_52.Show
  loc_1235397:       Else
  loc_123539D:         If (var_C6 = 4) Then
  loc_12353AA:           global_52 = New HallBill
  loc_12353C2:           global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_12353D6:           Set var_CC = var_E0(Index)
  loc_12353DC:           Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12353E4:            = global_52.Menu.Caption
  loc_12353F6:           global_52.CAPTION = CVar(var_E4)
  loc_123540C:           Call global_52.Show
  loc_1235415:         Else
  loc_123541B:           If (var_C6 = 5) Then
  loc_1235428:             global_52 = New HallAdvanceDepDialog
  loc_1235440:             global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1235454:             Set var_CC = var_E0(Index)
  loc_123545A:             Call 0.Method_OdcOP_Click0 (var_E4)
  loc_1235462:              = global_52.Menu.Caption
  loc_1235474:             global_52.CAPTION = CVar(var_E4)
  loc_123548A:             Call global_52.Show
  loc_1235493:           Else
  loc_1235499:             If (var_C6 = 6) Then
  loc_12354A6:               global_52 = New BanqAvailability
  loc_12354BE:               global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_12354D2:               Set var_CC = var_E0(Index)
  loc_12354D8:               Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12354E0:                = global_52.Menu.Caption
  loc_12354F2:               global_52.CAPTION = CVar(var_E4)
  loc_1235508:               Call global_52.Show
  loc_1235511:             Else
  loc_1235517:               If (var_C6 = 7) Then
  loc_1235524:                 global_52 = New frmGuestComments
  loc_123553C:                 global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1235550:                 Set var_CC = var_E0(Index)
  loc_1235556:                 Call 0.Method_OdcOP_Click0 (var_E4)
  loc_123555E:                  = global_52.Menu.Caption
  loc_1235570:                 global_52.CAPTION = CVar(var_E4)
  loc_1235586:                 Call global_52.Show
  loc_123558F:               Else
  loc_1235595:                 If (var_C6 = 8) Then
  loc_12355A2:                   global_52 = New HallBillEstimate
  loc_12355BA:                   global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_12355CE:                   Set var_CC = var_E0(Index)
  loc_12355D4:                   Call 0.Method_OdcOP_Click0 (var_E4)
  loc_12355DC:                    = global_52.Menu.Caption
  loc_12355EE:                   global_52.CAPTION = CVar(var_E4)
  loc_1235604:                   Call global_52.Show
  loc_123560D:                 Else
  loc_1235613:                   If (var_C6 = 9) Then
  loc_1235620:                     global_52 = New HallAdvanceDepDialog
  loc_1235633:                     global_52.AdvType = "AD"
  loc_1235646:                     global_52.OpenMode = 2
  loc_1235659:                     global_52.OpenType = 6
  loc_123566E:                     global_52.MDIRestCode = CVar(MemVar_1F92070 & "ODC")
  loc_1235675:                     var_DC = 1
  loc_1235686:                     Call global_52.Show
  loc_123568C:                   End If
  loc_123568C:                 End If
  loc_123568C:               End If
  loc_123568C:             End If
  loc_123568C:           End If
  loc_123568C:         End If
  loc_123568C:       End If
  loc_123568C:     End If
  loc_123568C:   End If
  loc_123568C: End If
  loc_1235691: global_52 = Nothing
  loc_1235695: Exit Sub
End Sub

Private Sub OdcRep_Click(Index As Integer) '11C4F58
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_11C4B03: var_B4 = CVar("OdcRep" & "+") 'String
  loc_11C4B1E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11C4B3A: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_11C4B4A: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_11C4B59: var_D2 = Index
  loc_11C4B62: If (var_D2 = 0) Then
  loc_11C4B6F:   global_52 = New rHallRepView
  loc_11C4B82:   global_52.GRepFormName = "SalesRegister"
  loc_11C4B93:   Set var_D8 = var_FC(Index)
  loc_11C4B99:   Call 0.Method_OdcRep_Click0 (var_CC, var_D2)
  loc_11C4BA1:   MemVar_1F92200 = global_52.Menu.Caption
  loc_11C4BB3:   global_52.CAPTION = CVar(var_CC)
  loc_11C4BC9:   Call global_52.Show
  loc_11C4BD2: Else
  loc_11C4BD8:   If (var_D2 = 1) Then
  loc_11C4BE5:     global_52 = New rHallRepView
  loc_11C4BF8:     global_52.GRepFormName = "PartyOutStanding"
  loc_11C4C09:     Set var_D8 = var_FC(Index)
  loc_11C4C0F:     Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4C17:      = global_52.Menu.Caption
  loc_11C4C29:     global_52.CAPTION = CVar(var_CC)
  loc_11C4C3F:     Call global_52.Show
  loc_11C4C48:   Else
  loc_11C4C4E:     If (var_D2 = 2) Then
  loc_11C4C5B:       global_52 = New rHallRepView
  loc_11C4C6E:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_11C4C7F:       Set var_D8 = var_FC(Index)
  loc_11C4C85:       Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4C8D:        = global_52.Menu.Caption
  loc_11C4C9F:       global_52.CAPTION = CVar(var_CC)
  loc_11C4CB5:       Call global_52.Show
  loc_11C4CBE:     Else
  loc_11C4CC4:       If (var_D2 = 3) Then
  loc_11C4CD1:         global_52 = New rHallRepView
  loc_11C4CE4:         global_52.GRepFormName = "CashierCollection"
  loc_11C4CF4:         global_52.CAPTION = "Cashier Report"
  loc_11C4D00:         Call global_52.Show
  loc_11C4D09:       Else
  loc_11C4D0F:         If (var_D2 = 4) Then
  loc_11C4D1C:           global_52 = New rHallRepView
  loc_11C4D2F:           global_52.GRepFormName = "BookingDetail"
  loc_11C4D40:           Set var_D8 = var_FC(Index)
  loc_11C4D46:           Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4D4E:            = global_52.Menu.Caption
  loc_11C4D60:           global_52.CAPTION = CVar(var_CC)
  loc_11C4D76:           Call global_52.Show
  loc_11C4D7F:         Else
  loc_11C4D85:           If (var_D2 = 5) Then
  loc_11C4D92:             global_52 = New rHallRepView
  loc_11C4DA5:             global_52.GRepFormName = "SettleRepHall"
  loc_11C4DB6:             Set var_D8 = var_FC(Index)
  loc_11C4DBC:             Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4DC4:              = global_52.Menu.Caption
  loc_11C4DD6:             global_52.CAPTION = CVar(var_CC)
  loc_11C4DEC:             Call global_52.Show
  loc_11C4DF5:           Else
  loc_11C4DFB:             If (var_D2 = 6) Then
  loc_11C4E08:               global_52 = New rHallRepView
  loc_11C4E1B:               global_52.GRepFormName = "TaxReportHall"
  loc_11C4E2C:               Set var_D8 = var_FC(Index)
  loc_11C4E32:               Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4E3A:                = global_52.Menu.Caption
  loc_11C4E4C:               global_52.CAPTION = CVar(var_CC)
  loc_11C4E62:               Call global_52.Show
  loc_11C4E6B:             Else
  loc_11C4E71:               If (var_D2 = 7) Then
  loc_11C4E7E:                 global_52 = New rHallRepView
  loc_11C4E91:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_11C4EA2:                 Set var_D8 = var_FC(Index)
  loc_11C4EA8:                 Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4EB0:                  = global_52.Menu.Caption
  loc_11C4EC2:                 global_52.CAPTION = CVar(var_CC)
  loc_11C4ED8:                 Call global_52.Show
  loc_11C4EE1:               Else
  loc_11C4EE7:                 If (var_D2 = 8) Then
  loc_11C4EF4:                   global_52 = New rHallRepView
  loc_11C4F07:                   global_52.GRepFormName = "CoverAnalysis"
  loc_11C4F18:                   Set var_D8 = var_FC(Index)
  loc_11C4F1E:                   Call 0.Method_OdcRep_Click0 (var_CC)
  loc_11C4F26:                    = global_52.Menu.Caption
  loc_11C4F38:                   global_52.CAPTION = CVar(var_CC)
  loc_11C4F4E:                   Call global_52.Show
  loc_11C4F54:                 End If
  loc_11C4F54:               End If
  loc_11C4F54:             End If
  loc_11C4F54:           End If
  loc_11C4F54:         End If
  loc_11C4F54:       End If
  loc_11C4F54:     End If
  loc_11C4F54:   End If
  loc_11C4F54: End If
  loc_11C4F54: Exit Sub
End Sub

Private Sub PayOpr_Click(Index As Integer) '10802A4
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_1080007: var_B4 = CVar("PayOpr" & "+") 'String
  loc_1080022: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1080034: var_C6 = Index
  loc_108003D: If (var_C6 = 0) Then
  loc_108004A:   global_52 = New prAttend
  loc_108005E:   Set var_CC = var_D0(Index)
  loc_1080064:   Call 0.Method_PayOpr_Click0 (var_D4, var_C6)
  loc_108006C:   MemVar_1F92200 = prAttend.Menu.Caption
  loc_108007E:   global_52.CAPTION = CVar(var_D4)
  loc_1080094:   Call global_52.Show
  loc_108009D: Else
  loc_10800A3:   If (var_C6 = 1) Then
  loc_10800B0:     global_52 = New PrAttend1
  loc_10800C4:     Set var_CC = var_D0(Index)
  loc_10800CA:     Call 0.Method_PayOpr_Click0 (var_D4)
  loc_10800D2:      = PrAttend1.Menu.Caption
  loc_10800E4:     global_52.CAPTION = CVar(var_D4)
  loc_10800FA:     Call global_52.Show
  loc_1080103:   Else
  loc_1080109:     If (var_C6 = 2) Then
  loc_1080116:       global_52 = New PrLoan
  loc_108012A:       Set var_CC = var_D0(Index)
  loc_1080130:       Call 0.Method_PayOpr_Click0 (var_D4)
  loc_1080138:        = PrLoan.Menu.Caption
  loc_108014A:       global_52.CAPTION = CVar(var_D4)
  loc_1080160:       Call global_52.Show
  loc_1080169:     Else
  loc_108016F:       If (var_C6 = 3) Then
  loc_108017C:         global_52 = New prOverTime
  loc_1080190:         Set var_CC = var_D0(Index)
  loc_1080196:         Call 0.Method_PayOpr_Click0 (var_D4)
  loc_108019E:          = prOverTime.Menu.Caption
  loc_10801B0:         global_52.CAPTION = CVar(var_D4)
  loc_10801C6:         Call global_52.Show
  loc_10801CF:       Else
  loc_10801D5:         If (var_C6 = 4) Then
  loc_10801E2:           global_52 = New PrLeavench
  loc_10801F6:           Set var_CC = var_D0(Index)
  loc_10801FC:           Call 0.Method_PayOpr_Click0 (var_D4)
  loc_1080204:            = PrLeavench.Menu.Caption
  loc_1080216:           global_52.CAPTION = CVar(var_D4)
  loc_108022C:           Call global_52.Show
  loc_1080235:         Else
  loc_108023B:           If (var_C6 = 5) Then
  loc_1080248:             global_52 = New prSalCreate
  loc_108025C:             Set var_CC = var_D0(Index)
  loc_1080262:             Call 0.Method_PayOpr_Click0 (var_D4)
  loc_108026A:              = prSalCreate.Menu.Caption
  loc_108027C:             global_52.CAPTION = CVar(var_D4)
  loc_1080292:             Call global_52.Show
  loc_1080298:           End If
  loc_1080298:         End If
  loc_1080298:       End If
  loc_1080298:     End If
  loc_1080298:   End If
  loc_1080298: End If
  loc_108029D: global_52 = Nothing
  loc_10802A1: Exit Sub
End Sub

Private Sub PayRep_Click(Index As Integer) '11C540C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_11C4FAF: var_B4 = CVar("PayRep" & "+") 'String
  loc_11C4FCA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11C4FDC: var_C6 = Index
  loc_11C4FE5: If (var_C6 = 0) Then
  loc_11C4FF2:   global_52 = New rRepPayRoll
  loc_11C5005:   global_52.GRepFormName = "PaySlip"
  loc_11C5016:   Set var_CC = var_F0(Index)
  loc_11C501C:   Call 0.Method_PayRep_Click0 (var_F4, var_C6)
  loc_11C5024:   MemVar_1F92200 = global_52.Menu.Caption
  loc_11C5036:   global_52.CAPTION = CVar(var_F4)
  loc_11C504C:   Call global_52.Show
  loc_11C5055: Else
  loc_11C505B:   If (var_C6 = 1) Then
  loc_11C5068:     global_52 = New rRepPayRoll
  loc_11C507B:     global_52.GRepFormName = "PayrollReg"
  loc_11C508C:     Set var_CC = var_F0(Index)
  loc_11C5092:     Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C509A:      = global_52.Menu.Caption
  loc_11C50AC:     global_52.CAPTION = CVar(var_F4)
  loc_11C50C2:     Call global_52.Show
  loc_11C50CB:   Else
  loc_11C50D1:     If (var_C6 = 2) Then
  loc_11C50DE:       global_52 = New rRepPayRoll
  loc_11C50F1:       global_52.GRepFormName = "LoanReg"
  loc_11C5102:       Set var_CC = var_F0(Index)
  loc_11C5108:       Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C5110:        = global_52.Menu.Caption
  loc_11C5122:       global_52.CAPTION = CVar(var_F4)
  loc_11C5138:       Call global_52.Show
  loc_11C5141:     Else
  loc_11C5147:       If (var_C6 = 3) Then
  loc_11C5154:         global_52 = New rRepPayRoll
  loc_11C5167:         global_52.GRepFormName = "LoanAdvSumm"
  loc_11C5178:         Set var_CC = var_F0(Index)
  loc_11C517E:         Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C5186:          = global_52.Menu.Caption
  loc_11C5198:         global_52.CAPTION = CVar(var_F4)
  loc_11C51AE:         Call global_52.Show
  loc_11C51B7:       Else
  loc_11C51BD:         If (var_C6 = 4) Then
  loc_11C51CA:           global_52 = New rRepPayRoll
  loc_11C51DD:           global_52.GRepFormName = "LoanLedg"
  loc_11C51EE:           Set var_CC = var_F0(Index)
  loc_11C51F4:           Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C51FC:            = global_52.Menu.Caption
  loc_11C520E:           global_52.CAPTION = CVar(var_F4)
  loc_11C5224:           Call global_52.Show
  loc_11C522D:         Else
  loc_11C5233:           If (var_C6 = 5) Then
  loc_11C5240:             global_52 = New rRepPayRoll
  loc_11C5253:             global_52.GRepFormName = "AttendanceRep"
  loc_11C5264:             Set var_CC = var_F0(Index)
  loc_11C526A:             Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C5272:              = global_52.Menu.Caption
  loc_11C5284:             global_52.CAPTION = CVar(var_F4)
  loc_11C529A:             Call global_52.Show
  loc_11C52A3:           Else
  loc_11C52A9:             If (var_C6 = 6) Then
  loc_11C52B6:               global_52 = New rRepPayRoll
  loc_11C52C9:               global_52.GRepFormName = "GratuityReport"
  loc_11C52DA:               Set var_CC = var_F0(Index)
  loc_11C52E0:               Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C52E8:                = global_52.Menu.Caption
  loc_11C52FA:               global_52.CAPTION = CVar(var_F4)
  loc_11C5310:               Call global_52.Show
  loc_11C5319:             Else
  loc_11C531F:               If (var_C6 = 7) Then
  loc_11C532C:                 global_52 = New rRepPayRoll
  loc_11C533F:                 global_52.GRepFormName = "PFStatement"
  loc_11C5350:                 Set var_CC = var_F0(Index)
  loc_11C5356:                 Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C535E:                  = global_52.Menu.Caption
  loc_11C5370:                 global_52.CAPTION = CVar(var_F4)
  loc_11C5386:                 Call global_52.Show
  loc_11C538F:               Else
  loc_11C5395:                 If (var_C6 = 8) Then
  loc_11C53A2:                   global_52 = New rRepPayRoll
  loc_11C53B5:                   global_52.GRepFormName = "FormC"
  loc_11C53C6:                   Set var_CC = var_F0(Index)
  loc_11C53CC:                   Call 0.Method_PayRep_Click0 (var_F4)
  loc_11C53D4:                    = global_52.Menu.Caption
  loc_11C53E6:                   global_52.CAPTION = CVar(var_F4)
  loc_11C53FC:                   Call global_52.Show
  loc_11C5402:                 End If
  loc_11C5402:               End If
  loc_11C5402:             End If
  loc_11C5402:           End If
  loc_11C5402:         End If
  loc_11C5402:       End If
  loc_11C5402:     End If
  loc_11C5402:   End If
  loc_11C5402: End If
  loc_11C5407: global_52 = Nothing
  loc_11C540B: Exit Sub
End Sub

Private Sub CCenterMas_Click(Index As Integer) '11F05C0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_11F012F: var_B4 = CVar("CCenterMas" & "+") 'String
  loc_11F014A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11F015C: var_C6 = Index
  loc_11F0165: If (var_C6 = 0) Then
  loc_11F0172:   global_52 = New FrmParty
  loc_11F0186:   Set var_CC = var_D0(Index)
  loc_11F018C:   Call 0.Method_CCenterMas_Click0 (var_D4, var_C6)
  loc_11F0194:   MemVar_1F92200 = FrmParty.Menu.Caption
  loc_11F01A6:   global_52.CAPTION = CVar(var_D4)
  loc_11F01BC:   Call global_52.Show
  loc_11F01C5: Else
  loc_11F01CB:   If (var_C6 = 1) Then
  loc_11F01D8:     global_52 = New DepartMast
  loc_11F01EC:     Set var_CC = var_D0(Index)
  loc_11F01F2:     Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F01FA:      = DepartMast.Menu.Caption
  loc_11F020C:     global_52.CAPTION = CVar(var_D4)
  loc_11F0222:     Call global_52.Show
  loc_11F022B:   Else
  loc_11F0231:     If (var_C6 = 2) Then
  loc_11F023E:       global_52 = New FrmItemGroupMastRaw
  loc_11F0252:       Set var_CC = var_D0(Index)
  loc_11F0258:       Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F0260:        = FrmItemGroupMastRaw.Menu.Caption
  loc_11F0272:       global_52.CAPTION = CVar(var_D4)
  loc_11F0288:       Call global_52.Show
  loc_11F0291:     Else
  loc_11F0297:       If (var_C6 = 3) Then
  loc_11F02A4:         global_52 = New FrmItemCatRaw
  loc_11F02B8:         Set var_CC = var_D0(Index)
  loc_11F02BE:         Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F02C6:          = FrmItemCatRaw.Menu.Caption
  loc_11F02D8:         global_52.CAPTION = CVar(var_D4)
  loc_11F02EE:         Call global_52.Show
  loc_11F02F7:       Else
  loc_11F02FD:         If (var_C6 = 4) Then
  loc_11F030A:           global_52 = New FrmItemMastRaw
  loc_11F031E:           Set var_CC = var_D0(Index)
  loc_11F0324:           Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F032C:            = FrmItemMastRaw.Menu.Caption
  loc_11F033E:           global_52.CAPTION = CVar(var_D4)
  loc_11F0354:           Call global_52.Show
  loc_11F035D:         Else
  loc_11F0363:           If (var_C6 = 5) Then
  loc_11F0370:             global_52 = New FrmConsumMast
  loc_11F0384:             Set var_CC = var_D0(Index)
  loc_11F038A:             Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F0392:              = FrmConsumMast.Menu.Caption
  loc_11F03A4:             global_52.CAPTION = CVar(var_D4)
  loc_11F03BA:             Call global_52.Show
  loc_11F03C3:           Else
  loc_11F03C9:             If (var_C6 = 6) Then
  loc_11F03D6:               global_52 = New DepartSundry
  loc_11F03EA:               Set var_CC = var_D0(Index)
  loc_11F03F0:               Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F03F8:                = DepartSundry.Menu.Caption
  loc_11F040A:               global_52.CAPTION = CVar(var_D4)
  loc_11F0420:               Call global_52.Show
  loc_11F0429:             Else
  loc_11F042F:               If (var_C6 = 7) Then
  loc_11F043C:                 global_52 = New Godown
  loc_11F0450:                 Set var_CC = var_D0(Index)
  loc_11F0456:                 Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F045E:                  = Godown.Menu.Caption
  loc_11F0470:                 global_52.CAPTION = CVar(var_D4)
  loc_11F0486:                 Call global_52.Show
  loc_11F048F:               Else
  loc_11F0495:                 If (var_C6 = 8) Then
  loc_11F04A2:                   global_52 = New FrmOPStock
  loc_11F04B6:                   Set var_CC = var_D0(Index)
  loc_11F04BC:                   Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F04C4:                    = FrmOPStock.Menu.Caption
  loc_11F04D6:                   global_52.CAPTION = CVar(var_D4)
  loc_11F04EC:                   Call global_52.Show
  loc_11F04F5:                 Else
  loc_11F04FB:                   If (var_C6 = 9) Then
  loc_11F0508:                     global_52 = New FrmItemMast
  loc_11F051C:                     Set var_CC = var_D0(Index)
  loc_11F0522:                     Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F052A:                      = FrmItemMast.Menu.Caption
  loc_11F053C:                     global_52.CAPTION = CVar(var_D4)
  loc_11F0552:                     Call global_52.Show
  loc_11F055B:                   Else
  loc_11F0561:                     If (var_C6 = &HB) Then
  loc_11F056E:                       global_52 = New frmPurEnviro
  loc_11F0582:                       Set var_CC = var_D0(Index)
  loc_11F0588:                       Call 0.Method_CCenterMas_Click0 (var_D4)
  loc_11F0590:                        = frmPurEnviro.Menu.Caption
  loc_11F05A2:                       global_52.CAPTION = CVar(var_D4)
  loc_11F05B8:                       Call global_52.Show
  loc_11F05BE:                     End If
  loc_11F05BE:                   End If
  loc_11F05BE:                 End If
  loc_11F05BE:               End If
  loc_11F05BE:             End If
  loc_11F05BE:           End If
  loc_11F05BE:         End If
  loc_11F05BE:       End If
  loc_11F05BE:     End If
  loc_11F05BE:   End If
  loc_11F05BE: End If
  loc_11F05BE: Exit Sub
End Sub

Public Sub CmdSubMenu_UnknownEvent_9(Index As Integer) '12350E8
  'Data Table: 5C8378
  Dim var_A4 As String
  Dim unk_5C83B4 As Connection15
  Dim var_E0 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_90 As Field20
  loc_1234C0A: Set var_8C = Me.CmdSubMenu
  loc_1234C10: Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index, var_90, "Select OPT1,OPT2,OPT3,OPT4,FLAG,CODE from MenuHelp Where Code=")
  loc_1234C18: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_DC)
  loc_1234C20: var_A4 = CStr(-1)
  loc_1234C50: unk_5C83B4.Execute var_E0 & var_A4 & " And UserName='" & MemVar_1F920C8 & "' And CompCode='" & MemVar_1F92128 & "'", , 
  loc_1234C5B: Set var_88 = var_E0
  loc_1234C89: Set var_8C = Me.CmdSubMenu
  loc_1234C8F: Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1234C97: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_90)
  loc_1234CAC: Me.PictSubMenu.Tag = CStr()
  loc_1234CFC: If (var_88.Fields.Item("Flag").Value = "N") Then
  loc_1234D3B:   If CBool(var_88.Fields.Item("Opt1").Value <> 0) Then
  loc_1234D7A:     If CBool(var_88.Fields.Item("Opt2").Value <> 0) Then
  loc_1234DB9:       If CBool(var_88.Fields.Item("Opt3").Value <> 0) Then
  loc_1234DD6:         var_90 = var_88.Fields.Item("Opt4")
  loc_1234DF8:         If CBool(var_90.Value <> 0) Then
  loc_1234DFB:           GoTo loc_1234E35
  loc_1234DFE:         End If
  loc_1234E08:         Set var_8C = Me.CmdSubMenu
  loc_1234E0E:         Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1234E16:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1234E24:         global_88 = CStr()
  loc_1234E35:         ' Referenced from: 1234DFB
  loc_1234E38:       Else
  loc_1234E42:         Set var_8C = Me.CmdSubMenu
  loc_1234E48:         Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1234E50:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1234E5E:         global_84 = CStr()
  loc_1234E6F:       End If
  loc_1234E72:     Else
  loc_1234E7C:       Set var_8C = Me.CmdSubMenu
  loc_1234E82:       Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1234E8A:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1234E98:       global_80 = CStr()
  loc_1234EA9:     End If
  loc_1234EAC:   Else
  loc_1234EB6:     Set var_8C = Me.CmdSubMenu
  loc_1234EBC:     Call 0.Method_CmdSubMenu_UnknownEvent_90 (Index)
  loc_1234EC4:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_1234ED2:     global_76 = CStr()
  loc_1234EE3:   End If
  loc_1234F53:   var_138 = var_88.Fields.Item("Opt3").Value
  loc_1234F7A:   var_14C = var_88.Fields.Item("Opt4").Value
  loc_1234F9B:   Call Proc_1_121_133085C(CInt(var_88.Fields.Item("Opt1").Value), CInt(var_88.Fields.Item("Opt2").Value))
  loc_1234FC1: Else
  loc_1234FD9:   If (global_76 <> vbNullString) Then
  loc_1234FF6:     global_68 = global_72 & " > " & global_76
  loc_1235001:   End If
  loc_123500C:   If (global_80 <> vbNullString) Then
  loc_1235029:     global_68 = global_68 & " > " & global_80
  loc_1235034:   End If
  loc_123503F:   If (global_84 <> vbNullString) Then
  loc_123505C:     global_68 = global_68 & " > " & global_84
  loc_1235067:   End If
  loc_1235072:   If (global_88 <> vbNullString) Then
  loc_123508F:     global_68 = global_68 & " > " & global_88
  loc_123509A:   End If
  loc_12350CF:   Proc_165_2_1E4B100(CLng(var_88.Fields.Item("Code").Value), global_68)
  loc_12350DE: End If
  loc_12350E3: Set var_88 = Nothing
  loc_12350E6: Exit Sub
End Sub

Public Sub CmdMainMenu_UnknownEvent_9(Index As Integer) 'F84E94
  'Data Table: 5C8378
  Dim var_88 As Label
  loc_F84D51: Set var_88 = Me.CmdSubMenu
  loc_F84D57: Call 0.Method_CmdMainMenu_UnknownEvent_90 (0, var_8C)
  loc_F84D5F: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_F84D84: Set var_88 = Me.CmdMainMenu
  loc_F84D8A: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index, var_8C, 0)
  loc_F84D92: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(0)
  loc_F84DA2: Call Proc_1_121_133085C(CInt(CStr(0)))
  loc_F84DBE: Set var_88 = Me.CmdMainMenu
  loc_F84DC4: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index)
  loc_F84DCC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_8C)
  loc_F84DE1: Me.PictMainMenu.Tag = CStr()
  loc_F84DFF: Set var_88 = Me.CmdMainMenu
  loc_F84E05: Call 0.Method_CmdMainMenu_UnknownEvent_90 (Index)
  loc_F84E0D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_8C)
  loc_F84E1B: global_72 = CStr()
  loc_F84E32: global_76 = vbNullString
  loc_F84E3C: global_80 = vbNullString
  loc_F84E46: global_84 = vbNullString
  loc_F84E50: global_88 = vbNullString
  loc_F84E6F: Call 0.Method_arg_54 (MemVar_1F92130 & " { " & MemVar_1F92014 & " }")
  loc_F84E89: Me.LblCompany.Visible = False
  loc_F84E91: Exit Sub
End Sub

Private Sub fame_Click(Index As Integer) '12BD624
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_E4 As Variant
  Dim var_D0 As Menu
  loc_12BCFCF: var_B4 = CVar("fame" & "+") 'String
  loc_12BCFE5: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_12BCFEA: MemVar_1F92200 = CStr(var_C4)
  loc_12BCFF9: On Error Goto loc_12BD5DD
  loc_12BCFFF: var_C6 = Index
  loc_12BD008: If (var_C6 = 0) Then
  loc_12BD015:   global_52 = New FaGrEnt
  loc_12BD029:   Set var_CC = var_D0(Index)
  loc_12BD02F:   Call 0.Method_fame_Click0 (var_D4, var_C6)
  loc_12BD037:   MemVar_1F92200 = FaGrEnt.Menu.Caption
  loc_12BD049:   global_52.CAPTION = CVar(var_D4)
  loc_12BD05F:   Call global_52.Show
  loc_12BD071:   global_52.WindowState = 2
  loc_12BD078: Else
  loc_12BD07E:   If (var_C6 = 1) Then
  loc_12BD08B:     global_52 = New FaSubGroup
  loc_12BD09F:     Set var_CC = var_D0(Index)
  loc_12BD0A5:     Call 0.Method_fame_Click0 (var_D4)
  loc_12BD0AD:      = FaSubGroup.Menu.Caption
  loc_12BD0BF:     global_52.CAPTION = CVar(var_D4)
  loc_12BD0D5:     Call global_52.Show
  loc_12BD0E7:     global_52.WindowState = 2
  loc_12BD0EE:   Else
  loc_12BD0F4:     If (var_C6 = 2) Then
  loc_12BD101:       global_52 = New FaNarrMast
  loc_12BD115:       Set var_CC = var_D0(Index)
  loc_12BD11B:       Call 0.Method_fame_Click0 (var_D4)
  loc_12BD123:        = FaNarrMast.Menu.Caption
  loc_12BD135:       global_52.CAPTION = CVar(var_D4)
  loc_12BD14B:       Call global_52.Show
  loc_12BD15D:       global_52.WindowState = 2
  loc_12BD164:     Else
  loc_12BD16A:       If (var_C6 = 3) Then
  loc_12BD177:         global_52 = New FaTDSCat
  loc_12BD18B:         Set var_CC = var_D0(Index)
  loc_12BD191:         Call 0.Method_fame_Click0 (var_D4)
  loc_12BD199:          = FaTDSCat.Menu.Caption
  loc_12BD1AB:         global_52.CAPTION = CVar(var_D4)
  loc_12BD1C1:         Call global_52.Show
  loc_12BD1C7:         var_E4 = 2
  loc_12BD1D3:         global_52.WindowState = var_E4
  loc_12BD1DA:       Else
  loc_12BD1E0:         If (var_C6 = 4) Then
  loc_12BD1F1:           Call 0.Method_arg_2B0 (var_E4)
  loc_12BD203:           Set var_CC = var_D0(Index)
  loc_12BD209:           Call 0.Method_fame_Click0 (var_D4)
  loc_12BD211:           var_F4 = FaEnvron.Menu.Caption
  loc_12BD21F:           Call 0.Method_arg_54 (var_D4)
  loc_12BD236:           Call 0.Method_arg_9C (2)
  loc_12BD240:           MemVar_1F92818 = Nothing
  loc_12BD247:         Else
  loc_12BD24D:           If (var_C6 = 5) Then
  loc_12BD25D:             Set var_CC = Me.fame
  loc_12BD263:             Call 0.Method_fame_Click0 (Index, var_D0)
  loc_12BD26B:             var_D4 = var_D0.Caption
  loc_12BD279:             Call 0.Method_arg_54 (var_D4)
  loc_12BD296:             Call 0.Method_arg_2B0 (var_E4)
  loc_12BD2A3:             Call 0.Method_arg_9C (2)
  loc_12BD2AD:             MemVar_1F9282C = Nothing
  loc_12BD2B4:           Else
  loc_12BD2BA:             If (var_C6 = 6) Then
  loc_12BD2BD:               GoTo loc_12BD5D3
  loc_12BD2C0:             End If
  loc_12BD2C6:             If (var_C6 = 7) Then
  loc_12BD2C9:               GoTo loc_12BD5D3
  loc_12BD2CC:             End If
  loc_12BD2D2:             If (var_C6 = 8) Then
  loc_12BD2DF:               global_52 = New FaCurrBalUpdate
  loc_12BD2F3:               Set var_CC = var_D0(Index)
  loc_12BD2F9:               Call 0.Method_fame_Click0 (var_D4)
  loc_12BD301:               var_F4 = FaCurrBalUpdate.Menu.Caption
  loc_12BD313:               global_52.CAPTION = CVar(var_D4)
  loc_12BD329:               Call global_52.Show
  loc_12BD33B:               global_52.WindowState = 2
  loc_12BD342:             Else
  loc_12BD348:               If (var_C6 = 9) Then
  loc_12BD355:                 global_52 = New FaCountryMast
  loc_12BD369:                 Set var_CC = var_D0(Index)
  loc_12BD36F:                 Call 0.Method_fame_Click0 (var_D4)
  loc_12BD377:                  = FaCountryMast.Menu.Caption
  loc_12BD389:                 global_52.CAPTION = CVar(var_D4)
  loc_12BD39F:                 Call global_52.Show
  loc_12BD3B1:                 global_52.WindowState = 2
  loc_12BD3B8:               Else
  loc_12BD3BE:                 If (var_C6 = &HA) Then
  loc_12BD3CB:                   global_52 = New FaStateMast
  loc_12BD3DF:                   Set var_CC = var_D0(Index)
  loc_12BD3E5:                   Call 0.Method_fame_Click0 (var_D4)
  loc_12BD3ED:                    = FaStateMast.Menu.Caption
  loc_12BD3FF:                   global_52.CAPTION = CVar(var_D4)
  loc_12BD415:                   Call global_52.Show
  loc_12BD427:                   global_52.WindowState = 2
  loc_12BD42E:                 Else
  loc_12BD434:                   If (var_C6 = &HB) Then
  loc_12BD441:                     global_52 = New FaCityMast
  loc_12BD455:                     Set var_CC = var_D0(Index)
  loc_12BD45B:                     Call 0.Method_fame_Click0 (var_D4)
  loc_12BD463:                      = FaCityMast.Menu.Caption
  loc_12BD475:                     global_52.CAPTION = CVar(var_D4)
  loc_12BD48B:                     Call global_52.Show
  loc_12BD49D:                     global_52.WindowState = 2
  loc_12BD4A4:                   Else
  loc_12BD4AA:                     If (var_C6 = &HC) Then
  loc_12BD4B7:                       global_52 = New EmptyInbox
  loc_12BD4CB:                       Set var_CC = var_D0(Index)
  loc_12BD4D1:                       Call 0.Method_fame_Click0 (var_D4)
  loc_12BD4D9:                        = EmptyInbox.Menu.Caption
  loc_12BD4EB:                       global_52.CAPTION = CVar(var_D4)
  loc_12BD501:                       Call global_52.Show
  loc_12BD50A:                     Else
  loc_12BD510:                       If (var_C6 = &HD) Then
  loc_12BD51D:                         global_52 = New AccountMerg
  loc_12BD531:                         Set var_CC = var_D0(Index)
  loc_12BD537:                         Call 0.Method_fame_Click0 (var_D4)
  loc_12BD53F:                          = AccountMerg.Menu.Caption
  loc_12BD551:                         global_52.CAPTION = CVar(var_D4)
  loc_12BD567:                         Call global_52.Show
  loc_12BD570:                       Else
  loc_12BD576:                         If (var_C6 = &HE) Then
  loc_12BD583:                           global_52 = New FrmSerialiseVr
  loc_12BD597:                           Set var_CC = var_D0(Index)
  loc_12BD59D:                           Call 0.Method_fame_Click0 (var_D4)
  loc_12BD5A5:                            = FrmSerialiseVr.Menu.Caption
  loc_12BD5B7:                           global_52.CAPTION = CVar(var_D4)
  loc_12BD5CD:                           Call global_52.Show
  loc_12BD5D3:                         End If
  loc_12BD5D3:                       End If
  loc_12BD5D3:                     End If
  loc_12BD5D3:                   End If
  loc_12BD5D3:                 End If
  loc_12BD5D3:               End If
  loc_12BD5D3:               ' Referenced from:             12BD2C9
  loc_12BD5D3:               ' Referenced from:             12BD2BD
  loc_12BD5D3:             End If
  loc_12BD5D3:           End If
  loc_12BD5D3:         End If
  loc_12BD5D3:       End If
  loc_12BD5D3:     End If
  loc_12BD5D3:   End If
  loc_12BD5D3: End If
  loc_12BD5D8: global_52 = Nothing
  loc_12BD5DC: Exit Sub
  loc_12BD5DD: ' Referenced from: 12BCFF9
  loc_12BD5E5: Set var_CC = Err()
  loc_12BD5EB: Call 0.Method_arg_2C (var_D4)
  loc_12BD60C: MsgBox(CVar(var_D4), &H40, "Information", var_B4, var_C4)
  loc_12BD61F: Exit Sub
  loc_12BD620: Exit Sub
End Sub

Private Sub FAREPORTD_Click(Index As Integer) 'F7D8E8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CA As Integer
  loc_F7D7AF: var_B4 = CVar("FAREPORTD" & "+") 'String
  loc_F7D7CA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F7D7DC: var_CA = Index
  loc_F7D7E5: If (var_CA = 0) Then
  loc_F7D7EB:   var_C8 = "BALSHEET"
  loc_F7D7F1: Else
  loc_F7D7F7:   If (var_CA = 1) Then
  loc_F7D7FD:     var_C8 = "PROFLOSS"
  loc_F7D803:   Else
  loc_F7D809:     If (var_CA = 2) Then
  loc_F7D80F:       var_C8 = "GROUPTRIAL"
  loc_F7D815:     Else
  loc_F7D81B:       If (var_CA = 3) Then
  loc_F7D821:         var_C8 = "LEDTRIAL"
  loc_F7D827:       Else
  loc_F7D82D:         If (var_CA = 4) Then
  loc_F7D833:           var_C8 = "CASHFLOW"
  loc_F7D839:         Else
  loc_F7D83F:           If (var_CA = 5) Then
  loc_F7D845:             var_C8 = "FUNDFLOW"
  loc_F7D84B:           Else
  loc_F7D851:             If (var_CA = 6) Then
  loc_F7D857:               var_C8 = "CASHBANKSUM"
  loc_F7D85A:             End If
  loc_F7D85A:           End If
  loc_F7D85A:         End If
  loc_F7D85A:       End If
  loc_F7D85A:     End If
  loc_F7D85A:   End If
  loc_F7D85A: End If
  loc_F7D862: If (var_C8 <> vbNullString) Then
  loc_F7D86F:   global_52 = New FaMagic
  loc_F7D880:   global_52.ShowSiteWise = True
  loc_F7D891:   global_52.OpenType = CVar(var_C8)
  loc_F7D8A2:   Set var_D0 = var_F4(Index)
  loc_F7D8A8:   Call 0.Method_FAREPORTD_Click0 (var_F8, var_CA)
  loc_F7D8B0:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F7D8C2:   global_52.CAPTION = CVar(var_F8)
  loc_F7D8D8:   Call global_52.Show
  loc_F7D8DE: End If
  loc_F7D8E3: global_52 = Nothing
  loc_F7D8E7: Exit Sub
End Sub

Private Sub fate_Click(Index As Integer) '10C4E38
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_10C4B53: var_B4 = CVar("fate" & "+") 'String
  loc_10C4B69: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_10C4B6E: MemVar_1F92200 = CStr(var_C4)
  loc_10C4B7D: On Error Goto loc_10C4DF1
  loc_10C4B8C: If (Index = 0) Then
  loc_10C4B99:   global_52 = New FaVrEnt
  loc_10C4BAD:   Set var_CC = Me.TxtCHno
  loc_10C4BB3:   Call 0.Method_fate_Click0 (Index, var_D0, var_D4)
  loc_10C4BBB:   var_C6 = FaVrEnt.TxtCHno.Caption
  loc_10C4BCD:   global_52.CAPTION = CVar(var_D4)
  loc_10C4BE3:   Call global_52.Show
  loc_10C4BEC: Else
  loc_10C4BF2:   If (var_C6 = 1) Then
  loc_10C4BFF:     global_52 = New FaAdjust
  loc_10C4C13:     Set var_CC = Me.TxtNARATION1
  loc_10C4C19:     Call 0.Method_fate_Click0 (Index, var_D0)
  loc_10C4C21:     var_D4 = FaAdjust.TxtNARATION1.Caption
  loc_10C4C33:     global_52.CAPTION = CVar(var_D4)
  loc_10C4C49:     Call global_52.Show
  loc_10C4C52:   Else
  loc_10C4C58:     If (var_C6 = 2) Then
  loc_10C4C65:       global_52 = New FaAdjustDel
  loc_10C4C79:       Set var_CC = var_D0(Index)
  loc_10C4C7F:       Call 0.Method_fate_Click0 (var_D4)
  loc_10C4C87:       MemVar_1F92200 = FaAdjustDel.Menu.Caption
  loc_10C4C99:       global_52.CAPTION = CVar(var_D4)
  loc_10C4CAF:       Call global_52.Show
  loc_10C4CB8:     Else
  loc_10C4CBE:       If (var_C6 = 3) Then
  loc_10C4CCB:         global_52 = New FaChqClear
  loc_10C4CDF:         Set var_CC = var_D0(Index)
  loc_10C4CE5:         Call 0.Method_fate_Click0 (var_D4)
  loc_10C4CED:          = FaChqClear.Menu.Caption
  loc_10C4CFF:         global_52.CAPTION = CVar(var_D4)
  loc_10C4D15:         Call global_52.Show
  loc_10C4D1E:       Else
  loc_10C4D24:         If (var_C6 = 5) Then
  loc_10C4D31:           global_52 = New FaTDSChal
  loc_10C4D45:           Set var_CC = var_D0(Index)
  loc_10C4D4B:           Call 0.Method_fate_Click0 (var_D4)
  loc_10C4D53:            = FaTDSChal.Menu.Caption
  loc_10C4D65:           global_52.CAPTION = CVar(var_D4)
  loc_10C4D7B:           Call global_52.Show
  loc_10C4D84:         Else
  loc_10C4D8A:           If (var_C6 = 6) Then
  loc_10C4D97:             global_52 = New FaTDSCertificate
  loc_10C4DAB:             Set var_CC = var_D0(Index)
  loc_10C4DB1:             Call 0.Method_fate_Click0 (var_D4)
  loc_10C4DB9:              = FaTDSCertificate.Menu.Caption
  loc_10C4DCB:             global_52.CAPTION = CVar(var_D4)
  loc_10C4DE1:             Call global_52.Show
  loc_10C4DE7:           End If
  loc_10C4DE7:         End If
  loc_10C4DE7:       End If
  loc_10C4DE7:     End If
  loc_10C4DE7:   End If
  loc_10C4DE7: End If
  loc_10C4DEC: global_52 = Nothing
  loc_10C4DF0: Exit Sub
  loc_10C4DF1: ' Referenced from: 10C4B7D
  loc_10C4DF9: Set var_CC = Err()
  loc_10C4DFF: Call 0.Method_arg_2C (var_D4)
  loc_10C4E20: MsgBox(CVar(var_D4), &H40, "Information", var_B4, var_C4)
  loc_10C4E33: Exit Sub
  loc_10C4E34: Exit Sub
  loc_10C4E35: GoTo loc_10C5157
End Sub

Private Sub FDOTaxr_Click(Index As Integer) 'F66E84
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_F66D5F: var_B4 = CVar("FDOTaxr" & "+") 'String
  loc_F66D7A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F66D8C: var_C6 = Index
  loc_F66D95: If (var_C6 = 0) Then
  loc_F66DA2:   global_52 = New rFomRepView
  loc_F66DB5:   global_52.GRepFormName = "FOMTaxDetail"
  loc_F66DC6:   Set var_CC = var_F0(Index)
  loc_F66DCC:   Call 0.Method_FDOTaxr_Click0 (var_F4, var_C6)
  loc_F66DD4:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F66DE6:   global_52.CAPTION = CVar(var_F4)
  loc_F66DFC:   Call global_52.Show
  loc_F66E05: Else
  loc_F66E0B:   If (var_C6 = 1) Then
  loc_F66E18:     global_52 = New rFomRepView
  loc_F66E2B:     global_52.GRepFormName = "FOMTaxWiseChargeDetail"
  loc_F66E3C:     Set var_CC = var_F0(Index)
  loc_F66E42:     Call 0.Method_FDOTaxr_Click0 (var_F4)
  loc_F66E4A:      = global_52.Menu.Caption
  loc_F66E5C:     global_52.CAPTION = CVar(var_F4)
  loc_F66E72:     Call global_52.Show
  loc_F66E78:   End If
  loc_F66E78: End If
  loc_F66E7D: global_52 = Nothing
  loc_F66E81: Exit Sub
End Sub

Private Sub FDOForms_Click(Index As Integer) '124AE38
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_124A8EF: var_B4 = CVar("FDOForms" & "+") 'String
  loc_124A90A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_124A91C: var_C6 = Index
  loc_124A925: If (var_C6 = 0) Then
  loc_124A932:   global_52 = New rRepReserv
  loc_124A945:   global_52.GRepFormName = "FormCReport"
  loc_124A956:   Set var_CC = var_F0(Index)
  loc_124A95C:   Call 0.Method_FDOForms_Click0 (var_F4, var_C6)
  loc_124A964:   MemVar_1F92200 = global_52.Menu.Caption
  loc_124A976:   global_52.CAPTION = CVar(var_F4)
  loc_124A98C:   Call global_52.Show
  loc_124A995: Else
  loc_124A99B:   If (var_C6 = 1) Then
  loc_124A9A8:     global_52 = New rRepReserv
  loc_124A9BB:     global_52.GRepFormName = "Form1TourismReport"
  loc_124A9CC:     Set var_CC = var_F0(Index)
  loc_124A9D2:     Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124A9DA:      = global_52.Menu.Caption
  loc_124A9EC:     global_52.CAPTION = CVar(var_F4)
  loc_124AA02:     Call global_52.Show
  loc_124AA0B:   Else
  loc_124AA11:     If (var_C6 = 2) Then
  loc_124AA1E:       global_52 = New rRepReserv
  loc_124AA31:       global_52.GRepFormName = "Form2TourismReport"
  loc_124AA42:       Set var_CC = var_F0(Index)
  loc_124AA48:       Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AA50:        = global_52.Menu.Caption
  loc_124AA62:       global_52.CAPTION = CVar(var_F4)
  loc_124AA78:       Call global_52.Show
  loc_124AA81:     Else
  loc_124AA87:       If (var_C6 = 3) Then
  loc_124AA94:         global_52 = New rRepReserv
  loc_124AAA7:         global_52.GRepFormName = "Form5TourismReport"
  loc_124AAB8:         Set var_CC = var_F0(Index)
  loc_124AABE:         Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AAC6:          = global_52.Menu.Caption
  loc_124AAD8:         global_52.CAPTION = CVar(var_F4)
  loc_124AAEE:         Call global_52.Show
  loc_124AAF7:       Else
  loc_124AAFD:         If (var_C6 = 4) Then
  loc_124AB0A:           global_52 = New rRepReserv
  loc_124AB1D:           global_52.GRepFormName = "LuxuryTaxRegister"
  loc_124AB2E:           Set var_CC = var_F0(Index)
  loc_124AB34:           Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AB3C:            = global_52.Menu.Caption
  loc_124AB4E:           global_52.CAPTION = CVar(var_F4)
  loc_124AB64:           Call global_52.Show
  loc_124AB6D:         Else
  loc_124AB73:           If (var_C6 = 5) Then
  loc_124AB80:             global_52 = New rRepReserv
  loc_124AB93:             global_52.GRepFormName = "Form6TourismReport"
  loc_124ABA4:             Set var_CC = var_F0(Index)
  loc_124ABAA:             Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124ABB2:              = global_52.Menu.Caption
  loc_124ABC4:             global_52.CAPTION = CVar(var_F4)
  loc_124ABDA:             Call global_52.Show
  loc_124ABE3:           Else
  loc_124ABE9:             If (var_C6 = 6) Then
  loc_124ABF6:               global_52 = New rRepReserv
  loc_124AC09:               global_52.GRepFormName = "Form4TourismReport"
  loc_124AC1A:               Set var_CC = var_F0(Index)
  loc_124AC20:               Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AC28:                = global_52.Menu.Caption
  loc_124AC3A:               global_52.CAPTION = CVar(var_F4)
  loc_124AC50:               Call global_52.Show
  loc_124AC59:             Else
  loc_124AC5F:               If (var_C6 = 7) Then
  loc_124AC6C:                 global_52 = New rRepReserv
  loc_124AC7F:                 global_52.GRepFormName = "LuxuryTaxRegisterI"
  loc_124AC90:                 Set var_CC = var_F0(Index)
  loc_124AC96:                 Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AC9E:                  = global_52.Menu.Caption
  loc_124ACB0:                 global_52.CAPTION = CVar(var_F4)
  loc_124ACC6:                 Call global_52.Show
  loc_124ACCF:               Else
  loc_124ACD5:                 If (var_C6 = 8) Then
  loc_124ACE2:                   global_52 = New rRepReserv
  loc_124ACF5:                   global_52.GRepFormName = "MonthlyStatisticalReturn"
  loc_124AD06:                   Set var_CC = var_F0(Index)
  loc_124AD0C:                   Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AD14:                    = global_52.Menu.Caption
  loc_124AD26:                   global_52.CAPTION = CVar(var_F4)
  loc_124AD3C:                   Call global_52.Show
  loc_124AD45:                 Else
  loc_124AD4B:                   If (var_C6 = &HB) Then
  loc_124AD58:                     global_52 = New rRepReserv
  loc_124AD6B:                     global_52.GRepFormName = "LTFORMII"
  loc_124AD7C:                     Set var_CC = var_F0(Index)
  loc_124AD82:                     Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AD8A:                      = global_52.Menu.Caption
  loc_124AD9C:                     global_52.CAPTION = CVar(var_F4)
  loc_124ADB2:                     Call global_52.Show
  loc_124ADBB:                   Else
  loc_124ADC1:                     If (var_C6 = &HD) Then
  loc_124ADCE:                       global_52 = New rRepReserv
  loc_124ADE1:                       global_52.GRepFormName = "LTFORMIV"
  loc_124ADF2:                       Set var_CC = var_F0(Index)
  loc_124ADF8:                       Call 0.Method_FDOForms_Click0 (var_F4)
  loc_124AE00:                        = global_52.Menu.Caption
  loc_124AE12:                       global_52.CAPTION = CVar(var_F4)
  loc_124AE28:                       Call global_52.Show
  loc_124AE2E:                     End If
  loc_124AE2E:                   End If
  loc_124AE2E:                 End If
  loc_124AE2E:               End If
  loc_124AE2E:             End If
  loc_124AE2E:           End If
  loc_124AE2E:         End If
  loc_124AE2E:       End If
  loc_124AE2E:     End If
  loc_124AE2E:   End If
  loc_124AE2E: End If
  loc_124AE33: global_52 = Nothing
  loc_124AE37: Exit Sub
End Sub

Private Sub FDOMenu_Click(Index As Integer) '12AF030
  'Data Table: 5C8378
  Dim var_BC As Variant
  Dim MemVar_1F92200 As String
  Dim var_CE As Integer
  Dim var_D4 As Variant
  loc_12AEA07: var_BC = CVar("FDOMenu" & "+") 'String
  loc_12AEA22: MemVar_1F92200 = CStr(var_BC & Trim(CVar(CStr(Index))))
  loc_12AEA34: var_CE = Index
  loc_12AEA3D: If (var_CE = 0) Then
  loc_12AEA4A:   global_52 = New fdWalkInEntry
  loc_12AEA5E:   Set var_D4 = var_D8(Index)
  loc_12AEA64:   Call 0.Method_FDOMenu_Click0 (var_DC, var_CE)
  loc_12AEA6C:   MemVar_1F92200 = fdWalkInEntry.Menu.Caption
  loc_12AEA7E:   global_52.CAPTION = CVar(var_DC)
  loc_12AEA94:   Call global_52.Show
  loc_12AEA9D: Else
  loc_12AEAA3:   If (var_CE = 2) Then
  loc_12AEAB0:     global_52 = New InHouseGuestFolio
  loc_12AEAC4:     Set var_D4 = var_D8(Index)
  loc_12AEACA:     Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEAD2:      = InHouseGuestFolio.Menu.Caption
  loc_12AEAE4:     global_52.CAPTION = CVar(var_DC)
  loc_12AEAFF:     global_52.PGuestName = CVar(var_8C)
  loc_12AEB10:     global_52.PRoomNo = CVar(var_88)
  loc_12AEB1C:     Call global_52.Show
  loc_12AEB25:   Else
  loc_12AEB2B:     If (var_CE = 8) Then
  loc_12AEB38:       global_52 = New FrmExpense
  loc_12AEB4C:       Set var_D4 = var_D8(Index)
  loc_12AEB52:       Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEB5A:        = FrmExpense.Menu.Caption
  loc_12AEB6C:       global_52.CAPTION = CVar(var_DC)
  loc_12AEB82:       Call global_52.Show
  loc_12AEB8B:     Else
  loc_12AEB91:       If (var_CE = &H10) Then
  loc_12AEB9E:         global_52 = New FdLookUpRoomNo
  loc_12AEBB2:         Set var_D4 = var_D8(Index)
  loc_12AEBB8:         Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEBC0:          = FdLookUpRoomNo.Menu.Caption
  loc_12AEBD2:         global_52.CAPTION = CVar(var_DC)
  loc_12AEBE8:         Call global_52.Show
  loc_12AEBF1:       Else
  loc_12AEBF7:         If (var_CE = &H11) Then
  loc_12AEC04:           global_52 = New HHouseKeeping
  loc_12AEC18:           Set var_D4 = var_D8(Index)
  loc_12AEC1E:           Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEC26:            = HHouseKeeping.Menu.Caption
  loc_12AEC38:           global_52.CAPTION = CVar(var_DC)
  loc_12AEC4E:           Call global_52.Show
  loc_12AEC57:         Else
  loc_12AEC5D:           If (var_CE = &H12) Then
  loc_12AEC6A:             global_52 = New TravelAgencyPost
  loc_12AEC7E:             Set var_D4 = var_D8(Index)
  loc_12AEC84:             Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEC8C:              = TravelAgencyPost.Menu.Caption
  loc_12AEC9E:             global_52.CAPTION = CVar(var_DC)
  loc_12AECB4:             Call global_52.Show
  loc_12AECBD:           Else
  loc_12AECC3:             If (var_CE = &H13) Then
  loc_12AECD0:               global_52 = New frmFomB
  loc_12AECE4:               Set var_D4 = var_D8(Index)
  loc_12AECEA:               Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AECF2:                = frmFomB.Menu.Caption
  loc_12AED04:               global_52.CAPTION = CVar(var_DC)
  loc_12AED1A:               Call global_52.Show
  loc_12AED23:             Else
  loc_12AED29:               If (var_CE = &H14) Then
  loc_12AED36:                 global_52 = New FdRevCheckOut
  loc_12AED4A:                 Set var_D4 = var_D8(Index)
  loc_12AED50:                 Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AED58:                  = FdRevCheckOut.Menu.Caption
  loc_12AED6A:                 global_52.CAPTION = CVar(var_DC)
  loc_12AED80:                 Call global_52.Show
  loc_12AED89:               Else
  loc_12AED8F:                 If (var_CE = &H15) Then
  loc_12AED9C:                   global_52 = New FrmMergeCharge
  loc_12AEDB0:                   Set var_D4 = var_D8(Index)
  loc_12AEDB6:                   Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEDBE:                    = FrmMergeCharge.Menu.Caption
  loc_12AEDD0:                   global_52.CAPTION = CVar(var_DC)
  loc_12AEDE6:                   Call global_52.Show
  loc_12AEDEF:                 Else
  loc_12AEDF5:                   If (var_CE = &H16) Then
  loc_12AEE02:                     global_52 = New FdReSetlement
  loc_12AEE15:                     global_52.ParentForm = "Check Out"
  loc_12AEE26:                     Set var_D4 = var_D8(Index)
  loc_12AEE2C:                     Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEE34:                      = global_52.Menu.Caption
  loc_12AEE46:                     global_52.CAPTION = CVar(var_DC)
  loc_12AEE5C:                     Call global_52.Show
  loc_12AEE65:                   Else
  loc_12AEE6B:                     If (var_CE = &H17) Then
  loc_12AEE78:                       global_52 = New FrmRevMergeCharge
  loc_12AEE8C:                       Set var_D4 = var_D8(Index)
  loc_12AEE92:                       Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEE9A:                        = FrmRevMergeCharge.Menu.Caption
  loc_12AEEAC:                       global_52.CAPTION = CVar(var_DC)
  loc_12AEEC2:                       Call global_52.Show
  loc_12AEECB:                     Else
  loc_12AEED1:                       If (var_CE = &H18) Then
  loc_12AEEDE:                         global_52 = New rFomRepView
  loc_12AEEF1:                         global_52.GRepFormName = "PlanMealTokens"
  loc_12AEF02:                         Set var_D4 = var_D8(Index)
  loc_12AEF08:                         Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEF10:                          = global_52.Menu.Caption
  loc_12AEF22:                         global_52.CAPTION = CVar(var_DC)
  loc_12AEF42:                         Me.Global.Unload global_52
  loc_12AEF4D:                       Else
  loc_12AEF53:                         If (var_CE = &H19) Then
  loc_12AEF60:                           global_52 = New rRepReserv
  loc_12AEF73:                           global_52.GRepFormName = "GRC"
  loc_12AEF84:                           Set var_D4 = var_D8(Index)
  loc_12AEF8A:                           Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEF92:                            = global_52.Menu.Caption
  loc_12AEFA4:                           global_52.CAPTION = CVar(var_DC)
  loc_12AEFBA:                           Call global_52.Show
  loc_12AEFC3:                         Else
  loc_12AEFC9:                           If (var_CE = &H1A) Then
  loc_12AEFD6:                             global_52 = New FrmGrcBlank
  loc_12AEFEA:                             Set var_D4 = var_D8(Index)
  loc_12AEFF0:                             Call 0.Method_FDOMenu_Click0 (var_DC)
  loc_12AEFF8:                              = FrmGrcBlank.Menu.Caption
  loc_12AF00A:                             global_52.CAPTION = CVar(var_DC)
  loc_12AF020:                             Call global_52.Show
  loc_12AF026:                           End If
  loc_12AF026:                         End If
  loc_12AF026:                       End If
  loc_12AF026:                     End If
  loc_12AF026:                   End If
  loc_12AF026:                 End If
  loc_12AF026:               End If
  loc_12AF026:             End If
  loc_12AF026:           End If
  loc_12AF026:         End If
  loc_12AF026:       End If
  loc_12AF026:     End If
  loc_12AF026:   End If
  loc_12AF026: End If
  loc_12AF02B: global_52 = Nothing
  loc_12AF02F: Exit Sub
End Sub

Private Sub FDOMISRep_Click(Index As Integer) '128B534
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_128AF57: var_B4 = CVar("FDOMISRep" & "+") 'String
  loc_128AF72: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_128AF84: var_C6 = Index
  loc_128AF8D: If (var_C6 = 0) Then
  loc_128AF9A:   global_52 = New rFomRepView
  loc_128AFAD:   global_52.GRepFormName = "RoomOccDisp"
  loc_128AFBE:   Set var_CC = var_F0(Index)
  loc_128AFC4:   Call 0.Method_FDOMISRep_Click0 (var_F4, var_C6)
  loc_128AFCC:   MemVar_1F92200 = global_52.Menu.Caption
  loc_128AFDE:   global_52.CAPTION = CVar(var_F4)
  loc_128AFF4:   Call global_52.Show
  loc_128AFFD: Else
  loc_128B003:   If (var_C6 = 1) Then
  loc_128B010:     global_52 = New rFomRepView
  loc_128B023:     global_52.GRepFormName = "GuestWiseAnalysis"
  loc_128B034:     Set var_CC = var_F0(Index)
  loc_128B03A:     Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B042:      = global_52.Menu.Caption
  loc_128B054:     global_52.CAPTION = CVar(var_F4)
  loc_128B06A:     Call global_52.Show
  loc_128B073:   Else
  loc_128B079:     If (var_C6 = 2) Then
  loc_128B086:       global_52 = New rFomRepView
  loc_128B099:       global_52.GRepFormName = "CompanySumm"
  loc_128B0AA:       Set var_CC = var_F0(Index)
  loc_128B0B0:       Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B0B8:        = global_52.Menu.Caption
  loc_128B0CA:       global_52.CAPTION = CVar(var_F4)
  loc_128B0E0:       Call global_52.Show
  loc_128B0E9:     Else
  loc_128B0EF:       If (var_C6 = 3) Then
  loc_128B0FC:         global_52 = New rFomRepView
  loc_128B10F:         global_52.GRepFormName = "GuestChargesMIS"
  loc_128B120:         Set var_CC = var_F0(Index)
  loc_128B126:         Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B12E:          = global_52.Menu.Caption
  loc_128B140:         global_52.CAPTION = CVar(var_F4)
  loc_128B156:         Call global_52.Show
  loc_128B15F:       Else
  loc_128B165:         If (var_C6 = 4) Then
  loc_128B172:           global_52 = New rFomRepView
  loc_128B185:           global_52.GRepFormName = "RoomOccupancyReportSummary"
  loc_128B196:           Set var_CC = var_F0(Index)
  loc_128B19C:           Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B1A4:            = global_52.Menu.Caption
  loc_128B1B6:           global_52.CAPTION = CVar(var_F4)
  loc_128B1D6:           Me.Global.Unload global_52
  loc_128B1E1:         Else
  loc_128B1E7:           If (var_C6 = 5) Then
  loc_128B1F4:             global_52 = New rFomRepView
  loc_128B207:             global_52.GRepFormName = "RoomTypeOccupancyReport"
  loc_128B218:             Set var_CC = var_F0(Index)
  loc_128B21E:             Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B226:              = global_52.Menu.Caption
  loc_128B238:             global_52.CAPTION = CVar(var_F4)
  loc_128B258:             Me.Global.Unload global_52
  loc_128B263:           Else
  loc_128B269:             If (var_C6 = 6) Then
  loc_128B276:               global_52 = New rFomRepView
  loc_128B289:               global_52.GRepFormName = "RoomWiseRoomRevenueReport"
  loc_128B29A:               Set var_CC = var_F0(Index)
  loc_128B2A0:               Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B2A8:                = global_52.Menu.Caption
  loc_128B2BA:               global_52.CAPTION = CVar(var_F4)
  loc_128B2D0:               Call global_52.Show
  loc_128B2D9:             Else
  loc_128B2DF:               If (var_C6 = 7) Then
  loc_128B2EC:                 global_52 = New rFomRepView
  loc_128B2FF:                 global_52.GRepFormName = "RoomOccupancyAnalysisReport"
  loc_128B310:                 Set var_CC = var_F0(Index)
  loc_128B316:                 Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B31E:                  = global_52.Menu.Caption
  loc_128B330:                 global_52.CAPTION = CVar(var_F4)
  loc_128B350:                 Me.Global.Unload global_52
  loc_128B35B:               Else
  loc_128B361:                 If (var_C6 = 8) Then
  loc_128B36E:                   global_52 = New rFomRepView
  loc_128B381:                   global_52.GRepFormName = "RoomNights"
  loc_128B392:                   Set var_CC = var_F0(Index)
  loc_128B398:                   Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B3A0:                    = global_52.Menu.Caption
  loc_128B3B2:                   global_52.CAPTION = CVar(var_F4)
  loc_128B3C8:                   Call global_52.Show
  loc_128B3D1:                 Else
  loc_128B3D7:                   If (var_C6 = 9) Then
  loc_128B3E4:                     global_52 = New rFomRepView
  loc_128B3F7:                     global_52.GRepFormName = "ExtraChargesDuringStay"
  loc_128B408:                     Set var_CC = var_F0(Index)
  loc_128B40E:                     Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B416:                      = global_52.Menu.Caption
  loc_128B428:                     global_52.CAPTION = CVar(var_F4)
  loc_128B43E:                     Call global_52.Show
  loc_128B447:                   Else
  loc_128B44D:                     If (var_C6 = &HA) Then
  loc_128B45A:                       global_52 = New rFomRepView
  loc_128B46D:                       global_52.GRepFormName = "RoomTypeOccupancyAnalysis"
  loc_128B47E:                       Set var_CC = var_F0(Index)
  loc_128B484:                       Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B48C:                        = global_52.Menu.Caption
  loc_128B49E:                       global_52.CAPTION = CVar(var_F4)
  loc_128B4B4:                       Call global_52.Show
  loc_128B4BD:                     Else
  loc_128B4C3:                       If (var_C6 = &HA) Then
  loc_128B4D0:                         global_52 = New rFomRepView
  loc_128B4E3:                         global_52.GRepFormName = "PlanReport"
  loc_128B4F4:                         Set var_CC = var_F0(Index)
  loc_128B4FA:                         Call 0.Method_FDOMISRep_Click0 (var_F4)
  loc_128B502:                          = global_52.Menu.Caption
  loc_128B514:                         global_52.CAPTION = CVar(var_F4)
  loc_128B52A:                         Call global_52.Show
  loc_128B530:                       End If
  loc_128B530:                     End If
  loc_128B530:                   End If
  loc_128B530:                 End If
  loc_128B530:               End If
  loc_128B530:             End If
  loc_128B530:           End If
  loc_128B530:         End If
  loc_128B530:       End If
  loc_128B530:     End If
  loc_128B530:   End If
  loc_128B530: End If
  loc_128B530: Exit Sub
End Sub

Private Sub FDORep_Click(Index As Integer) '14793B0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_147877B: var_B4 = CVar("FDORep" & "+") 'String
  loc_1478796: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_14787A8: var_C6 = Index
  loc_14787B1: If (var_C6 = 2) Then
  loc_14787BE:   global_52 = New rFomRepView
  loc_14787D1:   global_52.GRepFormName = "InsHouseCount"
  loc_14787E2:   Set var_CC = var_F0(Index)
  loc_14787E8:   Call 0.Method_FDORep_Click0 (var_F4, var_C6)
  loc_14787F0:   MemVar_1F92200 = global_52.Menu.Caption
  loc_1478802:   global_52.CAPTION = CVar(var_F4)
  loc_1478818:   Call global_52.Show
  loc_1478821: Else
  loc_1478827:   If (var_C6 = 3) Then
  loc_1478834:     global_52 = New rFomRepView
  loc_1478847:     global_52.GRepFormName = "RoomInventory"
  loc_1478858:     Set var_CC = var_F0(Index)
  loc_147885E:     Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478866:      = global_52.Menu.Caption
  loc_1478878:     global_52.CAPTION = CVar(var_F4)
  loc_147888E:     Call global_52.Show
  loc_1478897:   Else
  loc_147889D:     If (var_C6 = 4) Then
  loc_14788AA:       global_52 = New rFomRepView
  loc_14788BD:       global_52.GRepFormName = "GuestInHouse"
  loc_14788CE:       Set var_CC = var_F0(Index)
  loc_14788D4:       Call 0.Method_FDORep_Click0 (var_F4)
  loc_14788DC:        = global_52.Menu.Caption
  loc_14788EE:       global_52.CAPTION = CVar(var_F4)
  loc_1478904:       Call global_52.Show
  loc_147890D:     Else
  loc_1478913:       If (var_C6 = 5) Then
  loc_1478920:         global_52 = New rFomRepView
  loc_1478933:         global_52.GRepFormName = "HouseKeeping"
  loc_1478944:         Set var_CC = var_F0(Index)
  loc_147894A:         Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478952:          = global_52.Menu.Caption
  loc_1478964:         global_52.CAPTION = CVar(var_F4)
  loc_147897A:         Call global_52.Show
  loc_1478983:       Else
  loc_1478989:         If (var_C6 = 6) Then
  loc_1478996:           global_52 = New rFomRepView
  loc_14789A9:           global_52.GRepFormName = "ArrivalDepList"
  loc_14789BA:           Set var_CC = var_F0(Index)
  loc_14789C0:           Call 0.Method_FDORep_Click0 (var_F4)
  loc_14789C8:            = global_52.Menu.Caption
  loc_14789DA:           global_52.CAPTION = CVar(var_F4)
  loc_14789F0:           Call global_52.Show
  loc_14789F9:         Else
  loc_14789FF:           If (var_C6 = 7) Then
  loc_1478A0C:             global_52 = New rFomRepView
  loc_1478A1F:             global_52.GRepFormName = "GuestChgJournal"
  loc_1478A30:             Set var_CC = var_F0(Index)
  loc_1478A36:             Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478A3E:              = global_52.Menu.Caption
  loc_1478A50:             global_52.CAPTION = CVar(var_F4)
  loc_1478A66:             Call global_52.Show
  loc_1478A6F:           Else
  loc_1478A75:             If (var_C6 = 8) Then
  loc_1478A82:               global_52 = New rFomRepView
  loc_1478A95:               global_52.GRepFormName = "PmtByCashier"
  loc_1478AA6:               Set var_CC = var_F0(Index)
  loc_1478AAC:               Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478AB4:                = global_52.Menu.Caption
  loc_1478AC6:               global_52.CAPTION = CVar(var_F4)
  loc_1478ADC:               Call global_52.Show
  loc_1478AE5:             Else
  loc_1478AEB:               If (var_C6 = 9) Then
  loc_1478AF8:                 global_52 = New rFomRepView
  loc_1478B0B:                 global_52.GRepFormName = "HtCashierSumm"
  loc_1478B1C:                 Set var_CC = var_F0(Index)
  loc_1478B22:                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478B2A:                  = global_52.Menu.Caption
  loc_1478B3C:                 global_52.CAPTION = CVar(var_F4)
  loc_1478B52:                 Call global_52.Show
  loc_1478B5B:               Else
  loc_1478B61:                 If (var_C6 = &HA) Then
  loc_1478B6E:                   global_52 = New rFomRepView
  loc_1478B81:                   global_52.GRepFormName = "SettleRep"
  loc_1478B92:                   Set var_CC = var_F0(Index)
  loc_1478B98:                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478BA0:                    = global_52.Menu.Caption
  loc_1478BB2:                   global_52.CAPTION = CVar(var_F4)
  loc_1478BC8:                   Call global_52.Show
  loc_1478BD1:                 Else
  loc_1478BD7:                   If (var_C6 = &HB) Then
  loc_1478BE4:                     global_52 = New rFomRepView
  loc_1478BF7:                     global_52.GRepFormName = "CancelBillDetails"
  loc_1478C08:                     Set var_CC = var_F0(Index)
  loc_1478C0E:                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478C16:                      = global_52.Menu.Caption
  loc_1478C28:                     global_52.CAPTION = CVar(var_F4)
  loc_1478C3E:                     Call global_52.Show
  loc_1478C47:                   Else
  loc_1478C4D:                     If (var_C6 = &HC) Then
  loc_1478C5A:                       global_52 = New rFomRepView
  loc_1478C6D:                       global_52.GRepFormName = "RoomChangeHistory"
  loc_1478C7E:                       Set var_CC = var_F0(Index)
  loc_1478C84:                       Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478C8C:                        = global_52.Menu.Caption
  loc_1478C9E:                       global_52.CAPTION = CVar(var_F4)
  loc_1478CB4:                       Call global_52.Show
  loc_1478CBD:                     Else
  loc_1478CC3:                       If (var_C6 = &HD) Then
  loc_1478CD0:                         global_52 = New rFomRepView
  loc_1478CE3:                         global_52.GRepFormName = "ArrDepReg"
  loc_1478CF4:                         Set var_CC = var_F0(Index)
  loc_1478CFA:                         Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478D02:                          = global_52.Menu.Caption
  loc_1478D14:                         global_52.CAPTION = CVar(var_F4)
  loc_1478D2A:                         Call global_52.Show
  loc_1478D33:                       Else
  loc_1478D39:                         If (var_C6 = &HE) Then
  loc_1478D46:                           global_52 = New rFomRepView
  loc_1478D59:                           global_52.GRepFormName = "SaleRegister"
  loc_1478D6A:                           Set var_CC = var_F0(Index)
  loc_1478D70:                           Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478D78:                            = global_52.Menu.Caption
  loc_1478D8A:                           global_52.CAPTION = CVar(var_F4)
  loc_1478DA0:                           Call global_52.Show
  loc_1478DA9:                         Else
  loc_1478DAF:                           If (var_C6 = &HF) Then
  loc_1478DBC:                             global_52 = New rFomRepView
  loc_1478DCF:                             global_52.GRepFormName = "PlanPackSchedule"
  loc_1478DE0:                             Set var_CC = var_F0(Index)
  loc_1478DE6:                             Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478DEE:                              = global_52.Menu.Caption
  loc_1478E00:                             global_52.CAPTION = CVar(var_F4)
  loc_1478E16:                             Call global_52.Show
  loc_1478E1F:                           Else
  loc_1478E25:                             If (var_C6 = &H10) Then
  loc_1478E32:                               global_52 = New rFomRepView
  loc_1478E45:                               global_52.GRepFormName = "PlanPackService"
  loc_1478E56:                               Set var_CC = var_F0(Index)
  loc_1478E5C:                               Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478E64:                                = global_52.Menu.Caption
  loc_1478E76:                               global_52.CAPTION = CVar(var_F4)
  loc_1478E8C:                               Call global_52.Show
  loc_1478E95:                             Else
  loc_1478E9B:                               If (var_C6 = &H11) Then
  loc_1478EA8:                                 global_52 = New rFomRepView
  loc_1478EBB:                                 global_52.GRepFormName = "OccupancyReport"
  loc_1478ECC:                                 Set var_CC = var_F0(Index)
  loc_1478ED2:                                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478EDA:                                  = global_52.Menu.Caption
  loc_1478EEC:                                 global_52.CAPTION = CVar(var_F4)
  loc_1478F02:                                 Call global_52.Show
  loc_1478F0B:                               Else
  loc_1478F11:                                 If (var_C6 = &H13) Then
  loc_1478F1E:                                   global_52 = New rFomRepView
  loc_1478F31:                                   global_52.GRepFormName = "GuestwiseRevenue"
  loc_1478F42:                                   Set var_CC = var_F0(Index)
  loc_1478F48:                                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478F50:                                    = global_52.Menu.Caption
  loc_1478F62:                                   global_52.CAPTION = CVar(var_F4)
  loc_1478F78:                                   Call global_52.Show
  loc_1478F81:                                 Else
  loc_1478F87:                                   If (var_C6 = &H14) Then
  loc_1478F94:                                     global_52 = New rFomRepView
  loc_1478FA7:                                     global_52.GRepFormName = "FOMBillChangeReport"
  loc_1478FB8:                                     Set var_CC = var_F0(Index)
  loc_1478FBE:                                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_1478FC6:                                      = global_52.Menu.Caption
  loc_1478FD8:                                     global_52.CAPTION = CVar(var_F4)
  loc_1478FEE:                                     Call global_52.Show
  loc_1478FF7:                                   Else
  loc_1478FFD:                                     If (var_C6 = &H15) Then
  loc_147900A:                                       global_52 = New rFomRepView
  loc_147901D:                                       global_52.GRepFormName = "GuestBillDetails"
  loc_147902E:                                       Set var_CC = var_F0(Index)
  loc_1479034:                                       Call 0.Method_FDORep_Click0 (var_F4)
  loc_147903C:                                        = global_52.Menu.Caption
  loc_147904E:                                       global_52.CAPTION = CVar(var_F4)
  loc_1479064:                                       Call global_52.Show
  loc_147906D:                                     Else
  loc_1479073:                                       If (var_C6 = &H16) Then
  loc_1479080:                                         global_52 = New rFomRepView
  loc_1479093:                                         global_52.GRepFormName = "ChkInRegister"
  loc_14790A4:                                         Set var_CC = var_F0(Index)
  loc_14790AA:                                         Call 0.Method_FDORep_Click0 (var_F4)
  loc_14790B2:                                          = global_52.Menu.Caption
  loc_14790C4:                                         global_52.CAPTION = CVar(var_F4)
  loc_14790DA:                                         Call global_52.Show
  loc_14790E3:                                       Else
  loc_14790E9:                                         If (var_C6 = &H17) Then
  loc_14790F6:                                           global_52 = New rFomRepView
  loc_1479109:                                           global_52.GRepFormName = "ExpectedDeparture"
  loc_147911A:                                           Set var_CC = var_F0(Index)
  loc_1479120:                                           Call 0.Method_FDORep_Click0 (var_F4)
  loc_1479128:                                            = global_52.Menu.Caption
  loc_147913A:                                           global_52.CAPTION = CVar(var_F4)
  loc_1479150:                                           Call global_52.Show
  loc_1479159:                                         Else
  loc_147915F:                                           If (var_C6 = &H19) Then
  loc_147916C:                                             global_52 = New rFomRepView
  loc_147917F:                                             global_52.GRepFormName = "GuestBillDetails"
  loc_1479190:                                             Set var_CC = var_F0(Index)
  loc_1479196:                                             Call 0.Method_FDORep_Click0 (var_F4)
  loc_147919E:                                              = global_52.Menu.Caption
  loc_14791B0:                                             global_52.CAPTION = CVar(var_F4)
  loc_14791C6:                                             Call global_52.Show
  loc_14791CF:                                           Else
  loc_14791D5:                                             If (var_C6 = &H1D) Then
  loc_14791E2:                                               global_52 = New rRepReserv
  loc_14791F5:                                               global_52.GRepFormName = "CheckedInGuestDtl"
  loc_1479206:                                               Set var_CC = var_F0(Index)
  loc_147920C:                                               Call 0.Method_FDORep_Click0 (var_F4)
  loc_1479214:                                                = global_52.Menu.Caption
  loc_1479226:                                               global_52.CAPTION = CVar(var_F4)
  loc_147923C:                                               Call global_52.Show
  loc_1479245:                                             Else
  loc_147924B:                                               If (var_C6 = &H1E) Then
  loc_1479258:                                                 global_52 = New rFomRepView
  loc_147926B:                                                 global_52.GRepFormName = "RoomRentAuditRpt"
  loc_147927C:                                                 Set var_CC = var_F0(Index)
  loc_1479282:                                                 Call 0.Method_FDORep_Click0 (var_F4)
  loc_147928A:                                                  = global_52.Menu.Caption
  loc_147929C:                                                 global_52.CAPTION = CVar(var_F4)
  loc_14792B2:                                                 Call global_52.Show
  loc_14792BB:                                               Else
  loc_14792C1:                                                 If (var_C6 = &H1F) Then
  loc_14792CE:                                                   global_52 = New rFomRepView
  loc_14792E1:                                                   global_52.GRepFormName = "SaleRegisterI"
  loc_14792F2:                                                   Set var_CC = var_F0(Index)
  loc_14792F8:                                                   Call 0.Method_FDORep_Click0 (var_F4)
  loc_1479300:                                                    = global_52.Menu.Caption
  loc_1479312:                                                   global_52.CAPTION = CVar(var_F4)
  loc_1479328:                                                   Call global_52.Show
  loc_1479331:                                                 Else
  loc_1479337:                                                   If (var_C6 = &H20) Then
  loc_1479344:                                                     global_52 = New rFomRepView
  loc_1479357:                                                     global_52.GRepFormName = "GuestPayments"
  loc_1479368:                                                     Set var_CC = var_F0(Index)
  loc_147936E:                                                     Call 0.Method_FDORep_Click0 (var_F4)
  loc_1479376:                                                      = global_52.Menu.Caption
  loc_1479388:                                                     global_52.CAPTION = CVar(var_F4)
  loc_147939E:                                                     Call global_52.Show
  loc_14793A4:                                                   End If
  loc_14793A4:                                                 End If
  loc_14793A4:                                               End If
  loc_14793A4:                                             End If
  loc_14793A4:                                           End If
  loc_14793A4:                                         End If
  loc_14793A4:                                       End If
  loc_14793A4:                                     End If
  loc_14793A4:                                   End If
  loc_14793A4:                                 End If
  loc_14793A4:                               End If
  loc_14793A4:                             End If
  loc_14793A4:                           End If
  loc_14793A4:                         End If
  loc_14793A4:                       End If
  loc_14793A4:                     End If
  loc_14793A4:                   End If
  loc_14793A4:                 End If
  loc_14793A4:               End If
  loc_14793A4:             End If
  loc_14793A4:           End If
  loc_14793A4:         End If
  loc_14793A4:       End If
  loc_14793A4:     End If
  loc_14793A4:   End If
  loc_14793A4: End If
  loc_14793A9: global_52 = Nothing
  loc_14793AD: Exit Sub
End Sub

Private Sub GENMas_Click(Index As Integer) '112894C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_11285E3: var_B4 = CVar("GENMas" & "+") 'String
  loc_11285FE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1128610: var_C6 = Index
  loc_1128619: If (var_C6 = 0) Then
  loc_1128626:   global_52 = New FrmTaxMast
  loc_112863A:   Set var_CC = var_D0(Index)
  loc_1128640:   Call 0.Method_GENMas_Click0 (var_D4, var_C6)
  loc_1128648:   MemVar_1F92200 = FrmTaxMast.Menu.Caption
  loc_112865A:   global_52.CAPTION = CVar(var_D4)
  loc_1128670:   Call global_52.Show
  loc_1128679: Else
  loc_112867F:   If (var_C6 = 1) Then
  loc_112868C:     global_52 = New FrmTaxStruMast
  loc_11286A0:     Set var_CC = var_D0(Index)
  loc_11286A6:     Call 0.Method_GENMas_Click0 (var_D4)
  loc_11286AE:      = FrmTaxStruMast.Menu.Caption
  loc_11286C0:     global_52.CAPTION = CVar(var_D4)
  loc_11286D6:     Call global_52.Show
  loc_11286DF:   Else
  loc_11286E5:     If (var_C6 = 2) Then
  loc_11286F2:       global_52 = New FrmPayTypeMast
  loc_1128706:       Set var_CC = Me.TopCtrl1
  loc_112870C:       Call 0.Method_GENMas_Click0 (Index, var_D0)
  loc_1128726:       global_52.CAPTION = CVar(FrmPayTypeMast.TopCtrl1.Caption)
  loc_112873C:       Call global_52.Show
  loc_1128745:     Else
  loc_112874B:       If (var_C6 = 4) Then
  loc_1128758:         global_52 = New frmEnviro
  loc_112876C:         Set var_CC = Me.DGDepart
  loc_1128772:         Call 0.Method_GENMas_Click0 (Index, var_D0)
  loc_112877A:         var_D4 = frmEnviro.DGDepart.Caption
  loc_112878C:         global_52.CAPTION = CVar(var_D4)
  loc_11287A2:         Call global_52.Show
  loc_11287AB:       Else
  loc_11287B1:         If (var_C6 = 5) Then
  loc_11287BE:           global_52 = New frmRevGroup
  loc_11287D2:           Set var_CC = var_D0(Index)
  loc_11287D8:           Call 0.Method_GENMas_Click0 (var_D4)
  loc_11287E0:            = frmRevGroup.Menu.Caption
  loc_11287F2:           global_52.CAPTION = CVar(var_D4)
  loc_1128808:           Call global_52.Show
  loc_1128811:         Else
  loc_1128817:           If (var_C6 = 6) Then
  loc_1128824:             global_52 = New frmPrintModule
  loc_1128838:             Set var_CC = var_D0(Index)
  loc_112883E:             Call 0.Method_GENMas_Click0 (var_D4)
  loc_1128846:              = frmPrintModule.Menu.Caption
  loc_1128858:             global_52.CAPTION = CVar(var_D4)
  loc_112886E:             Call global_52.Show
  loc_1128877:           Else
  loc_112887D:             If (var_C6 = 7) Then
  loc_112888A:               global_52 = New frmMod_Print
  loc_112889E:               Set var_CC = var_D0(Index)
  loc_11288A4:               Call 0.Method_GENMas_Click0 (var_D4)
  loc_11288AC:                = frmMod_Print.Menu.Caption
  loc_11288BE:               global_52.CAPTION = CVar(var_D4)
  loc_11288D4:               Call global_52.Show
  loc_11288DD:             Else
  loc_11288E3:               If (var_C6 = 8) Then
  loc_11288F0:                 global_52 = New FrmRevenueWiseBudget
  loc_1128904:                 Set var_CC = var_D0(Index)
  loc_112890A:                 Call 0.Method_GENMas_Click0 (var_D4)
  loc_1128912:                  = FrmRevenueWiseBudget.Menu.Caption
  loc_1128924:                 global_52.CAPTION = CVar(var_D4)
  loc_112893A:                 Call global_52.Show
  loc_1128940:               End If
  loc_1128940:             End If
  loc_1128940:           End If
  loc_1128940:         End If
  loc_1128940:       End If
  loc_1128940:     End If
  loc_1128940:   End If
  loc_1128940: End If
  loc_1128945: global_52 = Nothing
  loc_1128949: Exit Sub
End Sub

Private Sub lblStatus_UnknownEvent_9 'F08B38
  'Data Table: 5C8378
  Dim var_A8 As Variant
  Dim var_8C As Variant
  loc_F08A58: Set var_8C = Me.CmdSubMenu
  loc_F08A5E: Call 0.Method_lblStatus_UnknownEvent_9C (var_8E, var_86)
  loc_F08A6C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F08A81:   Set var_8C = Me.CmdSubMenu
  loc_F08A87:   Call 0.Method_lblStatus_UnknownEvent_90 (var_86, var_98)
  loc_F08A8F:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_F08A9E: Next var_92 'Integer
  loc_F08AAF: Me.LblCompany.Visible = True
  loc_F08ABB: Set var_8C = Me.LblStatus
  loc_F08AC1: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_F08AD6: If (CLng(CInt()) = 1) Then
  loc_F08AD9:   var_A8 = "Hide Status"
  loc_F08AE3:   Set var_8C = Me.LblStatus
  loc_F08AE9:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_A8)
  loc_F08AFF:   Call 0.Method_arg_2B0 (var_A8)
  loc_F08B07: Else
  loc_F08B11:   Set var_8C = Me.LblStatus
  loc_F08B17:   Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Property Status")
  loc_F08B2F:   Me.LblStatus.Unload MemVar_1F92B10
  loc_F08B37: End If
  loc_F08B37: Exit Sub
End Sub

Private Sub Mas_Click(Index As Integer) '132C0B0
  'Data Table: 5C8378
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CA As Integer
  Dim var_D8 As String
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Fields15
  Dim var_D4 As Variant
  loc_132B913: var_B8 = CVar("Mas" & "+") 'String
  loc_132B92E: MemVar_1F92200 = CStr(var_B8 & Trim(CVar(CStr(Index))))
  loc_132B940: var_CA = Index
  loc_132B949: If (var_CA = 4) Then
  loc_132B956:   global_52 = New FrmMarketSeg
  loc_132B96A:   Set var_D0 = var_D4(Index)
  loc_132B970:   Call 0.Method_Mas_Click0 (var_D8, var_CA)
  loc_132B978:   MemVar_1F92200 = FrmMarketSeg.Menu.Caption
  loc_132B98A:   global_52.CAPTION = CVar(var_D8)
  loc_132B9A0:   Call global_52.Show
  loc_132B9A9: Else
  loc_132B9AF:   If (var_CA = 5) Then
  loc_132B9BC:     global_52 = New FrmBusinessSrc
  loc_132B9D0:     Set var_D0 = var_D4(Index)
  loc_132B9D6:     Call 0.Method_Mas_Click0 (var_D8)
  loc_132B9DE:      = FrmBusinessSrc.Menu.Caption
  loc_132B9F0:     global_52.CAPTION = CVar(var_D8)
  loc_132BA06:     Call global_52.Show
  loc_132BA0F:   Else
  loc_132BA15:     If (var_CA = 6) Then
  loc_132BA22:       global_52 = New FrmGuestStat
  loc_132BA36:       Set var_D0 = var_D4(Index)
  loc_132BA3C:       Call 0.Method_Mas_Click0 (var_D8)
  loc_132BA44:        = FrmGuestStat.Menu.Caption
  loc_132BA56:       global_52.CAPTION = CVar(var_D8)
  loc_132BA6C:       Call global_52.Show
  loc_132BA75:     Else
  loc_132BA7B:       If (var_CA = 7) Then
  loc_132BA88:         global_52 = New FrmChargeMast
  loc_132BA9C:         Set var_D0 = var_D4(Index)
  loc_132BAA2:         Call 0.Method_Mas_Click0 (var_D8)
  loc_132BAAA:          = FrmChargeMast.Menu.Caption
  loc_132BABC:         global_52.CAPTION = CVar(var_D8)
  loc_132BAD2:         Call global_52.Show
  loc_132BADB:       Else
  loc_132BAE1:         If (var_CA = 8) Then
  loc_132BAEE:           global_52 = New frmFixedChargeMast
  loc_132BB02:           Set var_D0 = var_D4(Index)
  loc_132BB08:           Call 0.Method_Mas_Click0 (var_D8)
  loc_132BB10:            = frmFixedChargeMast.Menu.Caption
  loc_132BB22:           global_52.CAPTION = CVar(var_D8)
  loc_132BB38:           Call global_52.Show
  loc_132BB41:         Else
  loc_132BB47:           If (var_CA = 9) Then
  loc_132BB54:             global_52 = New FrmPackageMast
  loc_132BB68:             Set var_D0 = var_D4(Index)
  loc_132BB6E:             Call 0.Method_Mas_Click0 (var_D8)
  loc_132BB76:              = FrmPackageMast.Menu.Caption
  loc_132BB7E:             var_98 = CVar(var_D8) 'String
  loc_132BB88:             global_52.CAPTION = var_98
  loc_132BBA2:             global_52.MyType = "Package"
  loc_132BBAE:             Call global_52.Show
  loc_132BBB7:           Else
  loc_132BBBD:             If (var_CA = &HC) Then
  loc_132BBD4:               var_D8 = "Select PlanMastType from Enviro where logsite_code='" & MemVar_1F92078
  loc_132BBE4:               unk_5C83B4.Execute var_D8 & "'", var_98, -1
  loc_132BC19:               var_D4 = var_D0.Fields.Item("PlanMastType")
  loc_132BC3B:               If (var_D4.Value = "Advanced") Then
  loc_132BC48:                 global_52 = New FrmPackageMast
  loc_132BC5B:                 global_52.MyType = "Plan"
  loc_132BC6C:                 Set var_D0 = var_D4(Index)
  loc_132BC72:                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132BC7A:                 var_D0 = global_52.Menu.Caption
  loc_132BC8C:                 global_52.CAPTION = CVar(var_D8)
  loc_132BCA2:                 Call global_52.Show
  loc_132BCAB:               Else
  loc_132BCB5:                 global_52 = New FrmPlanPackMast
  loc_132BCC9:                 Set var_D0 = Me.Mas
  loc_132BCCF:                 Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132BCD7:                 var_D8 = var_D4.Caption
  loc_132BCE9:                 global_52.CAPTION = CVar(var_D8)
  loc_132BCFF:                 Call global_52.Show
  loc_132BD05:               End If
  loc_132BD08:             Else
  loc_132BD0E:               If (var_CA = &HD) Then
  loc_132BD1B:                 global_52 = New frmSeasonMast
  loc_132BD2F:                 Set var_D0 = var_D4(Index)
  loc_132BD35:                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132BD3D:                  = frmSeasonMast.Menu.Caption
  loc_132BD4F:                 global_52.CAPTION = CVar(var_D8)
  loc_132BD65:                 Call global_52.Show
  loc_132BD6E:               Else
  loc_132BD74:                 If (var_CA = &HE) Then
  loc_132BD81:                   global_52 = New FrmRoomFeatureMast
  loc_132BD95:                   Set var_D0 = var_D4(Index)
  loc_132BD9B:                   Call 0.Method_Mas_Click0 (var_D8)
  loc_132BDA3:                    = FrmRoomFeatureMast.Menu.Caption
  loc_132BDB5:                   global_52.CAPTION = CVar(var_D8)
  loc_132BDCB:                   Call global_52.Show
  loc_132BDD4:                 Else
  loc_132BDDA:                   If (var_CA = &HF) Then
  loc_132BDE7:                     global_52 = New FrmRoomCatMast
  loc_132BDFB:                     Set var_D0 = var_D4(Index)
  loc_132BE01:                     Call 0.Method_Mas_Click0 (var_D8)
  loc_132BE09:                      = FrmRoomCatMast.Menu.Caption
  loc_132BE1B:                     global_52.CAPTION = CVar(var_D8)
  loc_132BE31:                     Call global_52.Show
  loc_132BE3A:                   Else
  loc_132BE40:                     If (var_CA = &H10) Then
  loc_132BE4D:                       global_52 = New FrmRoomMast
  loc_132BE61:                       Set var_D0 = Me.DGCategory
  loc_132BE67:                       Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132BE81:                       global_52.CAPTION = CVar(FrmRoomMast.DGCategory.Caption)
  loc_132BE97:                       Call global_52.Show
  loc_132BEA0:                     Else
  loc_132BEA6:                       If (var_CA = &H11) Then
  loc_132BEB3:                         global_52 = New CompMast
  loc_132BEC7:                         Set var_D0 = Me.FGridIncl
  loc_132BECD:                         Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132BED5:                         var_D8 = CompMast.FGridIncl.Caption
  loc_132BEE7:                         global_52.CAPTION = CVar(var_D8)
  loc_132BEFD:                         Call global_52.Show
  loc_132BF06:                       Else
  loc_132BF0C:                         If (var_CA = &H14) Then
  loc_132BF19:                           global_52 = New FrmForeignExMast
  loc_132BF2D:                           Set var_D0 = var_D4(Index)
  loc_132BF33:                           Call 0.Method_Mas_Click0 (var_D8)
  loc_132BF3B:                            = FrmForeignExMast.Menu.Caption
  loc_132BF4D:                           global_52.CAPTION = CVar(var_D8)
  loc_132BF63:                           Call global_52.Show
  loc_132BF6C:                         Else
  loc_132BF72:                           If (var_CA = &H15) Then
  loc_132BF7F:                             global_52 = New GuestProfile
  loc_132BF93:                             Set var_D0 = Me.LblT1Field8
  loc_132BF99:                             Call 0.Method_Mas_Click0 (Index, var_D4)
  loc_132BFA1:                             var_D8 = GuestProfile.LblT1Field8.Caption
  loc_132BFB3:                             global_52.CAPTION = CVar(var_D8)
  loc_132BFC9:                             Call global_52.Show
  loc_132BFD2:                           Else
  loc_132BFD8:                             If (var_CA = &H16) Then
  loc_132BFE5:                               global_52 = New GroupProfile
  loc_132BFF9:                               Set var_D0 = var_D4(Index)
  loc_132BFFF:                               Call 0.Method_Mas_Click0 (var_D8)
  loc_132C007:                                = GroupProfile.Menu.Caption
  loc_132C019:                               global_52.CAPTION = CVar(var_D8)
  loc_132C02F:                               Call global_52.Show
  loc_132C038:                             Else
  loc_132C03E:                               If (var_CA = &H17) Then
  loc_132C04B:                                 global_52 = New FdRoomDisplay
  loc_132C05F:                                 Set var_D0 = var_D4(Index)
  loc_132C065:                                 Call 0.Method_Mas_Click0 (var_D8)
  loc_132C06D:                                  = FdRoomDisplay.Menu.Caption
  loc_132C07F:                                 global_52.CAPTION = CVar(var_D8)
  loc_132C095:                                 Call global_52.Show
  loc_132C09B:                               End If
  loc_132C09B:                             End If
  loc_132C09B:                           End If
  loc_132C09B:                         End If
  loc_132C09B:                       End If
  loc_132C09B:                     End If
  loc_132C09B:                   End If
  loc_132C09B:                 End If
  loc_132C09B:               End If
  loc_132C09B:             End If
  loc_132C09B:           End If
  loc_132C09B:         End If
  loc_132C09B:       End If
  loc_132C09B:     End If
  loc_132C09B:   End If
  loc_132C09B: End If
  loc_132C0A0: global_52 = Nothing
  loc_132C0A9: Set var_88 = Nothing
  loc_132C0AC: Exit Sub
End Sub

Private Sub smnuMdI_Click() '1A8F2DC
  'Data Table: 5C8378
  Dim var_1A4 As String
  Dim var_1A0 As String
  Dim var_A4 As Variant
  Dim MemVar_1F9B698 As Global
  Dim var_156 As Integer
  Dim var_15E As Integer
  Dim var_160 As Integer
  Dim unk_5C83B4 As Connection15
  Dim var_146 As Integer
  Dim var_B4 As Variant
  Dim var_18E As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_272 As Integer
  Dim var_172 As Integer
  Dim var_196 As Integer
  Dim var_162 As Integer
  Dim var_278 As String
  Dim var_27C As String
  Dim var_2A8 As String
  Dim var_2B4 As String
  Dim var_104 As Variant
  Dim var_220 As Variant
  Dim var_2C8 As Variant
  Dim var_328 As Variant
  Dim var_174 As Integer
  Dim var_16E As Integer
  Dim var_170 As Integer
  Dim var_318 As Variant
  Dim var_368 As Variant
  Dim var_38C As Variant
  Dim var_124 As Recordset15
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_390 As Variant
  Dim var_128 As Recordset15
  Dim var_3A0 As Double
  Dim var_120 As Recordset15
  Dim var_398 As Fields15
  Dim var_130 As Recordset15
  Dim var_134 As Recordset15
  Dim var_6A8 As Double
  Dim var_3AC As Fields15
  Dim var_6B0 As Double
  Dim var_6B8 As Double
  Dim var_3D0 As Variant
  Dim var_6C0 As Double
  Dim var_6C8 As Double
  Dim var_460 As Fields15
  Dim var_4C8 As Fields15
  Dim var_578 As Fields15
  Dim var_5D0 As Fields15
  Dim var_51C As Variant
  Dim var_624 As Variant
  Dim var_494 As Variant
  Dim var_4EC As Variant
  loc_1A8B797: If (MsgBox("Are you sure to update Menu Setting?", &H14, var_C4, var_E4, var_104) = 6) Then
  loc_1A8B79A:   GoTo loc_1A8B79E
  loc_1A8B79D: End If
  loc_1A8B79D: Exit Sub
  loc_1A8B79E: ' Referenced from: 1A8B79A
  loc_1A8B7AD: var_19C = Me.Global.App
  loc_1A8B7CA: Call 0.Method_smnuMdI_Click4 (App.Path & "\MDIForm1.frm")
  loc_1A8B7DF: If (var_1A6 = 0) Then
  loc_1A8B7FE:   var_A4 = CVar("MDI Form Missing." & vbCrLf & "Please paste MDI Form at Exe's location.") 'String
  loc_1A8B801:   MsgBox(var_A4, &H10, var_C4, var_E4, var_104)
  loc_1A8B814:   End
  loc_1A8B816: End If
  loc_1A8B831: var_19C = MemVar_1F9B698.App
  loc_1A8B84E: Call 0.Method_arg_7C (App.Path & "\MDIForm1.frm", 1, 0)
  loc_1A8B859: Set var_13C = var_1AC
  loc_1A8B86C: var_156 = &HA
  loc_1A8B873: var_15C = CStr(0)
  loc_1A8B878: var_15E = 0
  loc_1A8B889: Me.Connection15.BeginTrans var_1B0
  loc_1A8B8B2: unk_5C83B4.Execute "DELETE FROM menuHelp WHERE UserName='SA' and CompCode='" & MemVar_1F92128 & "'", var_A4, -1
  loc_1A8B8D8: var_1A0 = "DELETE FROM menuHelp1 WHERE UserName='SA' and CompCode='" & MemVar_1F92128
  loc_1A8B8E8: unk_5C83B4.Execute var_1A0 & "'", var_A4, -1
  loc_1A8B910: unk_5C83B4.Execute "DELETE FROM User_Module WHERE 1<>2", var_A4, -1
  loc_1A8B931: unk_5C83B4.Execute "DELETE FROM User1 WHERE 1<>2", var_A4, -1
  loc_1A8B942: unk_5C83B4.CommitTrans
  loc_1A8B94D: Call 0.Method_arg_30 (var_1A0, var_19C, var_19C, var_19C, var_19C, 0)
  loc_1A8B955: var_144 = var_1A0
  loc_1A8B958: ' Referenced from: 1A8C9E1
  loc_1A8B95E: Call 0.Method_arg_24 (var_1A6, var_15E, var_156)
  loc_1A8B967: If Not(var_1A6) Then
  loc_1A8B96C:   var_146 = &HFF
  loc_1A8B97F:   var_A4 = Left(var_144, &H10)
  loc_1A8B9A6:   If (Right(var_A4, &HD) = "Begin VB.Menu") Then
  loc_1A8B9AC:     var_150 = "N"
  loc_1A8B9B1:     var_146 = 0
  loc_1A8B9BA:     var_156 = (var_156 + 1)
  loc_1A8B9C1:     var_15C = CStr(0)
  loc_1A8B9C6:     var_15E = 0
  loc_1A8B9CB:     var_160 = 0
  loc_1A8B9F4:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8BA08:     var_188 = CStr(RTrim(Right(var_A4, &HD)))
  loc_1A8BA16:     var_18E = 9
  loc_1A8BA3F:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8BA53:     var_18C = CStr(RTrim(Right(var_A4, &HD)))
  loc_1A8BA62:   Else
  loc_1A8BA99:     If (Right(Left(var_144, &H13), &HD) = "Begin VB.Menu") Then
  loc_1A8BAAC:       var_A4 = Ucase(var_144)
  loc_1A8BB30:       var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8BB45:       If CBool(var_270) Then
  loc_1A8BB4B:         var_150 = "R"
  loc_1A8BB51:       Else
  loc_1A8BB54:         var_150 = "E"
  loc_1A8BB57:       End If
  loc_1A8BB60:       If (CDbl(var_15C) = CDbl(0)) Then
  loc_1A8BB67:         var_15C = CStr(&HB)
  loc_1A8BB6D:       Else
  loc_1A8BB78:         var_15C = CStr((CDbl(var_15C) + CDbl(1)))
  loc_1A8BB7D:         var_15E = 0
  loc_1A8BB82:         var_160 = 0
  loc_1A8BB85:       End If
  loc_1A8BB87:       var_146 = 1
  loc_1A8BBB0:       var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8BBC4:       var_18C = CStr(RTrim(InStr(1, var_A4, "REPORT", 0)))
  loc_1A8BBD3:     Else
  loc_1A8BC0A:       If (Right(Left(var_144, &H16), &HD) = "Begin VB.Menu") Then
  loc_1A8BC1D:         var_A4 = Ucase(var_144)
  loc_1A8BCA1:         var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8BCB6:         If CBool(var_270) Then
  loc_1A8BCBC:           var_150 = "R"
  loc_1A8BCC2:         Else
  loc_1A8BCC5:           var_150 = "E"
  loc_1A8BCC8:         End If
  loc_1A8BCCE:         If (var_15E = 0) Then
  loc_1A8BCD3:           var_15E = &HB
  loc_1A8BCD9:         Else
  loc_1A8BCDF:           var_15E = (var_15E + 1)
  loc_1A8BCE4:           var_160 = 0
  loc_1A8BCE7:         End If
  loc_1A8BCE9:         var_146 = 2
  loc_1A8BD12:         var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8BD26:         var_18C = CStr(RTrim(InStr(1, var_A4, "REPORT", 0)))
  loc_1A8BD35:       Else
  loc_1A8BD6C:         If (Right(Left(var_144, &H19), &HD) = "Begin VB.Menu") Then
  loc_1A8BD7F:           var_A4 = Ucase(var_144)
  loc_1A8BE03:           var_270 = (InStr(1, var_A4, "REPORT", 0) > 0) Or (InStr(1, Ucase(var_144), "RPT", 0) > 0) Or (InStr(1, Ucase(var_144), "REP", 0) > 0)
  loc_1A8BE18:           If CBool(var_270) Then
  loc_1A8BE1E:             var_150 = "R"
  loc_1A8BE24:           Else
  loc_1A8BE27:             var_150 = "E"
  loc_1A8BE2A:           End If
  loc_1A8BE30:           If (var_160 = 0) Then
  loc_1A8BE35:             var_160 = &HB
  loc_1A8BE3B:           Else
  loc_1A8BE41:             var_160 = (var_160 + 1)
  loc_1A8BE44:           End If
  loc_1A8BE4A:           If (var_15E = 0) Then
  loc_1A8BE4F:             var_160 = 0
  loc_1A8BE52:           End If
  loc_1A8BE54:           var_146 = 3
  loc_1A8BE7D:           var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8BE88:           var_E4 = RTrim(InStr(1, var_A4, "REPORT", 0))
  loc_1A8BE91:           var_18C = CStr(var_E4)
  loc_1A8BE9D:         End If
  loc_1A8BE9D:       End If
  loc_1A8BE9D:     End If
  loc_1A8BE9D:   End If
  loc_1A8BE9D:   DoEvents()
  loc_1A8BEC3:   If ((var_144 = "End Sub") Or (InStr(1, var_144, "Private Sub ", 0) > 0)) Then
  loc_1A8BEC6:     GoTo loc_1A8C9E4
  loc_1A8BEC9:   End If
  loc_1A8BEF7:   If CBool((InStr(1, var_144, "Begin VB.Menu Hallop", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep", 0) > 0)))) Then
  loc_1A8BEFD:     var_154 = "BANQ"
  loc_1A8BF00:   End If
  loc_1A8BF18:   If (InStr(1, var_144, "Begin VB.Menu HallTax", 0) > 0) Then
  loc_1A8BF1E:     var_154 = "BANQ"
  loc_1A8BF21:   End If
  loc_1A8BF39:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS", 0) > 0) Then
  loc_1A8BF3F:     var_154 = "BANQ"
  loc_1A8BF42:   End If
  loc_1A8BF5A:   If (InStr(1, var_144, "Begin VB.Menu HallM", 0) > 0) Then
  loc_1A8BF60:     var_154 = "BANQ"
  loc_1A8BF63:   End If
  loc_1A8BF91:   If CBool((InStr(1, var_144, "Begin VB.Menu OdcEnt1", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep1", 0) > 0)))) Then
  loc_1A8BF97:     var_154 = "ODC"
  loc_1A8BF9A:   End If
  loc_1A8BFB2:   If (InStr(1, var_144, "Begin VB.Menu OdcOP", 0) > 0) Then
  loc_1A8BFB8:     var_154 = "ODC"
  loc_1A8BFBB:   End If
  loc_1A8BFD3:   If (InStr(1, var_144, "Begin VB.Menu OdcRep", 0) > 0) Then
  loc_1A8BFD9:     var_154 = "ODC"
  loc_1A8BFDC:   End If
  loc_1A8BFF4:   If (InStr(1, var_144, "Begin VB.Menu OdcTax", 0) > 0) Then
  loc_1A8BFFA:     var_154 = "ODC"
  loc_1A8BFFD:   End If
  loc_1A8C015:   If (InStr(1, var_144, "Begin VB.Menu OdcMis", 0) > 0) Then
  loc_1A8C01B:     var_154 = "ODC"
  loc_1A8C01E:   End If
  loc_1A8C036:   If (InStr(1, var_144, "Begin VB.Menu", 0) > 0) Then
  loc_1A8C03F:     Call 0.Method_arg_30 (var_1A0, var_146, var_160, var_160, var_160, var_146)
  loc_1A8C047:     var_144 = var_1A0
  loc_1A8C04A:   End If
  loc_1A8C04D:   var_272 = var_146
  loc_1A8C056:   If (var_272 = 0) Then
  loc_1A8C095:     var_1F0 = (Len(Mid(var_144, &H1C, var_E4)) - 1)
  loc_1A8C0AA:     var_14C = CStr(Left(Mid(var_144, &H1C, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8C0BC:     var_172 = &HFF
  loc_1A8C0F0:     If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8C110:       var_194 = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8C116:     Else
  loc_1A8C119:       var_194 = var_14C
  loc_1A8C11C:     End If
  loc_1A8C142:     var_C4 = Mid(var_144, (InStr(1, var_144, "VB.Menu", 0) + 8), var_A4)
  loc_1A8C14D:     var_E4 = RTrim(Mid(var_144, &H1C, var_A4))
  loc_1A8C156:     var_188 = CStr(var_E4)
  loc_1A8C165:   Else
  loc_1A8C16B:     If (var_272 = 1) Then
  loc_1A8C1AA:       var_1F0 = (Len(Mid(var_144, &H1F, var_E4)) - 1)
  loc_1A8C1BF:       var_14C = CStr(Left(Mid(var_144, &H1F, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8C1D1:       var_172 = &HFF
  loc_1A8C205:       If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8C225:         var_184 = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8C22B:       Else
  loc_1A8C22E:         var_184 = var_14C
  loc_1A8C231:       End If
  loc_1A8C234:     Else
  loc_1A8C23A:       If (var_272 = 2) Then
  loc_1A8C279:         var_1F0 = (Len(Mid(var_144, &H22, var_E4)) - 1)
  loc_1A8C28E:         var_14C = CStr(Left(Mid(var_144, &H22, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0))))
  loc_1A8C2A0:         var_172 = &HFF
  loc_1A8C2A6:       Else
  loc_1A8C2AC:         If (var_272 = 3) Then
  loc_1A8C2EB:           var_1F0 = (Len(Mid(var_144, &H25, var_E4)) - 1)
  loc_1A8C2F7:           var_200 = Left(Mid(var_144, &H25, var_A4), CLng((InStr(1, Ucase(var_144), "RPT", 0) > 0)))
  loc_1A8C300:           var_14C = CStr(var_200)
  loc_1A8C312:           var_172 = &HFF
  loc_1A8C318:         Else
  loc_1A8C31B:           var_14C = vbNullString
  loc_1A8C31E:         End If
  loc_1A8C31E:       End If
  loc_1A8C31E:     End If
  loc_1A8C31E:   End If
  loc_1A8C324:   Call 0.Method_arg_30 (var_1A0, var_172, var_172, var_172, var_172, var_272)
  loc_1A8C32C:   var_144 = var_1A0
  loc_1A8C35D:   If CBool((InStr(1, var_144, "Begin VB.Menu HallEnt", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep", 0) > 0)))) Then
  loc_1A8C363:     var_154 = "BANQ"
  loc_1A8C366:   End If
  loc_1A8C394:   If CBool((InStr(1, var_144, "Begin VB.Menu HallEnt1", 0) Or CLng((InStr(1, var_144, "Begin VB.Menu BanqRep1", 0) > 0)))) Then
  loc_1A8C39A:     var_154 = "ODC"
  loc_1A8C39D:   End If
  loc_1A8C3B5:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS", 0) > 0) Then
  loc_1A8C3BB:     var_154 = "BANQ"
  loc_1A8C3BE:   End If
  loc_1A8C3D6:   If (InStr(1, var_144, "Begin VB.Menu BanqRepMIS1", 0) > 0) Then
  loc_1A8C3DC:     var_154 = "ODC"
  loc_1A8C3DF:   End If
  loc_1A8C3F7:   If (InStr(1, var_144, "Begin VB.Menu HallM", 0) > 0) Then
  loc_1A8C3FD:     var_154 = "BANQ"
  loc_1A8C400:   End If
  loc_1A8C418:   If (InStr(1, var_144, "End", 0) <= 0) Then
  loc_1A8C41D:     var_172 = 0
  loc_1A8C420:   End If
  loc_1A8C428:   If (var_14C <> vbNullString) Then
  loc_1A8C443:     If (InStr(1, var_144, "Begin VB.Menu ", 0) > 0) Then
  loc_1A8C448:       var_172 = &HFF
  loc_1A8C44E:       var_150 = "N"
  loc_1A8C454:     Else
  loc_1A8C46C:       If (InStr(1, var_144, "Index           =   ", 0) > 0) Then
  loc_1A8C495:         var_C4 = Mid(var_144, (InStr(1, var_144, "Index           =   ", 0) + &H14), var_A4)
  loc_1A8C49F:         var_196 = CInt(Mid(var_144, &H25, var_A4))
  loc_1A8C4B1:         Call 0.Method_arg_30 (var_1A0, var_196, var_172, var_172, var_160)
  loc_1A8C4B9:         var_144 = var_1A0
  loc_1A8C4D4:         If (InStr(1, var_144, "End", 0) <= 0) Then
  loc_1A8C4DA:           var_150 = "N"
  loc_1A8C4DF:           var_172 = 0
  loc_1A8C4E2:         End If
  loc_1A8C4FA:         If (InStr(1, var_144, "Visible         =   0   'False", 0) > 0) Then
  loc_1A8C500:           var_150 = "V"
  loc_1A8C503:         End If
  loc_1A8C506:       Else
  loc_1A8C51E:         If (InStr(1, var_144, "Visible         =   0   'False", 0) > 0) Then
  loc_1A8C524:           var_150 = "V"
  loc_1A8C527:         End If
  loc_1A8C527:       End If
  loc_1A8C527:     End If
  loc_1A8C527:   End If
  loc_1A8C52D:   If (var_146 >= 0) Then
  loc_1A8C539:     unk_5C83B4.BeginTrans var_1B0
  loc_1A8C544:     var_162 = (var_162 + 1)
  loc_1A8C59E:     If (((((var_16C = CStr(var_15E)) And (var_15E = 0)) Or ((((CDbl(var_15E) = CDbl("0")) And (var_160 = 0)) And (CDbl(var_15C) <> CDbl(0))) And (var_16C = var_15C))) Or ((CDbl(var_16E) <> CDbl("0")) And (var_15E = 0))) And (var_150 <> "V")) Then
  loc_1A8C5A4:       var_150 = "N"
  loc_1A8C5A7:     End If
  loc_1A8C5D8:     If ((InStr(1, var_14C, "&", 0) > 0) And (InStr(1, var_14C, " & ", 0) <= 0)) Then
  loc_1A8C5F8:       var_14C = Replace(var_14C, "&", vbNullString, 1, -1, 0)
  loc_1A8C5FE:       var_180 = var_14C
  loc_1A8C604:     Else
  loc_1A8C607:       var_180 = var_14C
  loc_1A8C60A:     End If
  loc_1A8C61D:     var_B4 = "-"
  loc_1A8C628:     If (Trim(var_180) = "REPORT") Then
  loc_1A8C62D:       var_18E = 9
  loc_1A8C630:     End If
  loc_1A8C63B:     var_A4 = Trim(var_180)
  loc_1A8C64E:     If (var_A4 = vbNullString) Then
  loc_1A8C654:       var_180 = "...."
  loc_1A8C657:     End If
  loc_1A8C670:     var_1A4 = "INSERT INTO menuHelp1 (UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Flag) VALUES('SA'," & CStr(var_156)
  loc_1A8C6D8:     var_2B4 = var_1A4 & "," & var_15C & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & ",'" & var_18C & "'," & CStr(var_196)
  loc_1A8C6ED:     Proc_6_17_EAA2B0(var_A4, var_14C, CVar(var_2B4 & ","), var_200, -1, var_19C, var_18E)
  loc_1A8C71F:     unk_5C83B4.Execute CStr(var_162 & var_A4 & ",'" & CVar(var_150) & "')"), var_172, var_15E
  loc_1A8C77A:     var_1A4 = "INSERT INTO menuHelp (UserName,CompCode,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode,Module_Name) VALUES('SA',''," & CStr(var_156)
  loc_1A8C7DB:     var_C4 = CVar(var_1A4 & "," & var_15C & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & "," & CStr(var_196) & ",") 'String
  loc_1A8C7E9:     Proc_6_17_EAA2B0(var_A4, var_14C, var_C4, var_2C8, -1)
  loc_1A8C7FA:     var_104 = var_19C & var_A4 & ",'" 
  loc_1A8C84B:     unk_5C83B4.Execute CStr(var_146 & CVar(Proc_6_38_E68A98(var_154, var_104 & CVar(var_150) & "','", var_15E)) & "','" & CVar(var_18C) & "')"), var_160, var_15E
  loc_1A8C8AB:     var_F4 = var_180
  loc_1A8C8B3:     Proc_6_17_EAA2B0(var_104)
  loc_1A8C91A:     var_200 = "INSERT INTO User_Module (Code,Name,Flag,SrNo,Module_Name,ID) VALUES('" & Left(var_18C, &HF) & "'," & var_104 & "," & CVar(var_18E) 
  loc_1A8C964:     unk_5C83B4.Execute CStr(var_200 & "," & CVar(var_162) & ",'" & Left(var_184, &H19) & "','" & Left(var_18C, 8) & "')"), var_368, -1
  loc_1A8C996:     var_174 = &HFF
  loc_1A8C99C:     var_16C = var_15C
  loc_1A8C9A2:     var_16E = var_15E
  loc_1A8C9A8:     var_170 = var_160
  loc_1A8C9AE:     var_154 = vbNullString
  loc_1A8C9B9:     If (var_150 = "E") Then
  loc_1A8C9BE:       var_18E = 0
  loc_1A8C9C4:     Else
  loc_1A8C9C6:       var_18E = 1
  loc_1A8C9C9:     End If
  loc_1A8C9CF:     unk_5C83B4.CommitTrans
  loc_1A8C9D6:     var_196 = &HFF
  loc_1A8C9DC:   Else
  loc_1A8C9DE:     var_174 = 0
  loc_1A8C9E1:   End If
  loc_1A8C9E1:   GoTo loc_1A8B958
  loc_1A8C9E4:   ' Referenced from: 1A8BEC6
  loc_1A8C9E4: End If
  loc_1A8C9ED: unk_5C83B4.BeginTrans var_1B0
  loc_1A8C9FB: For Each var_108 In MemVar_1F92244
  loc_1A8CA08:   If TypeOf var_108 Is arg_E Then
  loc_1A8CA37:     var_104 = (InStr(1, Ucase(var_108.Name), "REPORT", 0) > 0)
  loc_1A8CA77:     var_260 = var_108.Name
  loc_1A8CA7F:     var_270 = Ucase(var_260)
  loc_1A8CAD3:     var_38C = var_104 Or (InStr(1, Ucase(var_108.Name), "REP", 0) > 0) Or (InStr(1, var_270, "RPT", 0) > 0) Or (InStr(1, Ucase(var_108.Name), "RPT", 0) > 0)
  loc_1A8CAF4:     If CBool(var_38C) Then
  loc_1A8CB28:       var_108.Connection15.Execute CStr("UPDATE menuHelp SET Flag='R' WHERE [Option]='" & var_108.CAPTION & "' AND Flag NOT IN ('N','V')"), var_104, -1
  loc_1A8CB6F:       var_108.Connection15.Execute CStr("UPDATE menuHelp1 SET Flag='R' WHERE MenuCaption='" & var_108.CAPTION & "' AND Flag NOT IN ('N','V')"), var_104, -1
  loc_1A8CB9A:       var_A4 = var_108.CAPTION
  loc_1A8CB9F:       var_C4 = "UPDATE User_Module SET Flag=1 WHERE Name='" & var_A4 
  loc_1A8CBB6:       var_108.Connection15.Execute CStr(var_C4 & "' AND Flag <>9"), var_104, -1
  loc_1A8CBCC:     End If
  loc_1A8CBCC:   End If
  loc_1A8CBCF: Next
  loc_1A8CBDB: unk_5C83B4.CommitTrans
  loc_1A8CC04: unk_5C83B4.Execute "SELECT Code,Name FROM Depart WHERE LogSite_Code='" & MemVar_1F92078 & "' and Resttype IN ('Outlet','Room Service') ", var_A4, -1
  loc_1A8CC0F: Set var_124 = var_19C
  loc_1A8CC25: var_1B0 = var_124.RecordCount
  loc_1A8CC33: If (var_1B0 > 0) Then
  loc_1A8CC3F:   unk_5C83B4.BeginTrans var_1B0
  loc_1A8CC46:   var_15E = 0
  loc_1A8CC54:   var_15C = CStr((CDbl(var_16C) + CDbl(7)))
  loc_1A8CC5D:   var_B4 = 0
  loc_1A8CC7C:   unk_5C83B4.Execute "SELECT Max(Opt1) FROM menuHelp WHERE [Option]='POS Operations'", var_A4, -1
  loc_1A8CC84:   var_19C = var_19C.Fields
  loc_1A8CC8C:   var_B4 = var_1AC.Item(var_1AC)
  loc_1A8CC94:   var_390 = var_390.Value
  loc_1A8CC9D:   var_168 = CStr(var_C4)
  loc_1A8CCB6:   var_B4 = 0
  loc_1A8CCD5:   unk_5C83B4.Execute "SELECT max(Opt2) FROM menuHelp WHERE [Option]='POS Operations'", var_A4, -1
  loc_1A8CCDD:   var_19C = var_19C.Fields
  loc_1A8CCE5:   var_B4 = var_1AC.Item(var_1AC)
  loc_1A8CCED:   var_390 = var_390.Value
  loc_1A8CCF6:   var_16C = CStr(var_C4)
  loc_1A8CD34:   unk_5C83B4.Execute "UPDATE menuHelp set Flag='D' WHERE Opt1=" & var_168 & " AND Opt2=" & var_16C, var_A4, -1
  loc_1A8CD48:   ' Referenced from: 1A8D134
  loc_1A8CD57:   If Not(var_124.EOF) Then
  loc_1A8CD83:     var_27C = "SELECT Opt1,Opt2,[Option],Flag FROM menuHelp WHERE Opt1=" & var_168 & " AND Opt2=" & var_16C & " AND Opt3<>0 AND Opt4=0 AND Flag<>'N'"
  loc_1A8CD8C:     unk_5C83B4.Execute var_27C, var_A4, -1
  loc_1A8CD97:     Set var_128 = var_19C
  loc_1A8CDBF:     If (var_128.RecordCount > 0) Then
  loc_1A8CDF4:       var_C4 = InStr(1, CVar(var_124.Fields.Item("Name")), "'", 0)
  loc_1A8CE0A:       If (var_C4 > 0) Then
  loc_1A8CE55:         var_178 = Replace(CStr(var_124.Fields.Item("Name").Value), "'", vbNullString, 1, -1, 0)
  loc_1A8CE68:       Else
  loc_1A8CE7A:         var_19C = var_124.Fields
  loc_1A8CE93:         var_178 = CStr(var_19C.Item("Name").Value)
  loc_1A8CEA0:       End If
  loc_1A8CEA6:       var_162 = (var_162 + 1)
  loc_1A8CECB:       var_278 = "INSERT INTO menuHelp (Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode) VALUES(" & var_168 & "," & var_15C
  loc_1A8CEE5:       var_E4 = CVar(var_278 & ",0,0," & CStr(var_162) & ",-1,") 'String
  loc_1A8CEF5:       var_A4 = CVar(Proc_6_38_E68A98(var_178, var_C4 & "' AND Flag <>9", var_260, -1, var_390, var_162)) 'String
  loc_1A8CEFB:       Proc_6_17_EAA2B0(var_C4, var_19C.Item("Name").Value, var_19C, var_19C)
  loc_1A8CF55:       unk_5C83B4.Execute CStr(var_C4 & var_C4 & ",'N','" & Trim(CVar(var_124.Fields.Item("Code"))) & "')"), var_C4, var_15E
  loc_1A8CF8B:       var_15E = &HB
  loc_1A8CF8E:       ' Referenced from: 1A8D11B
  loc_1A8CF9D:       If Not(var_128.EOF) Then
  loc_1A8CFA6:         var_162 = (var_162 + 1)
  loc_1A8CFAF:         var_1B0 = var_128.AbsolutePosition
  loc_1A8CFC1:         var_3A0 = Val(CStr(var_1B0))
  loc_1A8CFD3:         var_19C = var_128.Fields
  loc_1A8CFE3:         var_A4 = CVar(var_19C.Item("Option")) 'Address
  loc_1A8CFEA:         Proc_6_17_EAA2B0(var_C4, var_A4, var_3A0)
  loc_1A8D015:         var_200 = Trim(CVar(var_124.Fields.Item("Code")))
  loc_1A8D03C:         var_278 = "INSERT INTO menuHelp (Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Flag,OutletCode) VALUES(" & var_168 & "," & var_15C
  loc_1A8D088:         var_2A8 = CStr((var_3A0 - CDbl(1)))
  loc_1A8D099:         var_104 = CVar(var_278 & "," & CStr(var_15E) & "," & CStr(var_160) & "," & CStr(var_162) & "," & CStr(var_196) & ",") & var_C4 
  loc_1A8D0C0:         unk_5C83B4.Execute CStr(var_104 & ",'E','" & var_200 & "')"), var_260, -1
  loc_1A8D10D:         var_128.MoveNext
  loc_1A8D118:         var_15E = (var_15E + 1)
  loc_1A8D11B:         GoTo loc_1A8CF8E
  loc_1A8D11E:       End If
  loc_1A8D11E:     End If
  loc_1A8D121:     var_124.MoveNext
  loc_1A8D131:     var_15C = CStr((CDbl(var_15C) + CDbl(1)))
  loc_1A8D134:     GoTo loc_1A8CD48
  loc_1A8D137:   End If
  loc_1A8D14D:   unk_5C83B4.Execute "DELETE FROM menuHelp WHERE flag='D'", var_A4, -1
  loc_1A8D15E:   unk_5C83B4.CommitTrans
  loc_1A8D163: End If
  loc_1A8D16C: unk_5C83B4.BeginTrans var_1B0
  loc_1A8D187: unk_5C83B4.Execute "SELECT Opt1,opt2,opt3,opt4,[option],flag FROM menuHelp WHERE [Option]='-' and  Flag='E'", var_A4, -1
  loc_1A8D192: Set var_120 = var_19C
  loc_1A8D1A1: var_1B0 = var_120.RecordCount
  loc_1A8D1AF: If (var_1B0 > 0) Then
  loc_1A8D1B2:   ' Referenced from: 1A8D3ED
  loc_1A8D1C1:   If Not(var_120.EOF) Then
  loc_1A8D242:     var_398 = var_120.Fields
  loc_1A8D282:     If CBool((var_120.Fields.Item("Opt2").Value > 0) And (var_120.Fields.Item("Opt3").Value = 0) And (var_398.Item("Opt4").Value = 0)) Then
  loc_1A8D2F8:       var_1D0 = "UPDATE menuHelp SET Flag='R' WHERE Opt1=" & var_120.Fields.Item("Opt1").Value & " AND Opt2>" & var_120.Fields.Item("Opt2").Value 
  loc_1A8D30F:       unk_5C83B4.Execute CStr(var_1D0 & " AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V')"), var_200, -1
  loc_1A8D359:       var_19C = var_120.Fields
  loc_1A8D369:       var_A4 = var_19C.Item("Opt1").Value
  loc_1A8D3B1:       var_1F0 = "UPDATE menuHelp1 SET Flag='R' WHERE Opt1=" & var_A4 & " AND Opt2>" & var_120.Fields.Item("Opt2").Value & " AND Opt3=0 AND Opt4=0 AND Flag NOT IN ('N','V')" 
  loc_1A8D3BF:       unk_5C83B4.Execute CStr(var_1F0), var_200, -1
  loc_1A8D3E5:     End If
  loc_1A8D3E8:     var_120.MoveNext
  loc_1A8D3ED:     GoTo loc_1A8D1B2
  loc_1A8D3F0:   End If
  loc_1A8D3F0: End If
  loc_1A8D3F6: unk_5C83B4.CommitTrans
  loc_1A8D404: unk_5C83B4.BeginTrans var_1B0
  loc_1A8D41F: unk_5C83B4.Execute "UPDATE menuHelp SET Flag='E' WHERE UserName='SA' AND [Option] IN ('Gravy Item Entry','Room Inventory ','Room Inventory','Leave','Telephone Call Entry','InBox') AND Module_Name IN ('Purch','NightAuditMenu','Pay','mnuTelMast','mnuMSG')", var_A4, -1
  loc_1A8D440: unk_5C83B4.Execute "UPDATE menuHelp SET Flag='V' WHERE UserName='SA' AND [Option] IN ('Restaurant Change ','Restaurant Change') AND Module_Name IN ('Rest')", var_A4, -1
  loc_1A8D454: For Each var_108 In MemVar_1F92244
  loc_1A8D461:   If TypeOf var_108 Is arg_E Then
  loc_1A8D491:     var_104 = var_108.CAPTION
  loc_1A8D4A0:     var_1D0 = InStr(1, var_104, " & ", 0)
  loc_1A8D4AA:     var_1F0 = (var_1D0 <= 0)
  loc_1A8D4BF:     If CBool((InStr(1, var_108.CAPTION, "&", 0) > 0) And var_1F0) Then
  loc_1A8D4ED:       var_14C = Replace(CStr(var_108.CAPTION), "&", vbNullString, 1, -1, 0)
  loc_1A8D4F9:     Else
  loc_1A8D502:       var_14C = CStr(var_108.CAPTION)
  loc_1A8D508:     End If
  loc_1A8D50B:     var_A4 = var_108.Visible
  loc_1A8D519:     If (var_A4 = True) Then
  loc_1A8D539:       Proc_6_17_EAA2B0(var_A4, var_14C, "UPDATE menuHelp SET ShowInList='N' WHERE [Option]=", var_104, -1, var_19C, var_A4, var_19C)
  loc_1A8D558:       var_108.Connection15.Execute CStr(var_19C & var_A4 & vbNullString), var_398, var_398
  loc_1A8D571:     Else
  loc_1A8D5A0:       var_104 = CVar("UPDATE menuHelp SET Flag='V',ShowInList='N' WHERE [Option]='" & var_14C & "' AND Module_Name='") & var_108.Name & "'" 
  loc_1A8D5AE:       var_108.Connection15.Execute CStr(var_104), var_1D0, -1
  loc_1A8D5E5:       var_A4 = CVar("UPDATE menuHelp1 SET Flag='V' WHERE MenuCaption='" & var_14C & "' AND MenuName='") 'String
  loc_1A8D607:       var_108.Connection15.Execute CStr(var_A4 & var_108.Name & "'"), var_1D0, -1
  loc_1A8D623:     End If
  loc_1A8D623:   End If
  loc_1A8D626: Next
  loc_1A8D632: unk_5C83B4.CommitTrans
  loc_1A8D640: unk_5C83B4.BeginTrans var_1B0
  loc_1A8D65B: unk_5C83B4.Execute "SELECT Opt1,Opt2 FROM menuHelp WHERE Opt3=0 AND Opt4=0 AND Opt2<>0 AND Flag='V' AND UserName='SA'", var_A4, -1
  loc_1A8D666: Set var_120 = var_19C
  loc_1A8D675: var_1B0 = var_120.RecordCount
  loc_1A8D683: If (var_1B0 > 0) Then
  loc_1A8D686:   ' Referenced from: 1A8D7EA
  loc_1A8D695:   If Not(var_120.EOF) Then
  loc_1A8D70B:     var_1D0 = "UPDATE menuHelp SET Flag='V' WHERE opt1=" & var_120.Fields.Item("Opt1").Value & " AND Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A8D719:     unk_5C83B4.Execute CStr(var_1D0), var_1F0, -1
  loc_1A8D761:     var_19C = var_120.Fields
  loc_1A8D771:     var_A4 = var_19C.Item("Opt1").Value
  loc_1A8D782:     var_E4 = "UPDATE menuHelp1 SET Flag='V' WHERE opt1=" & var_A4 & " AND Opt2=" 
  loc_1A8D7B0:     var_1D0 = var_E4 & var_120.Fields.Item("Opt2").Value 
  loc_1A8D7BE:     unk_5C83B4.Execute CStr(var_1D0), var_1F0, -1
  loc_1A8D7E5:     var_120.MoveNext
  loc_1A8D7EA:     GoTo loc_1A8D686
  loc_1A8D7ED:   End If
  loc_1A8D7ED: End If
  loc_1A8D7F3: unk_5C83B4.CommitTrans
  loc_1A8D801: unk_5C83B4.BeginTrans var_1B0
  loc_1A8D81C: unk_5C83B4.Execute "SELECT Opt1 FROM menuHelp WHERE Opt2=0 AND Opt3=0 AND Flag='V' AND UserName='SA'", var_A4, -1
  loc_1A8D827: Set var_120 = var_19C
  loc_1A8D836: var_1B0 = var_120.RecordCount
  loc_1A8D844: If (var_1B0 > 0) Then
  loc_1A8D847:   ' Referenced from: 1A8D929
  loc_1A8D856:   If Not(var_120.EOF) Then
  loc_1A8D8A3:     unk_5C83B4.Execute CStr("UPDATE menuHelp SET Flag='V' WHERE Opt1=" & var_120.Fields.Item("Opt1").Value), var_E4, -1
  loc_1A8D8E1:     var_19C = var_120.Fields
  loc_1A8D8F1:     var_A4 = var_19C.Item("Opt1").Value
  loc_1A8D907:     unk_5C83B4.Execute CStr("UPDATE menuHelp1 SET Flag='V' WHERE Opt1=" & var_A4), var_E4, -1
  loc_1A8D924:     var_120.MoveNext
  loc_1A8D929:     GoTo loc_1A8D847
  loc_1A8D92C:   End If
  loc_1A8D92C: End If
  loc_1A8D932: unk_5C83B4.CommitTrans
  loc_1A8D94D: unk_5C83B4.Execute "UPDATE menuHelp SET Flag='V' WHERE [Option]='' OR [Option] is Null", var_A4, -1
  loc_1A8D96E: unk_5C83B4.Execute "UPDATE menuHelp1 SET Flag='V' WHERE MenuCaption='' OR MenuCaption is Null", var_A4, -1
  loc_1A8D982: unk_5C83B4.BeginTrans var_1B0
  loc_1A8D99D: unk_5C83B4.Execute "SELECT Code,Name,SrNo FROM User_Module", var_A4, -1
  loc_1A8D9A8: Set var_120 = var_19C
  loc_1A8D9B7: var_1B0 = var_120.RecordCount
  loc_1A8D9C5: If (var_1B0 > 0) Then
  loc_1A8D9C8:   ' Referenced from: 1A8DAD7
  loc_1A8D9D7:   If Not(var_120.EOF) Then
  loc_1A8D9FE:     var_19C = var_120.Fields
  loc_1A8DA0E:     var_A4 = var_19C.Item("Code").Value
  loc_1A8DA32:     var_390 = var_120.Fields
  loc_1A8DA49:     Proc_6_17_EAA2B0(var_1D0, CVar(var_390.Item("Name")), "INSERT INTO User1 (User_Name,Form_Code,Param_Str,Form_Name,SrNo) VALUES('SA','" & var_A4 & "',' ',", var_270, -1, var_3AC, var_19C)
  loc_1A8DA51:     var_1F0 = var_19C & var_1D0 
  loc_1A8DA9F:     unk_5C83B4.Execute CStr(var_1F0 & "," & var_120.Fields.Item("SrNo").Value & ")"), var_19C, var_390
  loc_1A8DAD2:     var_120.MoveNext
  loc_1A8DAD7:     GoTo loc_1A8D9C8
  loc_1A8DADA:   End If
  loc_1A8DADA: End If
  loc_1A8DAE0: unk_5C83B4.CommitTrans
  loc_1A8DAEE: unk_5C83B4.BeginTrans var_1B0
  loc_1A8DB09: unk_5C83B4.Execute "UPDATE menuHelp1 SET Param_Str='AEDP' WHERE Flag IN ('E','N')AND MenuIndex >=0", var_A4, -1
  loc_1A8DB2A: unk_5C83B4.Execute "UPDATE menuHelp1 SET Param_Str='***P' WHERE Flag = 'R'", var_A4, -1
  loc_1A8DB4B: unk_5C83B4.Execute "UPDATE menuHelp SET Param_Str='AEDP' WHERE Flag IN ('E','N')AND Menu_Index >=0", var_A4, -1
  loc_1A8DB6C: unk_5C83B4.Execute "UPDATE menuHelp SET Param_Str='***P' WHERE Flag = 'R'", var_A4, -1
  loc_1A8DB7D: unk_5C83B4.CommitTrans
  loc_1A8DBA6: unk_5C83B4.Execute "SELECT Comp_Code FROM Company where SIteCode='" & MemVar_1F92078 & "'", var_A4, -1
  loc_1A8DBB1: Set var_130 = var_19C
  loc_1A8DBD5: If (var_130.RecordCount > 0) Then
  loc_1A8DBD8:   ' Referenced from: 1A8E5FD
  loc_1A8DBE7:   If Not(var_130.EOF) Then
  loc_1A8DBF0:     var_1B0 = var_130.AbsolutePosition
  loc_1A8DBFE:     If (var_1B0 = 1) Then
  loc_1A8DC2C:       var_3B0 = CStr(var_130.Fields.Item("Comp_Code").Value)
  loc_1A8DC42:       unk_5C83B4.BeginTrans var_1B0
  loc_1A8DC8C:       var_E4 = "UPDATE menuHelp SET CompCode='" & var_130.Fields.Item("Comp_Code").Value & "', UserName='SA' WHERE (CompCode is NULL or CompCode='' or CompCode='" 
  loc_1A8DCAD:       unk_5C83B4.Execute CStr(var_E4 & CVar(MemVar_1F92070) & "') and UserName='SA' OR UserName Is Null"), var_1F0, -1
  loc_1A8DCF1:       var_19C = var_130.Fields
  loc_1A8DD01:       var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A8DD1C:       var_104 = "UPDATE menuHelp1 SET CompCode='" & var_A4 & "', UserName='SA' WHERE (CompCode is NULL or CompCode='' or CompCode='" & CVar(MemVar_1F92070) 
  loc_1A8DD33:       unk_5C83B4.Execute CStr(var_104 & "') and UserName='SA' OR UserName Is Null"), var_1F0, -1
  loc_1A8DD59:       unk_5C83B4.CommitTrans
  loc_1A8DD61:     Else
  loc_1A8DD75:       var_1A0 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,OutLetCode,Module_Name FROM menuHelp WHERE CompCode='" & var_3B0
  loc_1A8DD85:       unk_5C83B4.Execute var_1A0 & "' AND UserName='SA'", var_A4, -1
  loc_1A8DD90:       Set var_134 = var_19C
  loc_1A8DDA6:       var_1B0 = var_134.RecordCount
  loc_1A8DDB4:       If (var_1B0 > 0) Then
  loc_1A8DDC0:         unk_5C83B4.BeginTrans var_1B0
  loc_1A8DDC5:         ' Referenced from:   1A8E1DE
  loc_1A8DDD4:         If Not(var_134.EOF) Then
  loc_1A8DDE9:           var_19C = var_130.Fields
  loc_1A8DDF9:           var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A8DE67:           var_6A8 = Val(CStr(var_134.Fields.Item("Opt2").Value))
  loc_1A8DE9D:           var_6B0 = Val(CStr(var_134.Fields.Item("Opt3").Value))
  loc_1A8DED3:           var_6B8 = Val(CStr(var_134.Fields.Item("Opt4").Value))
  loc_1A8DF09:           var_6C0 = Val(CStr(var_134.Fields.Item("Code").Value))
  loc_1A8DF3F:           var_6C8 = Val(CStr(var_134.Fields.Item("Menu_Index").Value))
  loc_1A8DF68:           Proc_6_17_EAA2B0(var_494, CVar(var_134.Fields.Item("Option")), var_6C8, var_6C0, var_6B8, var_6B0, var_6A8)
  loc_1A8DF8F:           var_4EC = var_134.Fields.Item("param_str").Value
  loc_1A8DFF4:           var_5D0 = var_134.Fields
  loc_1A8E004:           var_5F4 = var_5D0.Item("OutletCode").Value
  loc_1A8E03D:           var_B4 = "INSERT INTO menuHelp (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Param_Str,ShowInList,Flag,OutletCode,Module_Name) VALUES('"
  loc_1A8E081:           var_270 = var_B4 & var_A4 & "','SA'," & CVar(Val(CStr(var_134.Fields.Item("Opt1").Value))) & "," & CVar(var_6A8) & "," & CVar(var_6B0) 
  loc_1A8E0E6:           var_51C = var_270 & "," & CVar(var_6B8) & "," & CVar(var_6C0) & "," & CVar(var_6C8) & "," & var_494 & ",'" & var_4EC & "','" 
  loc_1A8E116:           var_624 = var_51C & var_134.Fields.Item("ShowInList").Value & "','" & var_134.Fields.Item("Flag").Value & "','" & var_5F4 & "','" 
  loc_1A8E134:           unk_5C83B4.Execute CStr(var_624 & var_134.Fields.Item("Module_name").Value & "')"), var_69C, -1
  loc_1A8E1D9:           var_134.MoveNext
  loc_1A8E1DE:           GoTo loc_1A8DDC5
  loc_1A8E1E1:         End If
  loc_1A8E1E7:         unk_5C83B4.CommitTrans
  loc_1A8E1EC:       End If
  loc_1A8E200:       var_1A0 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag FROM menuHelp1 WHERE CompCode='" & var_3B0
  loc_1A8E210:       unk_5C83B4.Execute var_1A0 & "' AND UserName='SA'", var_A4, -1
  loc_1A8E21B:       Set var_134 = var_19C
  loc_1A8E231:       var_1B0 = var_134.RecordCount
  loc_1A8E23F:       If (var_1B0 > 0) Then
  loc_1A8E24B:         unk_5C83B4.BeginTrans var_1B0
  loc_1A8E250:         ' Referenced from:   1A8E5E7
  loc_1A8E25F:         If Not(var_134.EOF) Then
  loc_1A8E274:           var_19C = var_130.Fields
  loc_1A8E284:           var_A4 = var_19C.Item("Comp_Code").Value
  loc_1A8E29B:           var_390 = var_134.Fields
  loc_1A8E2AB:           var_104 = var_390.Item("Opt1").Value
  loc_1A8E2BC:           var_3A0 = Val(CStr(var_104))
  loc_1A8E2F2:           var_6A8 = Val(CStr(var_134.Fields.Item("Opt2").Value))
  loc_1A8E328:           var_6B0 = Val(CStr(var_134.Fields.Item("Opt3").Value))
  loc_1A8E35E:           var_6B8 = Val(CStr(var_134.Fields.Item("Opt4").Value))
  loc_1A8E394:           var_6C0 = Val(CStr(var_134.Fields.Item("Code").Value))
  loc_1A8E3F1:           var_6C8 = Val(CStr(var_134.Fields.Item("menuINDEX").Value))
  loc_1A8E41A:           Proc_6_17_EAA2B0(var_4EC, CVar(var_134.Fields.Item("MenuCaption")), var_6C8, var_6C0, var_6B8, var_6B0, var_6A8)
  loc_1A8E441:           var_544 = var_134.Fields.Item("param_str").Value
  loc_1A8E458:           var_578 = var_134.Fields
  loc_1A8E468:           var_59C = var_578.Item("Flag").Value
  loc_1A8E47A:           var_B4 = "INSERT INTO menuHelp1 (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag) VALUES('"
  loc_1A8E4DB:           var_328 = var_B4 & var_A4 & "','SA'," & CVar(var_3A0) & "," & CVar(var_6A8) & "," & CVar(var_6B0) & "," & CVar(var_6B8) & "," 
  loc_1A8E523:           var_51C = var_328 & CVar(var_6C0) & ",'" & var_134.Fields.Item("menuNAME").Value & "'," & CVar(var_6C8) & "," & var_4EC & ",'" 
  loc_1A8E551:           unk_5C83B4.Execute CStr(var_51C & var_544 & "','" & var_59C & "')"), var_5F4, -1
  loc_1A8E5E2:           var_134.MoveNext
  loc_1A8E5E7:           GoTo loc_1A8E250
  loc_1A8E5EA:         End If
  loc_1A8E5F0:         unk_5C83B4.CommitTrans
  loc_1A8E5F5:       End If
  loc_1A8E5F5:     End If
  loc_1A8E5F8:     var_130.MoveNext
  loc_1A8E5FD:     GoTo loc_1A8DBD8
  loc_1A8E600:   End If
  loc_1A8E600: End If
  loc_1A8E616: unk_5C83B4.Execute "SELECT Distinct UserName,CompCode FROM menuHelp WHERE UserName<>'SA'", var_A4, -1
  loc_1A8E621: Set var_130 = var_19C
  loc_1A8E63E: If (var_130.RecordCount > 0) Then
  loc_1A8E641:   ' Referenced from: 1A8E9DC
  loc_1A8E650:   If Not(var_130.EOF) Then
  loc_1A8E660:     var_B4 = "SELECT CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,[Option],Menu_Index,Param_Str,Flag,ShowInList,Module_Name,OutLetCode FROM menuHelp WHERE CompCode='"
  loc_1A8E6A6:     unk_5C83B4.Execute CStr(var_B4 & var_130.Fields.Item("CompCode").Value & "' AND UserName='SA'"), var_104, -1
  loc_1A8E6B1:     Set var_134 = var_390
  loc_1A8E6D1:     var_1B0 = var_134.RecordCount
  loc_1A8E6DF:     If (var_1B0 > 0) Then
  loc_1A8E6EB:       unk_5C83B4.BeginTrans var_1B0
  loc_1A8E6F0:       ' Referenced from: 1A8E9C6
  loc_1A8E6FF:       If Not(var_134.EOF) Then
  loc_1A8E726:         var_19C = var_134.Fields
  loc_1A8E736:         var_A4 = var_19C.Item("Opt1").Value
  loc_1A8E75D:         var_390 = var_134.Fields
  loc_1A8E7AC:         var_220 = "UPDATE menuHelp SET Opt1=" & var_A4 & ",Opt2=" & var_390.Item("Opt2").Value & ",Opt3=" & var_134.Fields.Item("Opt3").Value 
  loc_1A8E823:         var_328 = var_220 & ",Opt4=" & var_134.Fields.Item("Opt4").Value & ",Code=" & var_134.Fields.Item("Code").Value & ",Module_Name='" 
  loc_1A8E851:         var_368 = var_328 & var_134.Fields.Item("Module_name").Value 
  loc_1A8E8BF:         var_494 = var_368 & "' WHERE CompCode='" & var_130.Fields.Item("CompCode").Value & "' AND UserName='" & var_130.Fields.Item("userName").Value 
  loc_1A8E8DE:         var_4C8 = var_134.Fields
  loc_1A8E8F6:         var_4EC = var_494 & "' AND Module_Name='" & var_4C8.Item("Module_name").Value 
  loc_1A8E929:         Proc_6_17_EAA2B0(var_544, CVar(var_134.Fields.Item("Option")), var_4EC & "' AND [Option]=", var_59C, -1, var_578, var_390)
  loc_1A8E948:         unk_5C83B4.Execute CStr(var_19C & var_544 & vbNullString), var_5D0, var_3A0
  loc_1A8E9C1:         var_134.MoveNext
  loc_1A8E9C6:         GoTo loc_1A8E6F0
  loc_1A8E9C9:       End If
  loc_1A8E9CF:       unk_5C83B4.CommitTrans
  loc_1A8E9D4:     End If
  loc_1A8E9D7:     var_130.MoveNext
  loc_1A8E9DC:     GoTo loc_1A8E641
  loc_1A8E9DF:   End If
  loc_1A8E9DF: End If
  loc_1A8E9E8: unk_5C83B4.BeginTrans var_1B0
  loc_1A8EA08: var_1A4 = "SELECT Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag,OutLetCode FROM menuHelp WHERE UserName='SA' AND CompCode='" & MemVar_1F92128 & "'"
  loc_1A8EA11: unk_5C83B4.Execute var_1A4, var_A4, -1
  loc_1A8EA1C: Set var_120 = var_19C
  loc_1A8EA32: var_1B0 = var_120.RecordCount
  loc_1A8EA40: If (var_1B0 > 0) Then
  loc_1A8EA43:   ' Referenced from: 1A8EE16
  loc_1A8EA52:   If Not(var_120.EOF) Then
  loc_1A8EACB:     var_1D0 = "Select * from UserModule where Opt1=" & var_120.Fields.Item("Opt1").Value & " And Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A8EB42:     var_2C8 = var_1D0 & " And Opt3=" & var_120.Fields.Item("Opt3").Value & " and Opt4=" & var_120.Fields.Item("Opt4").Value & " and Code=" 
  loc_1A8EB7E:     unk_5C83B4.Execute CStr(var_2C8 & var_120.Fields.Item("Code").Value), var_328, -1
  loc_1A8EB86:     var_3D0 = var_3D0.RecordCount
  loc_1A8EBD1:     If (var_1B0 <= 0) Then
  loc_1A8EBF8:       var_19C = var_120.Fields
  loc_1A8EC08:       var_A4 = var_19C.Item("Opt1").Value
  loc_1A8EC47:       var_1D0 = "INSERT INTO UserModule (Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag,OutLetCode) VALUES(" & var_A4 & "," & var_120.Fields.Item("Opt2").Value 
  loc_1A8ECEC:       var_318 = var_1D0 & "," & var_120.Fields.Item("Opt3").Value & "," & var_120.Fields.Item("Opt4").Value & "," & var_120.Fields.Item("Code").Value 
  loc_1A8ECF5:       var_328 = var_318 & "," 
  loc_1A8ED1F:       Proc_6_17_EAA2B0(var_368, CVar(var_120.Fields.Item("Option")), var_328, var_4EC, -1, var_4C8)
  loc_1A8ED7D:       var_460 = var_120.Fields
  loc_1A8ED8D:       var_494 = var_460.Item("OutletCode").Value
  loc_1A8EDAC:       unk_5C83B4.Execute CStr(var_1B0 & var_368 & ",'" & var_120.Fields.Item("Flag").Value & "','" & var_494 & "')"), var_19C, var_19C
  loc_1A8EE0E:     End If
  loc_1A8EE11:     var_120.MoveNext
  loc_1A8EE16:     GoTo loc_1A8EA43
  loc_1A8EE19:   End If
  loc_1A8EE19: End If
  loc_1A8EE1F: unk_5C83B4.CommitTrans
  loc_1A8EE2D: unk_5C83B4.BeginTrans var_1B0
  loc_1A8EE56: unk_5C83B4.Execute "SELECT Opt1,Opt2,Opt3,Opt4,Code,MenuCaption,Flag FROM menuHelp1 WHERE UserName='SA' AND CompCode='" & MemVar_1F92128 & "'", var_A4, -1
  loc_1A8EE61: Set var_120 = var_19C
  loc_1A8EE77: var_1B0 = var_120.RecordCount
  loc_1A8EE85: If (var_1B0 > 0) Then
  loc_1A8EE88:   ' Referenced from: 1A8F21A
  loc_1A8EE97:   If Not(var_120.EOF) Then
  loc_1A8EF10:     var_1D0 = "Select * from UserModule1 where Opt1=" & var_120.Fields.Item("Opt1").Value & " And Opt2=" & var_120.Fields.Item("Opt2").Value 
  loc_1A8EF87:     var_2C8 = var_1D0 & " And Opt3=" & var_120.Fields.Item("Opt3").Value & " and Opt4=" & var_120.Fields.Item("Opt4").Value & " and Code=" 
  loc_1A8EFC3:     unk_5C83B4.Execute CStr(var_2C8 & var_120.Fields.Item("Code").Value), var_328, -1
  loc_1A8EFCB:     var_3D0 = var_3D0.RecordCount
  loc_1A8F016:     If (var_1B0 <= 0) Then
  loc_1A8F03D:       var_19C = var_120.Fields
  loc_1A8F055:       var_C4 = "INSERT INTO UserModule1 (Opt1,Opt2,Opt3,Opt4,Code,[Option],Flag) VALUES(" & var_19C.Item("Opt1").Value 
  loc_1A8F05E:       var_E4 = var_C4 & "," 
  loc_1A8F084:       var_104 = var_120.Fields.Item("Opt2").Value
  loc_1A8F131:       var_318 = var_E4 & var_104 & "," & var_120.Fields.Item("Opt3").Value & "," & var_120.Fields.Item("Opt4").Value & "," & var_120.Fields.Item("Code").Value 
  loc_1A8F164:       Proc_6_17_EAA2B0(var_368, CVar(var_120.Fields.Item("MenuCaption")), var_318 & ",", var_494, -1)
  loc_1A8F1BA:       unk_5C83B4.Execute CStr(var_460 & var_368 & ",'" & var_120.Fields.Item("Flag").Value & "')"), var_1B0, var_19C
  loc_1A8F212:     End If
  loc_1A8F215:     var_120.MoveNext
  loc_1A8F21A:     GoTo loc_1A8EE88
  loc_1A8F21D:   End If
  loc_1A8F21D: End If
  loc_1A8F223: unk_5C83B4.CommitTrans
  loc_1A8F22D: Set var_120 = Nothing
  loc_1A8F235: Set var_124 = Nothing
  loc_1A8F23D: Set var_128 = Nothing
  loc_1A8F245: Set var_12C = Nothing
  loc_1A8F24D: MemVar_1F92044 = Nothing
  loc_1A8F256: Set var_130 = Nothing
  loc_1A8F25E: Set var_134 = Nothing
  loc_1A8F276: var_1A0 = "Process completed!" & vbCrLf
  loc_1A8F299: If (MsgBox(CVar(var_1A0 & "Please ReLoad Applicatrion."), &H44, var_C4, var_E4, var_104) = 6) Then
  loc_1A8F29C:   End
  loc_1A8F29E: End If
  loc_1A8F29E: Exit Sub
  loc_1A8F2B5: Set var_19C = Err()
  loc_1A8F2BB: Call 0.Method_arg_2C (var_1A0, 0, var_C4, var_E4)
  loc_1A8F2C6: MsgBox(CVar(var_1A0), var_104, var_6A0, var_3A0, )
  loc_1A8F2D9: Exit Sub
End Sub

Private Sub MatRep_Click(Index As Integer) '13BCAD0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_13BC167: var_B4 = CVar("Matrep" & "+") 'String
  loc_13BC182: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13BC193: On Error Goto loc_13BCA99
  loc_13BC19B: var_C6 = Index
  loc_13BC1A6: If (var_C6 = 0) Then
  loc_13BC1B5:   global_52 = New rInventRepView
  loc_13BC1CA:   global_52.GRepFormName = "PurchaseReg"
  loc_13BC1DD:   Set var_CC = var_F0(Index)
  loc_13BC1E3:   Call 0.Method_MatRep_Click0 (var_F4, var_C6)
  loc_13BC1EB:   MemVar_1F92200 = global_52.Menu.Caption
  loc_13BC1FD:   global_52.CAPTION = CVar(var_F4)
  loc_13BC215:   Call global_52.Show
  loc_13BC21E: Else
  loc_13BC226:   If (var_C6 = 1) Then
  loc_13BC235:     global_52 = New rInventRepView
  loc_13BC24A:     global_52.GRepFormName = "PurchaseSumm"
  loc_13BC25D:     Set var_CC = var_F0(Index)
  loc_13BC263:     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC26B:      = global_52.Menu.Caption
  loc_13BC27D:     global_52.CAPTION = CVar(var_F4)
  loc_13BC295:     Call global_52.Show
  loc_13BC29E:   Else
  loc_13BC2A6:     If (var_C6 = 2) Then
  loc_13BC2B5:       global_52 = New rInventRepView
  loc_13BC2CA:       global_52.GRepFormName = "CashCreditPurch"
  loc_13BC2DD:       Set var_CC = var_F0(Index)
  loc_13BC2E3:       Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC2EB:        = global_52.Menu.Caption
  loc_13BC2FD:       global_52.CAPTION = CVar(var_F4)
  loc_13BC315:       Call global_52.Show
  loc_13BC31E:     Else
  loc_13BC326:       If (var_C6 = 3) Then
  loc_13BC335:         global_52 = New rInventRepView
  loc_13BC34A:         global_52.GRepFormName = "StockRegStore"
  loc_13BC35D:         Set var_CC = var_F0(Index)
  loc_13BC363:         Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC36B:          = global_52.Menu.Caption
  loc_13BC37D:         global_52.CAPTION = CVar(var_F4)
  loc_13BC395:         Call global_52.Show
  loc_13BC39E:       Else
  loc_13BC3A6:         If (var_C6 = 4) Then
  loc_13BC3B5:           global_52 = New rInventRepView
  loc_13BC3CA:           global_52.GRepFormName = "StockSummStore"
  loc_13BC3DD:           Set var_CC = var_F0(Index)
  loc_13BC3E3:           Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC3EB:            = global_52.Menu.Caption
  loc_13BC3FD:           global_52.CAPTION = CVar(var_F4)
  loc_13BC415:           Call global_52.Show
  loc_13BC41E:         Else
  loc_13BC426:           If (var_C6 = 5) Then
  loc_13BC435:             global_52 = New rInventRepView
  loc_13BC44A:             global_52.GRepFormName = "StockINHand"
  loc_13BC45D:             Set var_CC = var_F0(Index)
  loc_13BC463:             Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC46B:              = global_52.Menu.Caption
  loc_13BC47D:             global_52.CAPTION = CVar(var_F4)
  loc_13BC495:             Call global_52.Show
  loc_13BC49E:           Else
  loc_13BC4A6:             If (var_C6 = 6) Then
  loc_13BC4B5:               global_52 = New rInventRepView
  loc_13BC4CA:               global_52.GRepFormName = "KitchenStkRep"
  loc_13BC4DD:               Set var_CC = var_F0(Index)
  loc_13BC4E3:               Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC4EB:                = global_52.Menu.Caption
  loc_13BC4FD:               global_52.CAPTION = CVar(var_F4)
  loc_13BC515:               Call global_52.Show
  loc_13BC51E:             Else
  loc_13BC526:               If (var_C6 = 7) Then
  loc_13BC535:                 global_52 = New rInventRepView
  loc_13BC54A:                 global_52.GRepFormName = "ExcessConsumption"
  loc_13BC55D:                 Set var_CC = var_F0(Index)
  loc_13BC563:                 Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC56B:                  = global_52.Menu.Caption
  loc_13BC57D:                 global_52.CAPTION = CVar(var_F4)
  loc_13BC595:                 Call global_52.Show
  loc_13BC59E:               Else
  loc_13BC5A6:                 If (var_C6 = 8) Then
  loc_13BC5B5:                   global_52 = New rInventRepView
  loc_13BC5CA:                   global_52.GRepFormName = "RestIssue"
  loc_13BC5DD:                   Set var_CC = var_F0(Index)
  loc_13BC5E3:                   Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC5EB:                    = global_52.Menu.Caption
  loc_13BC5FD:                   global_52.CAPTION = CVar(var_F4)
  loc_13BC615:                   Call global_52.Show
  loc_13BC61E:                 Else
  loc_13BC626:                   If (var_C6 = 9) Then
  loc_13BC635:                     global_52 = New rInventRepView
  loc_13BC64A:                     global_52.GRepFormName = "StoreIssReg"
  loc_13BC65D:                     Set var_CC = var_F0(Index)
  loc_13BC663:                     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC66B:                      = global_52.Menu.Caption
  loc_13BC67D:                     global_52.CAPTION = CVar(var_F4)
  loc_13BC695:                     Call global_52.Show
  loc_13BC69E:                   Else
  loc_13BC6A6:                     If (var_C6 = &HA) Then
  loc_13BC6B5:                       global_52 = New FrmChangeKitch
  loc_13BC6CB:                       Set var_CC = var_F0(Index)
  loc_13BC6D1:                       Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC6D9:                        = FrmChangeKitch.Menu.Caption
  loc_13BC6EB:                       global_52.CAPTION = CVar(var_F4)
  loc_13BC703:                       Call global_52.Show
  loc_13BC70C:                     Else
  loc_13BC714:                       If (var_C6 = &HB) Then
  loc_13BC723:                         global_52 = New rInventRepView
  loc_13BC738:                         global_52.GRepFormName = "DailyStoreIssRpt"
  loc_13BC74B:                         Set var_CC = var_F0(Index)
  loc_13BC751:                         Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC759:                          = global_52.Menu.Caption
  loc_13BC76B:                         global_52.CAPTION = CVar(var_F4)
  loc_13BC783:                         Call global_52.Show
  loc_13BC78C:                       Else
  loc_13BC794:                         If (var_C6 = &HC) Then
  loc_13BC7A3:                           global_52 = New rInventRepView
  loc_13BC7B8:                           global_52.GRepFormName = "PurchaseLedger"
  loc_13BC7CB:                           Set var_CC = var_F0(Index)
  loc_13BC7D1:                           Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC7D9:                            = global_52.Menu.Caption
  loc_13BC7EB:                           global_52.CAPTION = CVar(var_F4)
  loc_13BC803:                           Call global_52.Show
  loc_13BC80C:                         Else
  loc_13BC814:                           If (var_C6 = &HD) Then
  loc_13BC823:                             global_52 = New rInventRepView
  loc_13BC838:                             global_52.GRepFormName = "IssueReg"
  loc_13BC84B:                             Set var_CC = var_F0(Index)
  loc_13BC851:                             Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC859:                              = global_52.Menu.Caption
  loc_13BC86B:                             global_52.CAPTION = CVar(var_F4)
  loc_13BC883:                             Call global_52.Show
  loc_13BC88C:                           Else
  loc_13BC894:                             If (var_C6 = &HF) Then
  loc_13BC8A3:                               global_52 = New rInventRepView
  loc_13BC8B8:                               global_52.GRepFormName = "StockSummaryP/SBasis"
  loc_13BC8CB:                               Set var_CC = var_F0(Index)
  loc_13BC8D1:                               Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC8D9:                                = global_52.Menu.Caption
  loc_13BC8EB:                               global_52.CAPTION = CVar(var_F4)
  loc_13BC903:                               Call global_52.Show
  loc_13BC90C:                             Else
  loc_13BC914:                               If (var_C6 = &H10) Then
  loc_13BC923:                                 global_52 = New rInventRepView
  loc_13BC938:                                 global_52.GRepFormName = "ABCAnalysis"
  loc_13BC94B:                                 Set var_CC = var_F0(Index)
  loc_13BC951:                                 Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC959:                                  = global_52.Menu.Caption
  loc_13BC96B:                                 global_52.CAPTION = CVar(var_F4)
  loc_13BC983:                                 Call global_52.Show
  loc_13BC98C:                               Else
  loc_13BC994:                                 If (var_C6 = &H11) Then
  loc_13BC9A3:                                   global_52 = New rInventRepView
  loc_13BC9B8:                                   global_52.GRepFormName = "PurchBill"
  loc_13BC9CB:                                   Set var_CC = var_F0(Index)
  loc_13BC9D1:                                   Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BC9D9:                                    = global_52.Menu.Caption
  loc_13BC9EB:                                   global_52.CAPTION = CVar(var_F4)
  loc_13BCA03:                                   Call global_52.Show
  loc_13BCA0C:                                 Else
  loc_13BCA14:                                   If (var_C6 = &H12) Then
  loc_13BCA23:                                     global_52 = New rInventRepView
  loc_13BCA38:                                     global_52.GRepFormName = "StoreIssueReport"
  loc_13BCA4B:                                     Set var_CC = var_F0(Index)
  loc_13BCA51:                                     Call 0.Method_MatRep_Click0 (var_F4)
  loc_13BCA59:                                      = global_52.Menu.Caption
  loc_13BCA6B:                                     global_52.CAPTION = CVar(var_F4)
  loc_13BCA83:                                     Call global_52.Show
  loc_13BCA89:                                   End If
  loc_13BCA89:                                 End If
  loc_13BCA89:                               End If
  loc_13BCA89:                             End If
  loc_13BCA89:                           End If
  loc_13BCA89:                         End If
  loc_13BCA89:                       End If
  loc_13BCA89:                     End If
  loc_13BCA89:                   End If
  loc_13BCA89:                 End If
  loc_13BCA89:               End If
  loc_13BCA89:             End If
  loc_13BCA89:           End If
  loc_13BCA89:         End If
  loc_13BCA89:       End If
  loc_13BCA89:     End If
  loc_13BCA89:   End If
  loc_13BCA89: End If
  loc_13BCA92: global_52 = Nothing
  loc_13BCA98: Exit Sub
  loc_13BCA99: ' Referenced from: 13BC193
  loc_13BCAA3: Set var_CC = Err()
  loc_13BCAA9: Call 0.Method_arg_1C (var_F8)
  loc_13BCABA: If (var_F8 = &H16C) Then
  loc_13BCABF:   Resume Next
  loc_13BCAC3: End If
  loc_13BCAC5: Proc_6_60_E62BC4()
  loc_13BCACC: Exit Sub
End Sub

Private Sub Purch_Click(Index As Integer) '1244414
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_1243EDF: var_B4 = CVar("Purch" & "+") 'String
  loc_1243EFA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1243F0B: On Error Goto loc_12443DD
  loc_1243F13: var_C6 = Index
  loc_1243F1E: If (var_C6 = 1) Then
  loc_1243F2D:   global_52 = New RsGravyItemEntry
  loc_1243F43:   Set var_CC = var_D0(Index)
  loc_1243F49:   Call 0.Method_Purch_Click0 (var_D4, var_C6)
  loc_1243F51:   MemVar_1F92200 = RsGravyItemEntry.Menu.Caption
  loc_1243F63:   global_52.CAPTION = CVar(var_D4)
  loc_1243F7B:   Call global_52.Show
  loc_1243F84: Else
  loc_1243F8C:   If (var_C6 = 2) Then
  loc_1243F9B:     global_52 = New PIndent
  loc_1243FB1:     Set var_CC = var_D0(Index)
  loc_1243FB7:     Call 0.Method_Purch_Click0 (var_D4)
  loc_1243FBF:      = PIndent.Menu.Caption
  loc_1243FD1:     global_52.CAPTION = CVar(var_D4)
  loc_1243FE9:     Call global_52.Show
  loc_1243FF2:   Else
  loc_1243FFA:     If (var_C6 = 3) Then
  loc_1244009:       global_52 = New pPOrder
  loc_124401F:       Set var_CC = var_D0(Index)
  loc_1244025:       Call 0.Method_Purch_Click0 (var_D4)
  loc_124402D:        = pPOrder.Menu.Caption
  loc_124403F:       global_52.CAPTION = CVar(var_D4)
  loc_1244057:       Call global_52.Show
  loc_1244060:     Else
  loc_1244068:       If (var_C6 = 4) Then
  loc_1244077:         global_52 = New pMREntry
  loc_124408D:         Set var_CC = var_D0(Index)
  loc_1244093:         Call 0.Method_Purch_Click0 (var_D4)
  loc_124409B:          = pMREntry.Menu.Caption
  loc_12440AD:         global_52.CAPTION = CVar(var_D4)
  loc_12440C5:         Call global_52.Show
  loc_12440CE:       Else
  loc_12440D6:         If (var_C6 = 5) Then
  loc_12440E5:           global_52 = New pPBill
  loc_12440FB:           Set var_CC = var_D0(Index)
  loc_1244101:           Call 0.Method_Purch_Click0 (var_D4)
  loc_1244109:            = pPBill.Menu.Caption
  loc_124411B:           global_52.CAPTION = CVar(var_D4)
  loc_1244133:           Call global_52.Show
  loc_124413C:         Else
  loc_1244144:           If (var_C6 = 6) Then
  loc_1244153:             global_52 = New pReqSlip
  loc_1244169:             Set var_CC = var_D0(Index)
  loc_124416F:             Call 0.Method_Purch_Click0 (var_D4)
  loc_1244177:              = pReqSlip.Menu.Caption
  loc_1244189:             global_52.CAPTION = CVar(var_D4)
  loc_12441A1:             Call global_52.Show
  loc_12441AA:           Else
  loc_12441B2:             If (var_C6 = 7) Then
  loc_12441C1:               global_52 = New pGIss
  loc_12441D7:               Set var_CC = var_D0(Index)
  loc_12441DD:               Call 0.Method_Purch_Click0 (var_D4)
  loc_12441E5:                = pGIss.Menu.Caption
  loc_12441F7:               global_52.CAPTION = CVar(var_D4)
  loc_124420F:               Call global_52.Show
  loc_1244218:             Else
  loc_1244220:               If (var_C6 = 8) Then
  loc_124422F:                 global_52 = New kClStk
  loc_1244245:                 Set var_CC = var_D0(Index)
  loc_124424B:                 Call 0.Method_Purch_Click0 (var_D4)
  loc_1244253:                  = kClStk.Menu.Caption
  loc_1244265:                 global_52.CAPTION = CVar(var_D4)
  loc_124427D:                 Call global_52.Show
  loc_1244286:               Else
  loc_124428E:                 If (var_C6 = 9) Then
  loc_124429D:                   global_52 = New RsKitchenStk
  loc_12442B3:                   Set var_CC = var_D0(Index)
  loc_12442B9:                   Call 0.Method_Purch_Click0 (var_D4)
  loc_12442C1:                    = RsKitchenStk.Menu.Caption
  loc_12442D3:                   global_52.CAPTION = CVar(var_D4)
  loc_12442EB:                   Call global_52.Show
  loc_12442F4:                 Else
  loc_12442FC:                   If (var_C6 = &HA) Then
  loc_124430B:                     global_52 = New RsStoreRecEntry
  loc_1244321:                     Set var_CC = var_D0(Index)
  loc_1244327:                     Call 0.Method_Purch_Click0 (var_D4)
  loc_124432F:                      = RsStoreRecEntry.Menu.Caption
  loc_1244341:                     global_52.CAPTION = CVar(var_D4)
  loc_1244359:                     Call global_52.Show
  loc_1244362:                   Else
  loc_124436A:                     If (var_C6 = &HB) Then
  loc_1244379:                       global_52 = New RsKitchenMaterial
  loc_124438F:                       Set var_CC = var_D0(Index)
  loc_1244395:                       Call 0.Method_Purch_Click0 (var_D4)
  loc_124439D:                        = RsKitchenMaterial.Menu.Caption
  loc_12443AF:                       global_52.CAPTION = CVar(var_D4)
  loc_12443C7:                       Call global_52.Show
  loc_12443CD:                     End If
  loc_12443CD:                   End If
  loc_12443CD:                 End If
  loc_12443CD:               End If
  loc_12443CD:             End If
  loc_12443CD:           End If
  loc_12443CD:         End If
  loc_12443CD:       End If
  loc_12443CD:     End If
  loc_12443CD:   End If
  loc_12443CD: End If
  loc_12443D6: global_52 = Nothing
  loc_12443DC: Exit Sub
  loc_12443DD: ' Referenced from: 1243F0B
  loc_12443E7: Set var_CC = Err()
  loc_12443ED: Call 0.Method_arg_1C (var_E8)
  loc_12443FE: If (var_E8 = &H16C) Then
  loc_1244403:   Resume Next
  loc_1244407: End If
  loc_1244409: Proc_6_60_E62BC4()
  loc_1244410: Exit Sub
End Sub

Private Sub MatStat_Click(Index As Integer) '1007988
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_100778F: var_B4 = CVar("MatStat" & "+") 'String
  loc_10077AA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_10077BB: On Error Goto loc_1007953
  loc_10077C3: var_C6 = Index
  loc_10077CE: If (var_C6 = 0) Then
  loc_10077DD:   global_52 = New rInventRepView
  loc_10077F2:   global_52.GRepFormName = "IndentReg"
  loc_1007805:   Set var_CC = var_F0(Index)
  loc_100780B:   Call 0.Method_MatStat_Click0 (var_F4, var_C6)
  loc_1007813:   MemVar_1F92200 = global_52.Menu.Caption
  loc_1007825:   global_52.CAPTION = CVar(var_F4)
  loc_100783D:   Call global_52.Show
  loc_1007846: Else
  loc_100784E:   If (var_C6 = 1) Then
  loc_100785D:     global_52 = New rInventRepView
  loc_1007872:     global_52.GRepFormName = "PurchBill"
  loc_1007885:     Set var_CC = var_F0(Index)
  loc_100788B:     Call 0.Method_MatStat_Click0 (var_F4)
  loc_1007893:      = global_52.Menu.Caption
  loc_10078A5:     global_52.CAPTION = CVar(var_F4)
  loc_10078BD:     Call global_52.Show
  loc_10078C6:   Else
  loc_10078CE:     If (var_C6 = 2) Then
  loc_10078DD:       global_52 = New rInventRepView
  loc_10078F2:       global_52.GRepFormName = "PurchOrder"
  loc_1007905:       Set var_CC = var_F0(Index)
  loc_100790B:       Call 0.Method_MatStat_Click0 (var_F4)
  loc_1007913:        = global_52.Menu.Caption
  loc_1007925:       global_52.CAPTION = CVar(var_F4)
  loc_100793D:       Call global_52.Show
  loc_1007943:     End If
  loc_1007943:   End If
  loc_1007943: End If
  loc_100794C: global_52 = Nothing
  loc_1007952: Exit Sub
  loc_1007953: ' Referenced from: 10077BB
  loc_100795D: Set var_CC = Err()
  loc_1007963: Call 0.Method_arg_1C (var_F8)
  loc_1007974: If (var_F8 = &H16C) Then
  loc_1007979:   Resume Next
  loc_100797D: End If
  loc_100797F: Proc_6_60_E62BC4()
  loc_1007986: Exit Sub
End Sub

Private Sub MatVatR_Click(Index As Integer) '114CEE0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_114CB4F: var_B4 = CVar("MatvatR" & "+") 'String
  loc_114CB6A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_114CB7B: On Error Goto loc_114CEAB
  loc_114CB83: var_C6 = Index
  loc_114CB8E: If (var_C6 = 0) Then
  loc_114CB9D:   global_52 = New rInventRepView
  loc_114CBB2:   global_52.GRepFormName = "VATRegister"
  loc_114CBC5:   Set var_CC = var_F0(Index)
  loc_114CBCB:   Call 0.Method_MatVatR_Click0 (var_F4, var_C6)
  loc_114CBD3:   MemVar_1F92200 = global_52.Menu.Caption
  loc_114CBE5:   global_52.CAPTION = CVar(var_F4)
  loc_114CBFD:   Call global_52.Show
  loc_114CC06: Else
  loc_114CC0E:   If (var_C6 = &HA) Then
  loc_114CC1D:     global_52 = New rInventRepView
  loc_114CC32:     global_52.GRepFormName = "VATRegisterII"
  loc_114CC45:     Set var_CC = var_F0(Index)
  loc_114CC4B:     Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114CC53:      = global_52.Menu.Caption
  loc_114CC65:     global_52.CAPTION = CVar(var_F4)
  loc_114CC7D:     Call global_52.Show
  loc_114CC86:   Else
  loc_114CC8E:     If (var_C6 = &HB) Then
  loc_114CC9D:       global_52 = New rInventRepView
  loc_114CCB2:       global_52.GRepFormName = "VATRegisterIII"
  loc_114CCC5:       Set var_CC = var_F0(Index)
  loc_114CCCB:       Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114CCD3:        = global_52.Menu.Caption
  loc_114CCE5:       global_52.CAPTION = CVar(var_F4)
  loc_114CCFD:       Call global_52.Show
  loc_114CD06:     Else
  loc_114CD0E:       If (var_C6 = &HC) Then
  loc_114CD1D:         global_52 = New rInventRepView
  loc_114CD32:         global_52.GRepFormName = "Form24AnnexureA"
  loc_114CD45:         Set var_CC = var_F0(Index)
  loc_114CD4B:         Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114CD53:          = global_52.Menu.Caption
  loc_114CD65:         global_52.CAPTION = CVar(var_F4)
  loc_114CD7D:         Call global_52.Show
  loc_114CD86:       Else
  loc_114CD8E:         If (var_C6 = &HF) Then
  loc_114CD9D:           global_52 = New rInventRepView
  loc_114CDB2:           global_52.GRepFormName = "FormIII"
  loc_114CDC5:           Set var_CC = var_F0(Index)
  loc_114CDCB:           Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114CDD3:            = global_52.Menu.Caption
  loc_114CDE5:           global_52.CAPTION = CVar(var_F4)
  loc_114CE07:           Me.Global.Unload global_52
  loc_114CE12:         Else
  loc_114CE1A:           If (var_C6 = &H10) Then
  loc_114CE29:             global_52 = New rInventRepView
  loc_114CE3E:             global_52.GRepFormName = "UPVATXXIV"
  loc_114CE51:             Set var_CC = var_F0(Index)
  loc_114CE57:             Call 0.Method_MatVatR_Click0 (var_F4)
  loc_114CE5F:              = global_52.Menu.Caption
  loc_114CE71:             global_52.CAPTION = CVar(var_F4)
  loc_114CE93:             Me.Global.Unload global_52
  loc_114CE9B:           End If
  loc_114CE9B:         End If
  loc_114CE9B:       End If
  loc_114CE9B:     End If
  loc_114CE9B:   End If
  loc_114CE9B: End If
  loc_114CEA4: global_52 = Nothing
  loc_114CEAA: Exit Sub
  loc_114CEAB: ' Referenced from: 114CB7B
  loc_114CEB5: Set var_CC = Err()
  loc_114CEBB: Call 0.Method_arg_1C (var_F8)
  loc_114CECC: If (var_F8 = &H16C) Then
  loc_114CED1:   Resume Next
  loc_114CED5: End If
  loc_114CED7: Proc_6_60_E62BC4()
  loc_114CEDE: Exit Sub
End Sub

Private Sub Timer1_Timer() '10E129C
  'Data Table: 5C8378
  Dim var_D0 As String
  Dim unk_5C83B4 As Connection15
  Dim Me As Recordset15
  Dim var_94 As Variant
  loc_10E0F9C: Set var_A8 = Me.LblTimeIndia
  loc_10E0FA2: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Time)
  loc_10E0FC7: Proc_96_12_F095A0(CDate(Time))
  loc_10E0FD5: Set var_A8 = Me.LblTimeCanada
  loc_10E0FDB: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("09:30:00")))
  loc_10E1000: Proc_96_12_F095A0(CDate(Time))
  loc_10E100E: Set var_A8 = Me.LblTimeItaly
  loc_10E1014: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("03:30:00")))
  loc_10E1039: Proc_96_12_F095A0(CDate(Time))
  loc_10E1047: Set var_A8 = Me.LblTimeLondon
  loc_10E104D: Call {33AD4F6B-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("04:30:00")))
  loc_10E1072: Proc_96_11_EF9DD8(CDate(Time))
  loc_10E1080: Set var_A8 = Me.LblTimeJapan
  loc_10E1086: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("03:30:00")))
  loc_10E1094: var_94 = Time
  loc_10E10AB: Proc_96_11_EF9DD8(CDate(var_94))
  loc_10E10BF: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CDate(CDate("04:30:00")))
  loc_10E10E5: var_D0 = "SELECT * FROM Messaging Where Receiver='" & MemVar_1F920C8 & "'  and(Cleared is Null Or Cleared='' Or Cleared='N')And ReadYN='N' Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_10E10EE: unk_5C83B4.Execute var_D0, var_94, -1
  loc_10E10FF: Set global_92 = Me.LblTimeAustralia
  loc_10E112B: If (Me.RecordCount > 0) Then
  loc_10E115B:   Set var_A8 = Me.LblMgs
  loc_10E1161:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(CDbl(735)))
  loc_10E1171:   Set var_A8 = Me.LblMgsInfo
  loc_10E1177:   Call {DCC46C1B-89C0-45EB-AD1B8135D10D9A4E}.DispID_80010007(True)
  loc_10E1189:   var_94 = CVar(CStr(Me.RecordCount) & " Unread Message  ") 'String
  loc_10E1191:   Set var_A8 = Me.LblMgsInfo
  loc_10E1197:   Call {DCC46C1B-89C0-45EB-AD1B8135D10D9A4E}.DispID_FFFFFDFA(var_94)
  loc_10E11EC:   Set var_A8 = Me.LblMgsInfo
  loc_10E11F2:   Call {DCC46C1B-89C0-45EB-AD1B8135D10D9A4E}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_94))), CInt((CDbl(255) * Rnd(var_E8))), CInt((CDbl(255) * Rnd(var_108))))))
  loc_10E124D:   Set var_A8 = Me.LblMgs
  loc_10E1253:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_94))), CInt((CDbl(255) * Rnd(var_E8))), CInt((CDbl(255) * Rnd(var_108))))))
  loc_10E1267: Else
  loc_10E1270:   Set var_A8 = Me.LblMgsInfo
  loc_10E1276:   Call {DCC46C1B-89C0-45EB-AD1B8135D10D9A4E}.DispID_80010007(False)
  loc_10E128B:   Set var_A8 = Me.LblMgs
  loc_10E1291:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(CDbl(1600)))
  loc_10E1299: End If
  loc_10E1299: Exit Sub
End Sub

Public Sub sbar_UnknownEvent_9(Index As Integer) '1205D20
  'Data Table: 5C8378
  Dim var_94 As Integer
  Dim var_C8 As Integer
  Dim var_D0 As Variant
  loc_120586D: var_94 = Index.Index
  loc_1205876: If (var_94 = 6) Then
  loc_1205894:   If (Me.PictMainMenu.Visible = &HFF) Then
  loc_12058A3:     Me.PictMainMenu.Visible = False
  loc_12058B1:     var_C8 = 6
  loc_12058D1:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_12058D9:     var_D0._ObjectDefault = var_D0
  loc_12058F1:   Else
  loc_12058FD:     Me.PictMainMenu.Visible = True
  loc_120590B:     var_C8 = 6
  loc_120592B:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205933:     var_D0._ObjectDefault = var_D0
  loc_120594E:     var_C8 = 8
  loc_120596E:     var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205976:     var_D0._ObjectDefault = var_D0
  loc_120598B:   End If
  loc_120598E: Else
  loc_1205994:   If (var_94 = 7) Then
  loc_12059B2:     If (Me.PictTitleBar.Visible = &HFF) Then
  loc_12059C1:       Me.PictTitleBar.Visible = False
  loc_12059CF:       var_C8 = 7
  loc_12059EF:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_12059F7:       var_D0._ObjectDefault = var_D0
  loc_1205A0F:     Else
  loc_1205A1B:       Me.PictTitleBar.Visible = True
  loc_1205A29:       var_C8 = 7
  loc_1205A49:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205A51:       var_D0._ObjectDefault = var_D0
  loc_1205A6C:       var_C8 = 8
  loc_1205A8C:       var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205A94:       var_D0._ObjectDefault = var_D0
  loc_1205AA9:     End If
  loc_1205AAC:   Else
  loc_1205AB2:     If (var_94 = 8) Then
  loc_1205AED:       Set var_D0 = Me.PictTitleBar
  loc_1205B08:       If (((Me.PictMainMenu.Visible = &HFF) Or (Me.PictSubMenu.Visible = &HFF)) Or (var_D0.Visible = &HFF)) Then
  loc_1205B17:         Me.PictMainMenu.Visible = False
  loc_1205B2B:         Me.PictSubMenu.Visible = False
  loc_1205B3F:         Me.PictTitleBar.Visible = False
  loc_1205B4D:         var_C8 = 6
  loc_1205B6D:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205B75:         var_D0._ObjectDefault = var_D0
  loc_1205B90:         var_C8 = 7
  loc_1205BB0:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205BB8:         var_D0._ObjectDefault = var_D0
  loc_1205BD3:         var_C8 = 8
  loc_1205BF3:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205BFB:         var_D0._ObjectDefault = var_D0
  loc_1205C13:       Else
  loc_1205C1F:         Me.PictMainMenu.Visible = True
  loc_1205C33:         Me.PictSubMenu.Visible = True
  loc_1205C47:         Me.PictTitleBar.Visible = True
  loc_1205C55:         var_C8 = 6
  loc_1205C75:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205C7D:         var_D0._ObjectDefault = var_D0
  loc_1205C98:         var_C8 = 7
  loc_1205CB8:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205CC0:         var_D0._ObjectDefault = var_D0
  loc_1205CDB:         var_C8 = 8
  loc_1205CFB:         var_C8 = Me.sbar.Panels.ControlDefault
  loc_1205D03:         var_D0._ObjectDefault = var_D0
  loc_1205D18:       End If
  loc_1205D18:     End If
  loc_1205D18:   End If
  loc_1205D18: End If
  loc_1205D18: Call MDIForm_Resize()
  loc_1205D1D: Exit Sub
End Sub

Private Sub Rest_Click(Index As Integer) '1118ECC
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CA As Integer
  Dim var_E0 As Variant
  Dim var_FA As Integer
  loc_1118B7F: var_B4 = CVar("Rest" & "+") 'String
  loc_1118B9A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1118BAC: var_CA = Index
  loc_1118BB5: If Not (var_CA = &HA) Then
  loc_1118BBE:   If Not (var_CA = &HD) Then
  loc_1118BC7:     If Not (var_CA = &HF) Then
  loc_1118BD0:       If Not (var_CA = &H12) Then
  loc_1118BD9:         If Not (var_CA = &H13) Then
  loc_1118BE2:           If Not (var_CA = &H14) Then
  loc_1118BEB:             If Not (var_CA = &H16) Then
  loc_1118BF4:               If Not (var_CA = &H17) Then
  loc_1118BFD:                 If Not (var_CA = &H19) Then
  loc_1118C06:                   If Not (var_CA = &H1A) Then
  loc_1118C0F:                     If (var_CA = &H1C) Then
  loc_1118C12:                     End If
  loc_1118C12:                   End If
  loc_1118C12:                 End If
  loc_1118C12:               End If
  loc_1118C12:             End If
  loc_1118C12:           End If
  loc_1118C12:         End If
  loc_1118C12:       End If
  loc_1118C12:     End If
  loc_1118C12:   End If
  loc_1118C1A:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1118C27:     global_52 = New FrmChangeRest
  loc_1118C3A:     global_52.PSalePoint = "PointOfSale"
  loc_1118C4B:     Set var_D0 = var_F4(Index)
  loc_1118C51:     Call 0.Method_Rest_Click0 (var_F8, var_CA)
  loc_1118C59:     MemVar_1F92200 = global_52.Menu.Caption
  loc_1118C6B:     global_52.CAPTION = CVar(var_F8)
  loc_1118C79:     var_E0 = 1
  loc_1118C87:     Call global_52.Show
  loc_1118C8D:     var_E0 = 0
  loc_1118C9B:     Call global_52.ZOrder
  loc_1118CA1:   End If
  loc_1118CA4:   var_FA = Index
  loc_1118CAD:   If (var_FA = &H19) Then
  loc_1118CBA:     global_52 = New rPOSRepView
  loc_1118CCD:     global_52.GRepFormName = "RStockRegister"
  loc_1118CDE:     Set var_D0 = var_F4(Index)
  loc_1118CE4:     Call 0.Method_Rest_Click0 (var_F8, var_FA)
  loc_1118CEC:     var_E0 = global_52.Menu.Caption
  loc_1118CFE:     global_52.CAPTION = CVar(var_F8)
  loc_1118D14:     Call global_52.Show
  loc_1118D1D:   Else
  loc_1118D23:     If (var_FA = &H1A) Then
  loc_1118D30:       global_52 = New rPOSRepView
  loc_1118D43:       global_52.GRepFormName = "RStockSummary"
  loc_1118D54:       Set var_D0 = var_F4(Index)
  loc_1118D5A:       Call 0.Method_Rest_Click0 (var_F8)
  loc_1118D62:       var_E0 = global_52.Menu.Caption
  loc_1118D74:       global_52.CAPTION = CVar(var_F8)
  loc_1118D8A:       Call global_52.Show
  loc_1118D93:     Else
  loc_1118D99:       If (var_FA = &H1C) Then
  loc_1118DA6:         global_52 = New rPOSRepView
  loc_1118DB9:         global_52.GRepFormName = "KitchenStkSumm"
  loc_1118DCA:         Set var_D0 = var_F4(Index)
  loc_1118DD0:         Call 0.Method_Rest_Click0 (var_F8)
  loc_1118DD8:          = global_52.Menu.Caption
  loc_1118DEA:         global_52.CAPTION = CVar(var_F8)
  loc_1118E00:         Call global_52.Show
  loc_1118E06:       End If
  loc_1118E06:     End If
  loc_1118E06:   End If
  loc_1118E09: Else
  loc_1118E0F:   If (var_CA = &H1E) Then
  loc_1118E1C:     global_52 = New FrmChangeRest
  loc_1118E2F:     global_52.PSalePoint = "PointOfSale"
  loc_1118E40:     Set var_D0 = var_F4(Index)
  loc_1118E46:     Call 0.Method_Rest_Click0 (var_F8)
  loc_1118E4E:      = global_52.Menu.Caption
  loc_1118E60:     global_52.CAPTION = CVar(var_F8)
  loc_1118E6E:     var_E0 = 1
  loc_1118E7C:     Call global_52.Show
  loc_1118E82:     var_E0 = 0
  loc_1118E90:     Call global_52.ZOrder
  loc_1118E99:   Else
  loc_1118E9F:     If (var_CA = &H1F) Then
  loc_1118EBB:       Call New RsStatusScreen.Show
  loc_1118EC1:     End If
  loc_1118EC1:   End If
  loc_1118EC1: End If
  loc_1118EC6: global_52 = Nothing
  loc_1118ECA: Exit Sub
End Sub

Private Sub SMSJobTimer_Timer() 'E0AFA8
  'Data Table: 5C8378
  loc_E0AF9C: If (Proc_233_9_139E18C() = &HFF) Then
  loc_E0AF9F:   Call SMSTimer_Timer()
  loc_E0AFA4: End If
  loc_E0AFA4: Exit Sub
End Sub

Private Sub SMSTimer_Timer() '111A0B0
  'Data Table: 5C8378
  Dim unk_5C83B4 As Connection15
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_B0 As Fields15
  loc_1119DAC: Proc_233_10_117EC28()
  loc_1119DC7: unk_5C83B4.Execute "Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'", var_AC, -1
  loc_1119DD2: Set var_8C = var_B0
  loc_1119DEF: If (var_8C.RecordCount = 0) Then
  loc_1119DF2:   Exit Sub
  loc_1119DF3: End If
  loc_1119DFB: If (Proc_233_0_ED9568(var_B0) = 0) Then
  loc_1119E04:   var_C8 = 9
  loc_1119E12:   Set var_B0 = MemVar_1F92244.sbar
  loc_1119E29:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_1119E31:   var_D0._ObjectDefault = var_D0
  loc_1119E46:   Exit Sub
  loc_1119E4A: Else
  loc_1119E50:   var_C8 = 9
  loc_1119E5E:   Set var_B0 = MemVar_1F92244.sbar
  loc_1119E75:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_1119E7D:   var_D0._ObjectDefault = var_D0
  loc_1119E9D:   var_AC = CreateObject("INTERNETEXPLORER.APPLICATION", 0)
  loc_1119EA7:   ImpAdStAd
  loc_1119EAE:   ' Referenced from:   111A05E
  loc_1119EBD:   If Not(var_8C.EOF) Then
  loc_1119EFA:     var_D0 = var_8C.Fields
  loc_1119F69:     var_198 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")))
  loc_1119F92:     Proc_6_39_E7C810(var_170, CVar(var_8C.Fields.Item("SNo")))
  loc_1119FA8:     var_184 = vbNullString
  loc_111A00A:     If (Proc_233_6_1342D0C("General", MemVar_1F920EC, Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Mobile1")), CVar(var_8C.Fields.Item("Mobile1"))), Proc_6_38_E68A98(CVar(var_D0.Item("subcode")), "Internet Is OnLine"), Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TxtMsg")))) = 0) Then
  loc_111A013:       var_C8 = 9
  loc_111A021:       Set var_B0 = MemVar_1F92244.sbar
  loc_111A038:       var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A040:       var_D0._ObjectDefault = var_D0
  loc_111A055:       Exit Sub
  loc_111A056:     End If
  loc_111A059:     var_8C.MoveNext
  loc_111A05E:     GoTo loc_1119EAE
  loc_111A061:   End If
  loc_111A067:   var_C8 = 9
  loc_111A075:   Set var_B0 = MemVar_1F92244.sbar
  loc_111A08C:   var_C8 = MDIForm1.sbar.Panels.ControlDefault
  loc_111A094:   var_D0._ObjectDefault = var_D0
  loc_111A0A9: End If
  loc_111A0AB: ImpAdStAd
  loc_111A0AF: Exit Sub
End Sub

Private Sub Timer2_Timer() '1102850
  'Data Table: 5C8378
  Dim unk_5C83B4 As Connection15
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_120 As Variant
  Dim var_160 As Variant
  Dim var_98 As Recordset15
  Dim var_BC As Fields15
  loc_110255E: unk_5C83B4.Execute "Delete From tbl_EventExc", var_B8, -1
  loc_110257F: unk_5C83B4.Execute "Delete From tbl_EventPrameter", var_B8, -1
  loc_11025A1: var_B8 = CVar(Proc_6_14_EF349C("Insert into tbl_EventExc (EventName,EventCode,CreatedDate) Values ('GetBooking',1,", var_120, -1)) 'String
  loc_11025A7: Proc_6_8_EB0DE4(var_CC, var_B8, var_BC)
  loc_11025C6: unk_5C83B4.Execute CStr(var_BC & var_CC & ")"), var_BC, 
  loc_1102629: Proc_6_8_EB0DE4(var_1A0)
  loc_1102643: var_120 = "Insert into tbl_EventPrameter (Para_month,Para_year,EventCode,CreatedDate) Values (" & Format(Month(CVar(Proc_6_15_EF2C1C())), "00") 
  loc_1102653: var_160 = var_120 & "," & Year(CVar(Proc_6_15_EF2C1C(1))) 
  loc_110267A: unk_5C83B4.Execute CStr(var_160 & ",1," & var_1A0 & ")"), var_1F0, -1
  loc_11026AD: Proc_96_21_E57C50(CDbl(2), var_BC)
  loc_11026BE: var_BC = Me.Global.App
  loc_11026E3: var_94 = CVar(Shell(CVar(App.Path & "\ChannelManager\Debug\Hotel_ConsoleApp"), 0)) 'Variant
  loc_11026F7: Proc_96_21_E57C50(CDbl(5))
  loc_1102709: var_A8 = "Select Distinct GB.DateBooked,GB.BookingCode From tbl_GetBooking GB Left Join Booking B On GB.BookingCode=B.RefCode Where IsNull(GB.BookingStatus,'')<>IsNull(B.BookStatus,'') And Month(DateBooked)="
  loc_1102713: var_B8 = CVar(Proc_6_15_EF2C1C(var_A8, var_1A0, -1)) 'String
  loc_1102733: var_120 = CVar(Proc_6_15_EF2C1C(var_BC & Month(CVar(App.Path & "\ChannelManager\Debug\Hotel_ConsoleApp")) & " And Year(DateBooked)=")) 'String
  loc_1102759: Proc_6_7_F25D88(var_160, MemVar_1F920EC)
  loc_1102778: unk_5C83B4.Execute CStr(CVar(Proc_6_14_EF349C(1)) & Year(var_120) & " And Gb.DateBooked>=" & var_160 & " Order By DateBooked,BookingCode"), , 
  loc_1102783: Set var_98 = var_BC
  loc_11027A7: ' Referenced from: 110280A
  loc_11027B6: If Not(var_98.EOF) Then
  loc_11027DB:   var_B8 = var_98.Fields.Item("BookingCode").Value
  loc_11027F1:   var_94 = Proc_96_101_15E3C94(CStr(var_B8)) 'Variant
  loc_1102805:   var_98.MoveNext
  loc_110280A:   GoTo loc_11027A7
  loc_110280D: End If
  loc_1102823: unk_5C83B4.Execute "Update Booking Set CancelDate=Q.DateBooked,BookStatus=Q.BookingStatus,Cancel='Y' From (Select Distinct BookingCode,DateBooked,BookingStatus From tbl_GetBooking Where BookingStatus='CANCELLED')Q Where Booking.RefCode=Q.BookingCode", var_B8, -1
  loc_1102844: unk_5C83B4.Execute "Update GrpBookingDetails Set CancelDate=Q.CancelDate,Cancel='Y' From (Select Distinct DocId,CancelDate From Booking Where BookStatus='CANCELLED' And Cancel='Y')Q Where GrpBookingDetails.BookingDocId=Q.DocId", var_B8, -1
  loc_110284F: Exit Sub
End Sub

Private Sub Print_KOT_Timer_Timer() 'EB7FA0
  'Data Table: 5C8378
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  loc_EB7F22: unk_5C83B4.Execute "Select Top 1 DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' ORDER BY U_EntDt", var_A8, -1
  loc_EB7F4A: If (var_AC.RecordCount = 0) Then
  loc_EB7F52:   Set var_88 = Nothing
  loc_EB7F55:   Exit Sub
  loc_EB7F56: End If
  loc_EB7F85: Proc_260_21_1E6A5E0(CStr(var_88.Fields.Item("DocID").Value))
  loc_EB7F9C: Set var_88 = Nothing
  loc_EB7F9F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E71B98
  'Data Table: 5C8378
  loc_E71B7F: If (MsgBox("Are you sure you want to quit?", &H24, "Quit", var_E4, var_104) = 6) Then
  loc_E71B8F:   Me.Global.Unload Me
  loc_E71B97: End If
  loc_E71B97: Exit Sub
End Sub

Private Sub LblCalender_UnknownEvent_9 'E14FFC
  'Data Table: 5C8378
  loc_E14FF3: Call 0.Method_arg_2B0 (1)
  loc_E14FF8: Exit Sub
End Sub

Private Sub MemOpr_Click(Index As Integer) '1081D14
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_1081A77: var_B4 = CVar("MemOpr" & "+") 'String
  loc_1081A92: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1081AA4: var_C6 = Index
  loc_1081AAD: If (var_C6 = 0) Then
  loc_1081AB0:   GoTo loc_1081D12
  loc_1081AB3: End If
  loc_1081AB9: If (var_C6 = 1) Then
  loc_1081ADA:   Set var_CC = var_D0(Index)
  loc_1081AE0:   Call 0.Method_MemOpr_Click0 (var_D4, var_C6)
  loc_1081AE8:   MemVar_1F92200 = memOutStationEntry.Menu.Caption
  loc_1081AFA:   New memOutStationEntry.CAPTION = CVar(var_D4)
  loc_1081B0B: Else
  loc_1081B11:   If (var_C6 = 2) Then
  loc_1081B1E:     global_52 = New memCatChngEntry
  loc_1081B32:     Set var_CC = var_D0(Index)
  loc_1081B38:     Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081B40:      = memCatChngEntry.Menu.Caption
  loc_1081B52:     global_52.CAPTION = CVar(var_D4)
  loc_1081B68:     Call global_52.Show
  loc_1081B71:   Else
  loc_1081B77:     If (var_C6 = 3) Then
  loc_1081B84:       global_52 = New MemPaymentReceive
  loc_1081B98:       Set var_CC = var_D0(Index)
  loc_1081B9E:       Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081BA6:        = MemPaymentReceive.Menu.Caption
  loc_1081BB8:       global_52.CAPTION = CVar(var_D4)
  loc_1081BCE:       Call global_52.Show
  loc_1081BD7:     Else
  loc_1081BDD:       If (var_C6 = 4) Then
  loc_1081BE0:         GoTo loc_1081D12
  loc_1081BE3:       End If
  loc_1081BE9:       If (var_C6 = 5) Then
  loc_1081BF6:         global_52 = New MemTagadaLetter
  loc_1081C0A:         Set var_CC = var_D0(Index)
  loc_1081C10:         Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081C18:          = MemTagadaLetter.Menu.Caption
  loc_1081C2A:         global_52.CAPTION = CVar(var_D4)
  loc_1081C40:         Call global_52.Show
  loc_1081C49:       Else
  loc_1081C4F:         If (var_C6 = 6) Then
  loc_1081C5C:           global_52 = New memCatChngCond
  loc_1081C70:           Set var_CC = var_D0(Index)
  loc_1081C76:           Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081C7E:            = memCatChngCond.Menu.Caption
  loc_1081C90:           global_52.CAPTION = CVar(var_D4)
  loc_1081CA6:           Call global_52.Show
  loc_1081CAF:         Else
  loc_1081CB5:           If (var_C6 = &HB) Then
  loc_1081CC2:             global_52 = New MemAutoSettleCardBalance
  loc_1081CD6:             Set var_CC = var_D0(Index)
  loc_1081CDC:             Call 0.Method_MemOpr_Click0 (var_D4)
  loc_1081CE4:              = MemAutoSettleCardBalance.Menu.Caption
  loc_1081CF6:             global_52.CAPTION = CVar(var_D4)
  loc_1081D0C:             Call global_52.Show
  loc_1081D12:           End If
  loc_1081D12:         End If
  loc_1081D12:         ' Referenced from:       1081BE0
  loc_1081D12:       End If
  loc_1081D12:     End If
  loc_1081D12:   End If
  loc_1081D12:   ' Referenced from: 1081AB0
  loc_1081D12: End If
  loc_1081D12: Exit Sub
End Sub

Private Sub MemMas_Click(Index As Integer) '113F570
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_113F1EB: var_B4 = CVar("MemMas" & "+") 'String
  loc_113F206: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_113F218: var_C6 = Index
  loc_113F221: If (var_C6 = 0) Then
  loc_113F22E:   global_52 = New MemCatMast
  loc_113F242:   Set var_CC = var_D0(Index)
  loc_113F248:   Call 0.Method_MemMas_Click0 (var_D4, var_C6)
  loc_113F250:   MemVar_1F92200 = MemCatMast.Menu.Caption
  loc_113F262:   global_52.CAPTION = CVar(var_D4)
  loc_113F278:   Call global_52.Show
  loc_113F281: Else
  loc_113F287:   If (var_C6 = 1) Then
  loc_113F294:     global_52 = New MembershipMast
  loc_113F2A8:     Set var_CC = Me.CmdVarifyCard
  loc_113F2AE:     Call 0.Method_MemMas_Click0 (Index, var_D0)
  loc_113F2B6:     var_D4 = MembershipMast.CmdVarifyCard.Caption
  loc_113F2C8:     global_52.CAPTION = CVar(var_D4)
  loc_113F2DE:     Call global_52.Show
  loc_113F2E7:   Else
  loc_113F2ED:     If (var_C6 = 2) Then
  loc_113F2F0:       GoTo loc_113F56C
  loc_113F2F3:     End If
  loc_113F2F9:     If (var_C6 = 3) Then
  loc_113F306:       global_52 = New MemberShipRevenueMast
  loc_113F31A:       Set var_CC = var_D0(Index)
  loc_113F320:       Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F328:        = MemberShipRevenueMast.Menu.Caption
  loc_113F33A:       global_52.CAPTION = CVar(var_D4)
  loc_113F350:       Call global_52.Show
  loc_113F359:     Else
  loc_113F35F:       If (var_C6 = 4) Then
  loc_113F36C:         global_52 = New memFacilityMast
  loc_113F380:         Set var_CC = var_D0(Index)
  loc_113F386:         Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F38E:          = memFacilityMast.Menu.Caption
  loc_113F3A0:         global_52.CAPTION = CVar(var_D4)
  loc_113F3B6:         Call global_52.Show
  loc_113F3BF:       Else
  loc_113F3C5:         If (var_C6 = 5) Then
  loc_113F3D2:           global_52 = New memCatRevMast
  loc_113F3E6:           Set var_CC = var_D0(Index)
  loc_113F3EC:           Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F3F4:            = memCatRevMast.Menu.Caption
  loc_113F406:           global_52.CAPTION = CVar(var_D4)
  loc_113F41C:           Call global_52.Show
  loc_113F425:         Else
  loc_113F42B:           If (var_C6 = 6) Then
  loc_113F438:             global_52 = New memCategoryFacilities
  loc_113F44C:             Set var_CC = var_D0(Index)
  loc_113F452:             Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F45A:              = memCategoryFacilities.Menu.Caption
  loc_113F46C:             global_52.CAPTION = CVar(var_D4)
  loc_113F482:             Call global_52.Show
  loc_113F48B:           Else
  loc_113F491:             If (var_C6 = 7) Then
  loc_113F494:               GoTo loc_113F56C
  loc_113F497:             End If
  loc_113F49D:             If (var_C6 = 8) Then
  loc_113F4AA:               global_52 = New MemberEnviro
  loc_113F4BE:               Set var_CC = var_D0(Index)
  loc_113F4C4:               Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F4CC:                = MemberEnviro.Menu.Caption
  loc_113F4DE:               global_52.CAPTION = CVar(var_D4)
  loc_113F4F4:               Call global_52.Show
  loc_113F4FD:             Else
  loc_113F503:               If (var_C6 = 9) Then
  loc_113F506:                 GoTo loc_113F56C
  loc_113F509:               End If
  loc_113F50F:               If (var_C6 = &HA) Then
  loc_113F51C:                 global_52 = New MemSelectCategory
  loc_113F530:                 Set var_CC = var_D0(Index)
  loc_113F536:                 Call 0.Method_MemMas_Click0 (var_D4)
  loc_113F53E:                  = MemSelectCategory.Menu.Caption
  loc_113F550:                 global_52.CAPTION = CVar(var_D4)
  loc_113F566:                 Call global_52.Show
  loc_113F56C:                 ' Referenced from:               113F506
  loc_113F56C:               End If
  loc_113F56C:               ' Referenced from:             113F494
  loc_113F56C:             End If
  loc_113F56C:           End If
  loc_113F56C:         End If
  loc_113F56C:       End If
  loc_113F56C:       ' Referenced from:     113F2F0
  loc_113F56C:     End If
  loc_113F56C:   End If
  loc_113F56C: End If
  loc_113F56C: Exit Sub
  loc_113F56D: Loop Until  'do at: 113A4E3
End Sub

Private Sub MemRpt_Click(Index As Integer) '11A1BC4
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_DC As Variant
  Dim var_CC As Variant
  loc_11A17AF: var_B4 = CVar("MemRpt" & "+") 'String
  loc_11A17CA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11A17DC: var_C6 = Index
  loc_11A17E5: If (var_C6 = 0) Then
  loc_11A17F2:   global_52 = New rMemberRepView
  loc_11A1805:   global_52.GRepFormName = "MemVisitDetail"
  loc_11A1816:   Set var_CC = var_F0(Index)
  loc_11A181C:   Call 0.Method_MemRpt_Click0 (var_F4, var_C6)
  loc_11A1824:   MemVar_1F92200 = global_52.Menu.Caption
  loc_11A1836:   global_52.CAPTION = CVar(var_F4)
  loc_11A184C:   Call global_52.Show
  loc_11A1855: Else
  loc_11A185B:   If (var_C6 = 1) Then
  loc_11A1868:     global_52 = New rMemberRepView
  loc_11A187B:     global_52.GRepFormName = "MemMalingLabels"
  loc_11A188C:     Set var_CC = var_F0(Index)
  loc_11A1892:     Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A189A:      = global_52.Menu.Caption
  loc_11A18AC:     global_52.CAPTION = CVar(var_F4)
  loc_11A18CC:     Me.Global.Unload global_52
  loc_11A18D7:   Else
  loc_11A18DD:     If (var_C6 = 2) Then
  loc_11A18EA:       global_52 = New rMemberRepView
  loc_11A18FD:       global_52.GRepFormName = "MemBillMissingReport"
  loc_11A190E:       Set var_CC = var_F0(Index)
  loc_11A1914:       Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A191C:        = global_52.Menu.Caption
  loc_11A192E:       global_52.CAPTION = CVar(var_F4)
  loc_11A193C:       var_DC = 1
  loc_11A194A:       Call global_52.Show
  loc_11A1953:     Else
  loc_11A1959:       If (var_C6 = 3) Then
  loc_11A1966:         global_52 = New rMemberRepView
  loc_11A1979:         global_52.GRepFormName = "MemSalesRegister"
  loc_11A198A:         Set var_CC = var_F0(Index)
  loc_11A1990:         Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1998:         var_DC = global_52.Menu.Caption
  loc_11A19AA:         global_52.CAPTION = CVar(var_F4)
  loc_11A19C0:         Call global_52.Show
  loc_11A19C9:       Else
  loc_11A19CF:         If (var_C6 = 4) Then
  loc_11A19DC:           global_52 = New FaReports
  loc_11A19EF:           global_52.GRepFormName = "MemLed"
  loc_11A19FD:           VarLateMemLdRfVar
  loc_11A1A03:           global_52.Visible = True
  loc_11A1A17:           Set var_CC = var_F0(Index)
  loc_11A1A1D:           Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1A25:            = global_52.Menu.Caption
  loc_11A1A37:           global_52.CAPTION = CVar(var_F4)
  loc_11A1A4D:           Call global_52.Show
  loc_11A1A56:         Else
  loc_11A1A5C:           If (var_C6 = 5) Then
  loc_11A1A69:             global_52 = New rMemberRepView
  loc_11A1A7C:             global_52.GRepFormName = "MemTaxReport"
  loc_11A1A8D:             Set var_CC = var_F0(Index)
  loc_11A1A93:             Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1A9B:              = global_52.Menu.Caption
  loc_11A1AAD:             global_52.CAPTION = CVar(var_F4)
  loc_11A1AC3:             Call global_52.Show
  loc_11A1ACC:           Else
  loc_11A1AD2:             If (var_C6 = 6) Then
  loc_11A1ADF:               global_52 = New rMemberRepView
  loc_11A1AF2:               global_52.GRepFormName = "PaymentDueLetterReport"
  loc_11A1B03:               Set var_CC = var_F0(Index)
  loc_11A1B09:               Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1B11:                = global_52.Menu.Caption
  loc_11A1B23:               global_52.CAPTION = CVar(var_F4)
  loc_11A1B43:               Me.Global.Unload global_52
  loc_11A1B4E:             Else
  loc_11A1B54:               If (var_C6 = 7) Then
  loc_11A1B61:                 global_52 = New rMemberRepView
  loc_11A1B74:                 global_52.GRepFormName = "MemBirthAnnvDtls"
  loc_11A1B85:                 Set var_CC = var_F0(Index)
  loc_11A1B8B:                 Call 0.Method_MemRpt_Click0 (var_F4)
  loc_11A1B93:                  = global_52.Menu.Caption
  loc_11A1BA5:                 global_52.CAPTION = CVar(var_F4)
  loc_11A1BBB:                 Call global_52.Show
  loc_11A1BC1:               End If
  loc_11A1BC1:             End If
  loc_11A1BC1:           End If
  loc_11A1BC1:         End If
  loc_11A1BC1:       End If
  loc_11A1BC1:     End If
  loc_11A1BC1:   End If
  loc_11A1BC1: End If
  loc_11A1BC1: Exit Sub
End Sub

Private Sub MISREP_Click(Index As Integer) '1216720
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_121624B: var_B4 = CVar("MISREP" & "+") 'String
  loc_1216266: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1216278: var_C6 = Index
  loc_1216281: If (var_C6 = 0) Then
  loc_121628E:   global_52 = New rPOSRepView
  loc_12162A1:   global_52.GRepFormName = "CashierCollection"
  loc_12162B2:   Set var_CC = var_F0(Index)
  loc_12162B8:   Call 0.Method_MISREP_Click0 (var_F4, var_C6)
  loc_12162C0:   MemVar_1F92200 = global_52.Menu.Caption
  loc_12162D2:   global_52.CAPTION = CVar(var_F4)
  loc_12162E8:   Call global_52.Show
  loc_12162F1: Else
  loc_12162F7:   If (var_C6 = 1) Then
  loc_1216304:     global_52 = New rPOSRepView
  loc_1216317:     global_52.GRepFormName = "OpenItemSale"
  loc_1216328:     Set var_CC = var_F0(Index)
  loc_121632E:     Call 0.Method_MISREP_Click0 (var_F4)
  loc_1216336:      = global_52.Menu.Caption
  loc_1216348:     global_52.CAPTION = CVar(var_F4)
  loc_121635E:     Call global_52.Show
  loc_1216367:   Else
  loc_121636D:     If (var_C6 = 2) Then
  loc_121637A:       global_52 = New rPOSRepView
  loc_121638D:       global_52.GRepFormName = "VoidBills"
  loc_121639E:       Set var_CC = var_F0(Index)
  loc_12163A4:       Call 0.Method_MISREP_Click0 (var_F4)
  loc_12163AC:        = global_52.Menu.Caption
  loc_12163BE:       global_52.CAPTION = CVar(var_F4)
  loc_12163D4:       Call global_52.Show
  loc_12163DD:     Else
  loc_12163E3:       If (var_C6 = 3) Then
  loc_12163F0:         global_52 = New rPOSRepView
  loc_1216403:         global_52.GRepFormName = "KOTRateChange"
  loc_1216414:         Set var_CC = var_F0(Index)
  loc_121641A:         Call 0.Method_MISREP_Click0 (var_F4)
  loc_1216422:          = global_52.Menu.Caption
  loc_1216434:         global_52.CAPTION = CVar(var_F4)
  loc_121644A:         Call global_52.Show
  loc_1216453:       Else
  loc_1216459:         If (var_C6 = 5) Then
  loc_1216466:           global_52 = New rPOSRepView
  loc_1216479:           global_52.GRepFormName = "DiscountSumm"
  loc_121648A:           Set var_CC = var_F0(Index)
  loc_1216490:           Call 0.Method_MISREP_Click0 (var_F4)
  loc_1216498:            = global_52.Menu.Caption
  loc_12164AA:           global_52.CAPTION = CVar(var_F4)
  loc_12164C0:           Call global_52.Show
  loc_12164C9:         Else
  loc_12164CF:           If (var_C6 = 6) Then
  loc_12164DC:             global_52 = New rPOSRepView
  loc_12164EF:             global_52.GRepFormName = "MonthOutletWiseSale"
  loc_1216500:             Set var_CC = var_F0(Index)
  loc_1216506:             Call 0.Method_MISREP_Click0 (var_F4)
  loc_121650E:              = global_52.Menu.Caption
  loc_1216520:             global_52.CAPTION = CVar(var_F4)
  loc_1216536:             Call global_52.Show
  loc_121653F:           Else
  loc_1216545:             If (var_C6 = 7) Then
  loc_1216552:               global_52 = New rPOSRepView
  loc_1216565:               global_52.GRepFormName = "ABCAnalysisSale"
  loc_1216576:               Set var_CC = var_F0(Index)
  loc_121657C:               Call 0.Method_MISREP_Click0 (var_F4)
  loc_1216584:                = global_52.Menu.Caption
  loc_1216596:               global_52.CAPTION = CVar(var_F4)
  loc_12165AC:               Call global_52.Show
  loc_12165B5:             Else
  loc_12165BB:               If (var_C6 = 8) Then
  loc_12165C8:                 global_52 = New rPOSRepView
  loc_12165DB:                 global_52.GRepFormName = "SaleSumm"
  loc_12165EC:                 Set var_CC = var_F0(Index)
  loc_12165F2:                 Call 0.Method_MISREP_Click0 (var_F4)
  loc_12165FA:                  = global_52.Menu.Caption
  loc_121660C:                 global_52.CAPTION = CVar(var_F4)
  loc_1216622:                 Call global_52.Show
  loc_121662B:               Else
  loc_1216631:                 If (var_C6 = 9) Then
  loc_121663E:                   global_52 = New rPOSRepView
  loc_1216651:                   global_52.GRepFormName = "TaxInvoiceDetail"
  loc_1216662:                   Set var_CC = var_F0(Index)
  loc_1216668:                   Call 0.Method_MISREP_Click0 (var_F4)
  loc_1216670:                    = global_52.Menu.Caption
  loc_1216682:                   global_52.CAPTION = CVar(var_F4)
  loc_1216698:                   Call global_52.Show
  loc_12166A1:                 Else
  loc_12166A7:                   If (var_C6 = &HA) Then
  loc_12166B4:                     global_52 = New rPOSRepView
  loc_12166C7:                     global_52.GRepFormName = "EditedBills"
  loc_12166D8:                     Set var_CC = var_F0(Index)
  loc_12166DE:                     Call 0.Method_MISREP_Click0 (var_F4)
  loc_12166E6:                      = global_52.Menu.Caption
  loc_12166F8:                     global_52.CAPTION = CVar(var_F4)
  loc_121670E:                     Call global_52.Show
  loc_1216714:                   End If
  loc_1216714:                 End If
  loc_1216714:               End If
  loc_1216714:             End If
  loc_1216714:           End If
  loc_1216714:         End If
  loc_1216714:       End If
  loc_1216714:     End If
  loc_1216714:   End If
  loc_1216714: End If
  loc_1216719: global_52 = Nothing
  loc_121671D: Exit Sub
End Sub

Private Sub mnuMSG_Click(Index As Integer) 'F2D200
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_F2D103: var_B4 = CVar("mnuMSG" & "+") 'String
  loc_F2D11E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2D130: var_C6 = Index
  loc_F2D139: If (var_C6 = 0) Then
  loc_F2D146:   global_52 = New Inbox
  loc_F2D15A:   Set var_CC = var_D0(Index)
  loc_F2D160:   Call 0.Method_mnuMSG_Click0 (var_D4, var_C6)
  loc_F2D168:   MemVar_1F92200 = Inbox.Menu.Caption
  loc_F2D17A:   global_52.CAPTION = CVar(var_D4)
  loc_F2D190:   Call global_52.Show
  loc_F2D199: Else
  loc_F2D19F:   If (var_C6 = 1) Then
  loc_F2D1AC:     global_52 = New Outbox
  loc_F2D1C0:     Set var_CC = var_D0(Index)
  loc_F2D1C6:     Call 0.Method_mnuMSG_Click0 (var_D4)
  loc_F2D1CE:      = Outbox.Menu.Caption
  loc_F2D1E0:     global_52.CAPTION = CVar(var_D4)
  loc_F2D1F6:     Call global_52.Show
  loc_F2D1FC:   End If
  loc_F2D1FC: End If
  loc_F2D1FC: Exit Sub
End Sub

Private Sub mnuTelMast_Click(Index As Integer) 'ECF74C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ECF6B3: var_B4 = CVar("mnuTelMast" & "+") 'String
  loc_ECF6CE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ECF6E9: If (Index = 0) Then
  loc_ECF6F5:   global_52 = MemVar_1F92E44
  loc_ECF706:   Set var_CC = Me.mnuTelMast
  loc_ECF70C:   Call 0.Method_mnuTelMast_Click0 (Index, var_D0, var_D4)
  loc_ECF714:   var_C6 = var_D0.Caption
  loc_ECF726:   global_52.CAPTION = CVar(var_D4)
  loc_ECF73C:   Call global_52.Show
  loc_ECF742: End If
  loc_ECF747: global_52 = Nothing
  loc_ECF74B: Exit Sub
End Sub

Private Sub mnuTelRep_Click(Index As Integer) 'EDE504
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_EDE45F: var_B4 = CVar("mnuTelRep" & "+") 'String
  loc_EDE47A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EDE48C: var_C6 = Index
  loc_EDE495: If (var_C6 = 0) Then
  loc_EDE4A2:   global_52 = New rRepTelPreview
  loc_EDE4B5:   global_52.GRepFormName = "EpabxCallRep"
  loc_EDE4C6:   Set var_CC = var_F0(Index)
  loc_EDE4CC:   Call 0.Method_mnuTelRep_Click0 (var_F4, var_C6)
  loc_EDE4D4:   MemVar_1F92200 = global_52.Menu.Caption
  loc_EDE4E6:   global_52.CAPTION = CVar(var_F4)
  loc_EDE4FC:   Call global_52.Show
  loc_EDE502: End If
  loc_EDE502: Exit Sub
End Sub

Private Sub NightAuditLR_Click(Index As Integer) 'F1CE38
  'Data Table: 5C8378
  Dim var_8C As Integer
  loc_F1CD48: If (Index = 0) Then
  loc_F1CD55:   global_52 = New rFomRepView
  loc_F1CD68:   global_52.GRepFormName = "NightAuditReport"
  loc_F1CD79:   Set var_90 = var_B4(Index)
  loc_F1CD7F:   Call 0.Method_NightAuditLR_Click0 (var_B8)
  loc_F1CD87:   var_8C = global_52.Menu.Caption
  loc_F1CD99:   global_52.CAPTION = CVar(var_B8)
  loc_F1CDAF:   Call global_52.Show
  loc_F1CDB8: Else
  loc_F1CDBE:   If (var_8C = 1) Then
  loc_F1CDCB:     global_52 = New rFomRepView
  loc_F1CDDE:     global_52.GRepFormName = "GuestChgJournalLog"
  loc_F1CDEF:     Set var_90 = var_B4(Index)
  loc_F1CDF5:     Call 0.Method_NightAuditLR_Click0 (var_B8)
  loc_F1CDFD:      = global_52.Menu.Caption
  loc_F1CE0F:     global_52.CAPTION = CVar(var_B8)
  loc_F1CE25:     Call global_52.Show
  loc_F1CE2B:   End If
  loc_F1CE2B: End If
  loc_F1CE30: global_52 = Nothing
  loc_F1CE34: Exit Sub
End Sub

Private Sub NightAuditoR_Click(Index As Integer) '1134988
  'Data Table: 5C8378
  Dim var_8C As Integer
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_8A As Integer
  Dim var_B4 As Menu
  loc_1134610: If (Index = 0) Then
  loc_113461D:   global_52 = New rFomRepView
  loc_1134630:   global_52.GRepFormName = "GuestLedger"
  loc_1134641:   Set var_90 = var_B4(Index)
  loc_1134647:   Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_113464F:   var_8C = global_52.Menu.Caption
  loc_1134661:   global_52.CAPTION = CVar(var_B8)
  loc_1134677:   Call global_52.Show
  loc_1134680: Else
  loc_1134686:   If (var_8C = 1) Then
  loc_1134693:     global_52 = New fdPostChrg
  loc_11346A7:     Set var_90 = var_B4(Index)
  loc_11346AD:     Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_11346B5:      = fdPostChrg.Menu.Caption
  loc_11346BD:     var_C8 = CVar(var_B8) 'String
  loc_11346C7:     global_52.CAPTION = var_C8
  loc_11346DD:     Call global_52.Show
  loc_11346E6:   Else
  loc_11346EC:     If (var_8C = 2) Then
  loc_1134713:       unk_5C83B4.Execute "Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_113471E:       Set var_88 = var_90
  loc_1134742:       If (var_88.RecordCount > 0) Then
  loc_1134754:         var_90 = var_88.Fields
  loc_113477E:         If (Proc_6_38_E68A98(CVar(var_90.Item("KOTAtNightAudit"))) = "Yes") Then
  loc_1134789:           If (Proc_96_47_101DC9C(var_90) = 0) Then
  loc_113478E:             var_8A = &HFF
  loc_1134791:           End If
  loc_1134791:         End If
  loc_11347A8:         var_B4 = var_88.Fields.Item("POSBillAtNightAudit")
  loc_11347CA:         If (Proc_6_38_E68A98(CVar(var_B4)) = "Yes") Then
  loc_11347D5:           If (Proc_96_46_110BD38(var_8A) = 0) Then
  loc_11347DA:             var_8A = &HFF
  loc_11347DD:           End If
  loc_11347DD:         End If
  loc_11347DD:       End If
  loc_11347E3:       If (var_8A = &HFF) Then
  loc_11347EB:         Set var_88 = Nothing
  loc_11347EE:         Exit Sub
  loc_11347EF:       End If
  loc_11347F9:       global_52 = New fdAcPostChrg
  loc_113480D:       Set var_90 = Me.NightAuditoR
  loc_1134813:       Call 0.Method_NightAuditoR_Click0 (Index, var_B4)
  loc_113481B:       var_B8 = var_B4.Caption
  loc_113482D:       global_52.CAPTION = CVar(var_B8)
  loc_1134843:       Call global_52.Show
  loc_113484C:     Else
  loc_1134852:       If (var_8C = 3) Then
  loc_113485F:         global_52 = New fdNDAcPostChrg
  loc_1134873:         Set var_90 = var_B4(Index)
  loc_1134879:         Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_1134881:         var_8A = fdNDAcPostChrg.Menu.Caption
  loc_1134893:         global_52.CAPTION = CVar(var_B8)
  loc_11348A9:         Call global_52.Show
  loc_11348B2:       Else
  loc_11348B8:         If (var_8C = 4) Then
  loc_11348C5:           global_52 = New FrmControlPanel
  loc_11348D9:           Set var_90 = var_B4(Index)
  loc_11348DF:           Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_11348E7:            = FrmControlPanel.Menu.Caption
  loc_11348F9:           global_52.CAPTION = CVar(var_B8)
  loc_113490F:           Call global_52.Show
  loc_1134918:         Else
  loc_113491E:           If (var_8C = 5) Then
  loc_113492B:             global_52 = New frmReNightAudit
  loc_113493F:             Set var_90 = var_B4(Index)
  loc_1134945:             Call 0.Method_NightAuditoR_Click0 (var_B8)
  loc_113494D:              = frmReNightAudit.Menu.Caption
  loc_113495F:             global_52.CAPTION = CVar(var_B8)
  loc_1134975:             Call global_52.Show
  loc_113497B:           End If
  loc_113497B:         End If
  loc_113497B:       End If
  loc_113497B:     End If
  loc_113497B:   End If
  loc_113497B: End If
  loc_1134980: global_52 = Nothing
  loc_1134984: Exit Sub
End Sub

Private Sub NightAuditRR_Click(Index As Integer) '130A038
  'Data Table: 5C8378
  Dim var_8C As Integer
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_D8 As Boolean
  loc_1309900: If (Index = 0) Then
  loc_130990D:   global_52 = New rFomRepView
  loc_1309920:   global_52.GRepFormName = "DailyReport"
  loc_1309931:   Set var_90 = var_B4(Index)
  loc_1309937:   Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_130993F:   var_8C = global_52.Menu.Caption
  loc_1309951:   global_52.CAPTION = CVar(var_B8)
  loc_1309967:   Call global_52.Show
  loc_1309970: Else
  loc_1309976:   If (var_8C = 1) Then
  loc_1309983:     global_52 = New rFomRepView
  loc_130998A:     var_A0 = "Daily Report-II"
  loc_1309996:     global_52.GRepFormName = "DailyReport"
  loc_13099A7:     Set var_90 = var_B4(Index)
  loc_13099AD:     Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_13099B5:      = global_52.Menu.Caption
  loc_13099C7:     global_52.CAPTION = CVar(var_B8)
  loc_13099DD:     Call global_52.Show
  loc_13099E6:   Else
  loc_13099EC:     If (var_8C = 2) Then
  loc_13099F9:       global_52 = New rFomRepView
  loc_1309A0C:       global_52.GRepFormName = "RevAnalysis"
  loc_1309A1D:       Set var_90 = var_B4(Index)
  loc_1309A23:       Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309A2B:        = global_52.Menu.Caption
  loc_1309A3D:       global_52.CAPTION = CVar(var_B8)
  loc_1309A53:       Call global_52.Show
  loc_1309A5C:     Else
  loc_1309A62:       If (var_8C = 3) Then
  loc_1309A6F:         global_52 = New rFomRepView
  loc_1309A82:         global_52.GRepFormName = "GuestTrialBalance"
  loc_1309A93:         Set var_90 = var_B4(Index)
  loc_1309A99:         Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309AA1:          = global_52.Menu.Caption
  loc_1309AB3:         global_52.CAPTION = CVar(var_B8)
  loc_1309AC9:         Call global_52.Show
  loc_1309AD2:       Else
  loc_1309AD8:         If (var_8C = 4) Then
  loc_1309AE5:           global_52 = New rFomRepView
  loc_1309AF8:           global_52.GRepFormName = "NightAuditReportI"
  loc_1309B09:           Set var_90 = var_B4(Index)
  loc_1309B0F:           Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309B17:            = global_52.Menu.Caption
  loc_1309B29:           global_52.CAPTION = CVar(var_B8)
  loc_1309B49:           Me.Global.Unload global_52
  loc_1309B54:         Else
  loc_1309B5A:           If (var_8C = 5) Then
  loc_1309B67:             global_52 = New rFomRepView
  loc_1309B7A:             global_52.GRepFormName = "OccAnalysis"
  loc_1309B8B:             Set var_90 = var_B4(Index)
  loc_1309B91:             Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309B99:              = global_52.Menu.Caption
  loc_1309BAB:             global_52.CAPTION = CVar(var_B8)
  loc_1309BC1:             Call global_52.Show
  loc_1309BCA:           Else
  loc_1309BD0:             If (var_8C = 6) Then
  loc_1309BDD:               global_52 = New rFomRepView
  loc_1309BF0:               global_52.GRepFormName = "MarketSegAnalysis"
  loc_1309C01:               Set var_90 = var_B4(Index)
  loc_1309C07:               Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309C0F:                = global_52.Menu.Caption
  loc_1309C21:               global_52.CAPTION = CVar(var_B8)
  loc_1309C37:               Call global_52.Show
  loc_1309C40:             Else
  loc_1309C46:               If (var_8C = 7) Then
  loc_1309C53:                 global_52 = New rFomRepView
  loc_1309C66:                 global_52.GRepFormName = "BusinessAnalysis"
  loc_1309C77:                 Set var_90 = var_B4(Index)
  loc_1309C7D:                 Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309C85:                  = global_52.Menu.Caption
  loc_1309C97:                 global_52.CAPTION = CVar(var_B8)
  loc_1309CAD:                 Call global_52.Show
  loc_1309CB6:               Else
  loc_1309CBC:                 If (var_8C = 8) Then
  loc_1309CC9:                   global_52 = New rFomRepView
  loc_1309CDC:                   global_52.GRepFormName = "CompanyAnalysis"
  loc_1309CED:                   Set var_90 = var_B4(Index)
  loc_1309CF3:                   Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309CFB:                    = global_52.Menu.Caption
  loc_1309D0D:                   global_52.CAPTION = CVar(var_B8)
  loc_1309D23:                   Call global_52.Show
  loc_1309D2C:                 Else
  loc_1309D32:                   If (var_8C = 9) Then
  loc_1309D3F:                     global_52 = New rFomRepView
  loc_1309D52:                     global_52.GRepFormName = "TravelAgentAnalysis"
  loc_1309D63:                     Set var_90 = var_B4(Index)
  loc_1309D69:                     Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309D71:                      = global_52.Menu.Caption
  loc_1309D83:                     global_52.CAPTION = CVar(var_B8)
  loc_1309D99:                     Call global_52.Show
  loc_1309DA2:                   Else
  loc_1309DA8:                     If (var_8C = &HA) Then
  loc_1309DB5:                       global_52 = New rFomRepView
  loc_1309DC8:                       global_52.GRepFormName = "FOCC Report"
  loc_1309DD9:                       Set var_90 = var_B4(Index)
  loc_1309DDF:                       Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309DE7:                        = global_52.Menu.Caption
  loc_1309DF9:                       global_52.CAPTION = CVar(var_B8)
  loc_1309E0F:                       Call global_52.Show
  loc_1309E18:                     Else
  loc_1309E1E:                       If (var_8C = &HB) Then
  loc_1309E2B:                         global_52 = New rFomRepView
  loc_1309E3E:                         global_52.GRepFormName = "FoodCost"
  loc_1309E4F:                         Set var_90 = var_B4(Index)
  loc_1309E55:                         Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309E5D:                          = global_52.Menu.Caption
  loc_1309E6F:                         global_52.CAPTION = CVar(var_B8)
  loc_1309E85:                         Call global_52.Show
  loc_1309E8E:                       Else
  loc_1309E94:                         If (var_8C = &HC) Then
  loc_1309EA1:                           global_52 = New rFomRepView
  loc_1309EB4:                           global_52.GRepFormName = "FBCostStatement"
  loc_1309EC5:                           Set var_90 = var_B4(Index)
  loc_1309ECB:                           Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309ED3:                            = global_52.Menu.Caption
  loc_1309EE5:                           global_52.CAPTION = CVar(var_B8)
  loc_1309EFB:                           Call global_52.Show
  loc_1309F04:                         Else
  loc_1309F0A:                           If (var_8C = &HE) Then
  loc_1309F17:                             global_52 = New FaReports
  loc_1309F2A:                             global_52.GRepFormName = "AgingRepDr"
  loc_1309F3B:                             Set var_90 = var_B4(Index)
  loc_1309F41:                             Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309F49:                              = global_52.Menu.Caption
  loc_1309F5B:                             global_52.CAPTION = CVar(var_B8)
  loc_1309F69:                             var_D8 = False
  loc_1309F7A:                             VarLateMemCallLdRfVar
  loc_1309F82:                             global_52.Visible = 1
  loc_1309F91:                             Call global_52.Show
  loc_1309F9A:                           Else
  loc_1309FA0:                             If (var_8C = &HF) Then
  loc_1309FAD:                               global_52 = New FaReports
  loc_1309FC0:                               global_52.GRepFormName = "AgingRepCr"
  loc_1309FD1:                               Set var_90 = var_B4(Index)
  loc_1309FD7:                               Call 0.Method_NightAuditRR_Click0 (var_B8)
  loc_1309FDF:                               var_D8 = global_52.Menu.Caption
  loc_1309FF1:                               global_52.CAPTION = CVar(var_B8)
  loc_1309FFF:                               var_D8 = False
  loc_130A010:                               VarLateMemCallLdRfVar
  loc_130A018:                               global_52.Visible = 1
  loc_130A027:                               Call global_52.Show
  loc_130A02D:                             End If
  loc_130A02D:                           End If
  loc_130A02D:                         End If
  loc_130A02D:                       End If
  loc_130A02D:                     End If
  loc_130A02D:                   End If
  loc_130A02D:                 End If
  loc_130A02D:               End If
  loc_130A02D:             End If
  loc_130A02D:           End If
  loc_130A02D:         End If
  loc_130A02D:       End If
  loc_130A02D:     End If
  loc_130A02D:   End If
  loc_130A02D: End If
  loc_130A032: global_52 = Nothing
  loc_130A036: Exit Sub
End Sub

Private Sub POSEnt_Click(Index As Integer) '1434DF4
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim unk_5C8400 As Connection15
  Dim var_C8 As Recordset15
  Dim var_E0 As Variant
  Dim var_E4 As Variant
  Dim MemVar_1F9220C As String
  Dim var_EE As Integer
  Dim var_106 As Integer
  Dim var_F4 As String
  Dim var_10C As String
  Dim var_CC As Recordset15
  Dim var_104 As Integer
  Dim unk_5C83B4 As Connection15
  Dim var_EC As Variant
  Dim var_130 As Field20
  Dim var_D0 As Recordset15
  Dim var_A4 As Variant
  loc_143431B: var_B4 = CVar("POSEnt" & "+") 'String
  loc_1434323: var_94 = CVar(CStr(Index)) 'String
  loc_1434329: var_A4 = Trim(var_94)
  loc_1434331: var_C4 = var_B4 & var_A4 
  loc_1434336: MemVar_1F92200 = CStr(var_C4)
  loc_143435B: unk_5C8400.Execute "Select * from Enviro", var_94, -1
  loc_1434366: Set var_C8 = var_E4
  loc_1434383: If (var_C8.RecordCount > 0) Then
  loc_1434389:   var_C8.MoveFirst
  loc_143439D:   var_E4 = var_C8.Fields
  loc_14343A5:   var_EC = var_E4.Item("TouchScreen")
  loc_14343B6:   MemVar_1F9220C = Proc_6_38_E68A98(CVar(var_EC), var_E4)
  loc_14343C0: End If
  loc_14343C5: Set var_C8 = Nothing
  loc_14343CB: var_EE = Index
  loc_14343D4: If Not (var_EE = 0) Then
  loc_14343DD:   If Not (var_EE = 1) Then
  loc_14343E6:     If Not (var_EE = 2) Then
  loc_14343EF:       If Not (var_EE = 3) Then
  loc_14343F8:         If Not (var_EE = 4) Then
  loc_1434401:           If Not (var_EE = 5) Then
  loc_143440A:             If Not (var_EE = 6) Then
  loc_1434413:               If Not (var_EE = 7) Then
  loc_143441C:                 If Not (var_EE = 8) Then
  loc_1434425:                   If Not (var_EE = 9) Then
  loc_143442E:                     If Not (var_EE = &HA) Then
  loc_1434437:                       If Not (var_EE = &HB) Then
  loc_1434440:                         If Not (var_EE = &HC) Then
  loc_1434449:                           If (var_EE = &HD) Then
  loc_143444C:                           End If
  loc_143444C:                         End If
  loc_143444C:                       End If
  loc_143444C:                     End If
  loc_143444C:                   End If
  loc_143444C:                 End If
  loc_143444C:               End If
  loc_143444C:             End If
  loc_143444C:           End If
  loc_143444C:         End If
  loc_143444C:       End If
  loc_143444C:     End If
  loc_143444C:   End If
  loc_1434454:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1434461:     global_52 = New FrmChangeRest
  loc_1434475:     Set var_E4 = var_EC(Index)
  loc_143447B:     Call 0.Method_POSEnt_Click0 (var_F4, var_EE)
  loc_1434483:     MemVar_1F9220C = FrmChangeRest.Menu.Caption
  loc_1434495:     global_52.CAPTION = CVar(var_F4)
  loc_14344A3:     var_E0 = 1
  loc_14344B1:     Call global_52.Show
  loc_14344B7:     var_E0 = 0
  loc_14344C5:     Call global_52.ZOrder
  loc_14344CB:   End If
  loc_14344CE:   var_106 = Index
  loc_14344D7:   If (var_106 = 0) Then
  loc_14344E4:     global_52 = New RsKOTEntry
  loc_14344EE:     var_E0 = CVar(MemVar_1F921A4) 'String
  loc_14344F8:     global_52.LocalRestCode = var_E0
  loc_1434509:     Set var_E4 = var_EC(Index)
  loc_143450F:     Call 0.Method_POSEnt_Click0 (var_F4, var_106, var_E0)
  loc_1434517:     var_E0 = global_52.Menu.Caption
  loc_1434529:     global_52.CAPTION = CVar(var_F4)
  loc_143453F:     Call global_52.Show
  loc_1434548:   Else
  loc_143454E:     If (var_106 = 1) Then
  loc_143455B:       global_52 = New RsTbChange
  loc_143456F:       global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434580:       Set var_E4 = var_EC(Index)
  loc_1434586:       Call 0.Method_POSEnt_Click0 (var_F4)
  loc_143458E:       MemVar_1F92200 = global_52.Menu.Caption
  loc_14345A0:       global_52.CAPTION = CVar(var_F4)
  loc_14345B6:       Call global_52.Show
  loc_14345BF:     Else
  loc_14345C5:       If (var_106 = 2) Then
  loc_14345D2:         global_52 = New RSSaleBill
  loc_14345E6:         global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_14345F7:         Set var_E4 = var_EC(Index)
  loc_14345FD:         Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434605:          = global_52.Menu.Caption
  loc_143460D:         var_94 = CVar(var_F4) 'String
  loc_1434617:         global_52.CAPTION = var_94
  loc_143462D:         Call global_52.Show
  loc_1434636:       Else
  loc_143463C:         If (var_106 = 3) Then
  loc_1434648:           global_52 = MemVar_1F92F64
  loc_1434659:           global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434669:           global_52.OpenType = 5
  loc_143467C:           global_52.OpenMode = 2
  loc_1434694:           var_F4 = "Select 'B'+ShortName as Adv_Type From Depart Where Code='" & MemVar_1F921A4
  loc_14346A4:           global_52.Connection15.Execute var_F4 & "'", var_94, -1
  loc_14346AF:           Set var_CC = var_E4
  loc_14346D3:           If (var_CC.RecordCount > 0) Then
  loc_14346ED:             var_EC = var_CC.Fields.Item("Adv_type")
  loc_1434700:             global_52.AdvType = CVar(var_EC)
  loc_143470D:           Else
  loc_1434720:             var_94 = "Voucher Type for this Department not Found"
  loc_1434726:             MsgBox(var_94, &H10, var_A4, var_B4, var_C4)
  loc_1434736:             Exit Sub
  loc_1434737:           End If
  loc_143473D:           var_104 = 0
  loc_143475A:           var_F4 = "Select Count(*) From Depart Where Code='" & MemVar_1F921A4
  loc_143476A:           unk_5C83B4.Execute var_F4 & "' And RestType='Production'", var_94, -1
  loc_1434772:           var_E4 = var_E4.Fields
  loc_143477A:           var_104 = var_EC.Item(var_EC)
  loc_1434782:           var_130 = var_130.Value
  loc_14347A9:           If (var_A4 > 0) Then
  loc_14347C5:             MsgBox("Operation is not allowed for Perticular Department", &H10, var_A4, var_B4, var_C4)
  loc_14347D5:             Exit Sub
  loc_14347D6:           End If
  loc_14347E3:           Set var_E4 = Me.POSEnt
  loc_14347E9:           Call 0.Method_POSEnt_Click0 (Index, var_EC, var_F4)
  loc_14347F1:           var_A4 = var_EC.Caption
  loc_1434803:           global_52.CAPTION = CVar(var_F4)
  loc_1434819:           Call global_52.Show
  loc_1434822:         Else
  loc_1434828:           If (var_106 = 4) Then
  loc_1434835:             global_52 = New POSBillReprint
  loc_1434849:             global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_143485A:             Set var_E4 = var_EC(Index)
  loc_1434860:             Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434868:             var_E4 = global_52.Menu.Caption
  loc_143487A:             global_52.CAPTION = CVar(var_F4)
  loc_1434890:             Call global_52.Show
  loc_1434899:           Else
  loc_143489F:             If (var_106 = 5) Then
  loc_14348AC:               global_52 = New RsSaleBillSplit
  loc_14348C0:               global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_14348CC:               Call global_52.Show
  loc_14348D5:             Else
  loc_14348DB:               If (var_106 = 6) Then
  loc_14348E8:                 global_52 = New RsPOSDisplay
  loc_14348FC:                 global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_143490F:                 global_52.OpenMode = 2
  loc_143491B:                 Call global_52.Show
  loc_1434932:                 If CBool(global_52.ptabpos) Then
  loc_1434948:                   var_94 = "No Records in Table Master"
  loc_143494E:                   MsgBox(var_94, &H40, var_A4, var_B4, var_C4)
  loc_1434966:                   var_E4 = global_52
  loc_1434970:                   Me.Global.Unload var_E4
  loc_1434978:                   Exit Sub
  loc_1434979:                 End If
  loc_143497C:               Else
  loc_1434982:                 If (var_106 = 7) Then
  loc_143498F:                   global_52 = New RsBookingEntry
  loc_14349A3:                   global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_14349B6:                   global_52.OpenMode = 2
  loc_14349DE:                   global_52.Connection15.Execute "Select * from Voucher_Type Where Ncat='ORDER' and  RestCode='" & MemVar_1F921A4 & "'", var_94, -1
  loc_14349E9:                   Set var_D0 = var_E4
  loc_1434A0D:                   If (var_D0.RecordCount > 0) Then
  loc_1434A1F:                     var_E4 = var_D0.Fields
  loc_1434A3A:                     global_52.oVType = CVar(var_E4.Item("V_Type"))
  loc_1434A47:                   Else
  loc_1434A5A:                     var_94 = "Contact to your S/w vendor"
  loc_1434A60:                     MsgBox(var_94, &H40, var_A4, var_B4, var_C4)
  loc_1434A70:                     Exit Sub
  loc_1434A71:                   End If
  loc_1434A79:                   Call global_52.Show
  loc_1434A82:                 Else
  loc_1434A88:                   If (var_106 = 8) Then
  loc_1434A95:                     global_52 = New RSSaleBillDisplay
  loc_1434AA9:                     global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434ABC:                     global_52.OpenMode = 2
  loc_1434AC8:                     Call global_52.Show
  loc_1434AD1:                   Else
  loc_1434AD7:                     If (var_106 = 9) Then
  loc_1434AE4:                       global_52 = New POSAdvanceDepDialog
  loc_1434AF8:                       global_52.MDIRestCode = CVar(MemVar_1F921A4)
  loc_1434B0B:                       global_52.OpenMode = 2
  loc_1434B1B:                       global_52.OpenType = 5
  loc_1434B3A:                       var_10C = "Select V_Type from Voucher_Type Where Ncat='PADV' and  RestCode='" & MemVar_1F921A4 & "'"
  loc_1434B43:                       global_52.Connection15.Execute var_10C, var_94, -1
  loc_1434B4E:                       Set var_D0 = var_E4
  loc_1434B72:                       If (var_D0.RecordCount > 0) Then
  loc_1434B84:                         var_E4 = var_D0.Fields
  loc_1434B8C:                         var_EC = var_E4.Item("V_Type")
  loc_1434B9F:                         global_52.AdvType = CVar(var_EC)
  loc_1434BAC:                       Else
  loc_1434BB2:                         Call 0.Method_arg_50 (var_10C, var_E4)
  loc_1434BCF:                         var_F4 = "Advance Voucher Type Not Exists." & vbCrLf
  loc_1434BD9:                         MsgBox(CVar(var_F4 & "Plz. Contact to your S/w vendor"), &H40, CVar(var_10C), var_B4, var_C4)
  loc_1434BEC:                         Exit Sub
  loc_1434BED:                       End If
  loc_1434BF5:                       Call global_52.Show
  loc_1434BFE:                     Else
  loc_1434C04:                       If (var_106 = &HA) Then
  loc_1434C11:                         global_52 = New RsKOTTransfer
  loc_1434C25:                         global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434C36:                         Set var_E4 = var_EC(Index)
  loc_1434C3C:                         Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434C44:                         var_E4 = global_52.Menu.Caption
  loc_1434C56:                         global_52.CAPTION = CVar(var_F4)
  loc_1434C6C:                         Call global_52.Show
  loc_1434C75:                       Else
  loc_1434C7B:                         If (var_106 = &HB) Then
  loc_1434C88:                           global_52 = New RsTokenEntry
  loc_1434C9C:                           global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434CAD:                           Set var_E4 = var_EC(Index)
  loc_1434CB3:                           Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434CBB:                            = global_52.Menu.Caption
  loc_1434CCD:                           global_52.CAPTION = CVar(var_F4)
  loc_1434CE3:                           Call global_52.Show
  loc_1434CEC:                         Else
  loc_1434CF2:                           If (var_106 = &HC) Then
  loc_1434CFF:                             global_52 = New RsAssignDelivery
  loc_1434D13:                             global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434D24:                             Set var_E4 = var_EC(Index)
  loc_1434D2A:                             Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434D32:                              = global_52.Menu.Caption
  loc_1434D44:                             global_52.CAPTION = CVar(var_F4)
  loc_1434D5A:                             Call global_52.Show
  loc_1434D63:                           Else
  loc_1434D69:                             If (var_106 = &HD) Then
  loc_1434D76:                               global_52 = New RsPaymentReceice
  loc_1434D8A:                               global_52.LocalRestCode = CVar(MemVar_1F921A4)
  loc_1434D9B:                               Set var_E4 = var_EC(Index)
  loc_1434DA1:                               Call 0.Method_POSEnt_Click0 (var_F4)
  loc_1434DA9:                                = global_52.Menu.Caption
  loc_1434DBB:                               global_52.CAPTION = CVar(var_F4)
  loc_1434DD1:                               Call global_52.Show
  loc_1434DD7:                             End If
  loc_1434DD7:                           End If
  loc_1434DD7:                         End If
  loc_1434DD7:                       End If
  loc_1434DD7:                     End If
  loc_1434DD7:                   End If
  loc_1434DD7:                 End If
  loc_1434DD7:               End If
  loc_1434DD7:             End If
  loc_1434DD7:           End If
  loc_1434DD7:         End If
  loc_1434DD7:       End If
  loc_1434DD7:     End If
  loc_1434DD7:   End If
  loc_1434DD7: End If
  loc_1434DDC: global_52 = Nothing
  loc_1434DE5: Set var_CC = Nothing
  loc_1434DED: Set var_D0 = Nothing
  loc_1434DF0: Exit Sub
End Sub

Private Sub POSMas_Click(Index As Integer) '1344E74
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_104 As Boolean
  loc_1344683: var_B4 = CVar("POSMas" & "+") 'String
  loc_134469E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_13446B0: var_C6 = Index
  loc_13446B9: If (var_C6 = 0) Then
  loc_13446C6:   global_52 = New OutLetMast
  loc_13446DA:   Set var_CC = var_D0(Index)
  loc_13446E0:   Call 0.Method_POSMas_Click0 (var_D4, var_C6)
  loc_13446E8:   MemVar_1F92200 = OutLetMast.Menu.Caption
  loc_13446FA:   global_52.CAPTION = CVar(var_D4)
  loc_1344710:   Call global_52.Show
  loc_1344719: Else
  loc_134471F:   If (var_C6 = 1) Then
  loc_134472C:     global_52 = New OutLetSundry
  loc_1344740:     Set var_CC = var_D0(Index)
  loc_1344746:     Call 0.Method_POSMas_Click0 (var_D4)
  loc_134474E:      = OutLetSundry.Menu.Caption
  loc_1344760:     global_52.CAPTION = CVar(var_D4)
  loc_1344776:     Call global_52.Show
  loc_134477F:   Else
  loc_1344785:     If (var_C6 = 2) Then
  loc_1344792:       global_52 = New FrmWaiterMast
  loc_13447A6:       Set var_CC = var_D0(Index)
  loc_13447AC:       Call 0.Method_POSMas_Click0 (var_D4)
  loc_13447B4:        = FrmWaiterMast.Menu.Caption
  loc_13447C6:       global_52.CAPTION = CVar(var_D4)
  loc_13447DC:       Call global_52.Show
  loc_13447E5:     Else
  loc_13447EB:       If (var_C6 = 3) Then
  loc_13447F8:         global_52 = New RsTableMast
  loc_134480C:         Set var_CC = var_D0(Index)
  loc_1344812:         Call 0.Method_POSMas_Click0 (var_D4)
  loc_134481A:          = RsTableMast.Menu.Caption
  loc_134482C:         global_52.CAPTION = CVar(var_D4)
  loc_1344842:         Call global_52.Show
  loc_134484B:       Else
  loc_1344851:         If (var_C6 = 4) Then
  loc_134485E:           global_52 = New FrmItemMast
  loc_1344872:           Set var_CC = var_D0(Index)
  loc_1344878:           Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344880:            = FrmItemMast.Menu.Caption
  loc_1344892:           global_52.CAPTION = CVar(var_D4)
  loc_13448A8:           Call global_52.Show
  loc_13448B1:         Else
  loc_13448B7:           If (var_C6 = 5) Then
  loc_13448C4:             global_52 = New FrmItemGroupMast
  loc_13448D7:             global_52.RestType = "='Finish'"
  loc_13448DB:             var_104 = False
  loc_13448EC:             VarLateMemCallLdRfVar
  loc_13448F4:             global_52.Visible = 3
  loc_13448FB:             var_104 = False
  loc_134490C:             VarLateMemCallLdRfVar
  loc_1344914:             global_52.Visible = 1
  loc_134491B:             var_104 = True
  loc_134492B:             VarLateMemCallLdRfVar
  loc_1344933:             global_52.Visible = 1
  loc_134494A:             VarLateMemCallLdRfVar
  loc_1344952:             global_52.Visible = 1
  loc_1344966:             Set var_CC = var_D0(Index)
  loc_134496C:             Call 0.Method_POSMas_Click0 (var_D4, True, True)
  loc_1344974:             var_104 = global_52.Menu.Caption
  loc_1344986:             global_52.CAPTION = CVar(var_D4)
  loc_134499C:             Call global_52.Show
  loc_13449A5:           Else
  loc_13449AB:             If (var_C6 = 6) Then
  loc_13449B8:               global_52 = New FrmItemCatMast
  loc_13449CC:               Set var_CC = var_D0(Index)
  loc_13449D2:               Call 0.Method_POSMas_Click0 (var_D4)
  loc_13449DA:               var_104 = FrmItemCatMast.Menu.Caption
  loc_13449EC:               global_52.CAPTION = CVar(var_D4)
  loc_1344A02:               Call global_52.Show
  loc_1344A0B:             Else
  loc_1344A11:               If (var_C6 = 7) Then
  loc_1344A1E:                 global_52 = New RsMenuItemEntry
  loc_1344A32:                 Set var_CC = Me.DGHelp
  loc_1344A38:                 Call 0.Method_POSMas_Click0 (Index, var_D0)
  loc_1344A40:                 var_D4 = RsMenuItemEntry.DGHelp.Caption
  loc_1344A52:                 global_52.CAPTION = CVar(var_D4)
  loc_1344A68:                 Call global_52.Show
  loc_1344A71:               Else
  loc_1344A77:                 If (var_C6 = 8) Then
  loc_1344A84:                   global_52 = New FrmMenuRate
  loc_1344A98:                   Set var_CC = var_D0(Index)
  loc_1344A9E:                   Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344AA6:                    = FrmMenuRate.Menu.Caption
  loc_1344AB8:                   global_52.CAPTION = CVar(var_D4)
  loc_1344ACE:                   Call global_52.Show
  loc_1344AD7:                 Else
  loc_1344ADD:                   If (var_C6 = &HA) Then
  loc_1344AEA:                     global_52 = New frmSessionMast
  loc_1344AFE:                     Set var_CC = var_D0(Index)
  loc_1344B04:                     Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344B0C:                      = frmSessionMast.Menu.Caption
  loc_1344B1E:                     global_52.CAPTION = CVar(var_D4)
  loc_1344B34:                     Call global_52.Show
  loc_1344B3D:                   Else
  loc_1344B43:                     If (var_C6 = &HB) Then
  loc_1344B50:                       global_52 = New FrmConsumMast9999
  loc_1344B64:                       Set var_CC = var_D0(Index)
  loc_1344B6A:                       Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344B72:                        = FrmConsumMast9999.Menu.Caption
  loc_1344B84:                       global_52.CAPTION = CVar(var_D4)
  loc_1344B9A:                       Call global_52.Show
  loc_1344BA3:                     Else
  loc_1344BA9:                       If (var_C6 = &HC) Then
  loc_1344BB6:                         global_52 = New SchemeMast
  loc_1344BCA:                         Set var_CC = var_D0(Index)
  loc_1344BD0:                         Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344BD8:                          = SchemeMast.Menu.Caption
  loc_1344BEA:                         global_52.CAPTION = CVar(var_D4)
  loc_1344C00:                         Call global_52.Show
  loc_1344C09:                       Else
  loc_1344C0F:                         If (var_C6 = &HF) Then
  loc_1344C1C:                           global_52 = New pHappyHours
  loc_1344C30:                           Set var_CC = var_D0(Index)
  loc_1344C36:                           Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344C3E:                            = pHappyHours.Menu.Caption
  loc_1344C50:                           global_52.CAPTION = CVar(var_D4)
  loc_1344C66:                           Call global_52.Show
  loc_1344C6F:                         Else
  loc_1344C75:                           If (var_C6 = &H10) Then
  loc_1344C82:                             global_52 = New NewHappyHours
  loc_1344C96:                             Set var_CC = var_D0(Index)
  loc_1344C9C:                             Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344CA4:                              = NewHappyHours.Menu.Caption
  loc_1344CB6:                             global_52.CAPTION = CVar(var_D4)
  loc_1344CCC:                             Call global_52.Show
  loc_1344CD5:                           Else
  loc_1344CDB:                             If (var_C6 = &H11) Then
  loc_1344CE8:                               global_52 = New frmComboMast
  loc_1344CFC:                               Set var_CC = var_D0(Index)
  loc_1344D02:                               Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344D0A:                                = frmComboMast.Menu.Caption
  loc_1344D1C:                               global_52.CAPTION = CVar(var_D4)
  loc_1344D32:                               Call global_52.Show
  loc_1344D3B:                             Else
  loc_1344D41:                               If (var_C6 = &H12) Then
  loc_1344D4E:                                 global_52 = New FrmNCType
  loc_1344D62:                                 Set var_CC = var_D0(Index)
  loc_1344D68:                                 Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344D70:                                  = FrmNCType.Menu.Caption
  loc_1344D82:                                 global_52.CAPTION = CVar(var_D4)
  loc_1344D98:                                 Call global_52.Show
  loc_1344DA1:                               Else
  loc_1344DA7:                                 If (var_C6 = &H13) Then
  loc_1344DB4:                                   global_52 = New frmGuestInfo
  loc_1344DC8:                                   Set var_CC = var_D0(Index)
  loc_1344DCE:                                   Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344DD6:                                    = frmGuestInfo.Menu.Caption
  loc_1344DE8:                                   global_52.CAPTION = CVar(var_D4)
  loc_1344DFE:                                   Call global_52.Show
  loc_1344E07:                                 Else
  loc_1344E0D:                                   If (var_C6 = &H14) Then
  loc_1344E1A:                                     global_52 = New FrmDeliveryBoyMast
  loc_1344E2E:                                     Set var_CC = var_D0(Index)
  loc_1344E34:                                     Call 0.Method_POSMas_Click0 (var_D4)
  loc_1344E3C:                                      = FrmDeliveryBoyMast.Menu.Caption
  loc_1344E4E:                                     global_52.CAPTION = CVar(var_D4)
  loc_1344E64:                                     Call global_52.Show
  loc_1344E6A:                                   End If
  loc_1344E6A:                                 End If
  loc_1344E6A:                               End If
  loc_1344E6A:                             End If
  loc_1344E6A:                           End If
  loc_1344E6A:                         End If
  loc_1344E6A:                       End If
  loc_1344E6A:                     End If
  loc_1344E6A:                   End If
  loc_1344E6A:                 End If
  loc_1344E6A:               End If
  loc_1344E6A:             End If
  loc_1344E6A:           End If
  loc_1344E6A:         End If
  loc_1344E6A:       End If
  loc_1344E6A:     End If
  loc_1344E6A:   End If
  loc_1344E6A: End If
  loc_1344E6F: global_52 = Nothing
  loc_1344E73: Exit Sub
End Sub

Private Sub PosTaxRep_Click(Index As Integer) '100E2F8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_100E0EF: var_B4 = CVar("POSTaxRep" & "+") 'String
  loc_100E10A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_100E11C: var_C6 = Index
  loc_100E125: If (var_C6 = 0) Then
  loc_100E132:   global_52 = New rPOSRepView
  loc_100E145:   global_52.GRepFormName = "TaxReport"
  loc_100E156:   Set var_CC = var_F0(Index)
  loc_100E15C:   Call 0.Method_PosTaxRep_Click0 (var_F4, var_C6)
  loc_100E164:   MemVar_1F92200 = global_52.Menu.Caption
  loc_100E176:   global_52.CAPTION = CVar(var_F4)
  loc_100E18C:   Call global_52.Show
  loc_100E195: Else
  loc_100E19B:   If (var_C6 = 1) Then
  loc_100E1A8:     global_52 = New rPOSRepView
  loc_100E1BB:     global_52.GRepFormName = "TaxRegister"
  loc_100E1CC:     Set var_CC = var_F0(Index)
  loc_100E1D2:     Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100E1DA:      = global_52.Menu.Caption
  loc_100E1EC:     global_52.CAPTION = CVar(var_F4)
  loc_100E202:     Call global_52.Show
  loc_100E20B:   Else
  loc_100E211:     If (var_C6 = 2) Then
  loc_100E21E:       global_52 = New rPOSRepView
  loc_100E231:       global_52.GRepFormName = "TaxDetails"
  loc_100E242:       Set var_CC = var_F0(Index)
  loc_100E248:       Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100E250:        = global_52.Menu.Caption
  loc_100E262:       global_52.CAPTION = CVar(var_F4)
  loc_100E278:       Call global_52.Show
  loc_100E281:     Else
  loc_100E287:       If (var_C6 = 3) Then
  loc_100E294:         global_52 = New rPOSRepView
  loc_100E2A7:         global_52.GRepFormName = "TaxSumm"
  loc_100E2B8:         Set var_CC = var_F0(Index)
  loc_100E2BE:         Call 0.Method_PosTaxRep_Click0 (var_F4)
  loc_100E2C6:          = global_52.Menu.Caption
  loc_100E2D8:         global_52.CAPTION = CVar(var_F4)
  loc_100E2EE:         Call global_52.Show
  loc_100E2F4:       End If
  loc_100E2F4:     End If
  loc_100E2F4:   End If
  loc_100E2F4: End If
  loc_100E2F4: Exit Sub
End Sub

Private Sub PRM_Click(Index As Integer) 'FDC3E0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_FDC217: var_B4 = CVar("PRM" & "+") 'String
  loc_FDC232: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FDC244: var_C6 = Index
  loc_FDC24D: If (var_C6 = 0) Then
  loc_FDC25A:   global_52 = New PrDesigMast
  loc_FDC26E:   Set var_CC = var_D0(Index)
  loc_FDC274:   Call 0.Method_PRM_Click0 (var_D4, var_C6)
  loc_FDC27C:   MemVar_1F92200 = PrDesigMast.Menu.Caption
  loc_FDC28E:   global_52.CAPTION = CVar(var_D4)
  loc_FDC2A4:   Call global_52.Show
  loc_FDC2AD: Else
  loc_FDC2B3:   If (var_C6 = 1) Then
  loc_FDC2C0:     global_52 = New PrCategoryMast
  loc_FDC2D4:     Set var_CC = var_D0(Index)
  loc_FDC2DA:     Call 0.Method_PRM_Click0 (var_D4)
  loc_FDC2E2:      = PrCategoryMast.Menu.Caption
  loc_FDC2F4:     global_52.CAPTION = CVar(var_D4)
  loc_FDC30A:     Call global_52.Show
  loc_FDC313:   Else
  loc_FDC319:     If (var_C6 = 2) Then
  loc_FDC326:       global_52 = New prHoliday
  loc_FDC33A:       Set var_CC = var_D0(Index)
  loc_FDC340:       Call 0.Method_PRM_Click0 (var_D4)
  loc_FDC348:        = prHoliday.Menu.Caption
  loc_FDC35A:       global_52.CAPTION = CVar(var_D4)
  loc_FDC370:       Call global_52.Show
  loc_FDC379:     Else
  loc_FDC37F:       If (var_C6 = 3) Then
  loc_FDC38C:         global_52 = New PrEmployee
  loc_FDC3A0:         Set var_CC = var_D0(Index)
  loc_FDC3A6:         Call 0.Method_PRM_Click0 (var_D4)
  loc_FDC3AE:          = PrEmployee.Menu.Caption
  loc_FDC3C0:         global_52.CAPTION = CVar(var_D4)
  loc_FDC3D6:         Call global_52.Show
  loc_FDC3DC:       End If
  loc_FDC3DC:     End If
  loc_FDC3DC:   End If
  loc_FDC3DC: End If
  loc_FDC3DC: Exit Sub
End Sub

Private Sub RWP_Click(Index As Integer) 'F51E44
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_F51D33: var_B4 = CVar("RWP" & "+") 'String
  loc_F51D4E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F51D60: var_C6 = Index
  loc_F51D69: If (var_C6 = 1) Then
  loc_F51D75:   global_52 = MemVar_1F92344
  loc_F51D85:   global_52.SmartCardApplicable = "No"
  loc_F51D96:   Set var_EC = var_F0(Index)
  loc_F51D9C:   Call 0.Method_RWP_Click0 (var_F4, var_C6)
  loc_F51DA4:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F51DB6:   global_52.CAPTION = CVar(var_F4)
  loc_F51DCC:   Call global_52.Show
  loc_F51DD5: Else
  loc_F51DDB:   If (var_C6 = 2) Then
  loc_F51DE8:     global_52 = New RewardPointParam1
  loc_F51DFC:     Set var_EC = var_F0(Index)
  loc_F51E02:     Call 0.Method_RWP_Click0 (var_F4)
  loc_F51E0A:      = RewardPointParam1.Menu.Caption
  loc_F51E1C:     global_52.CAPTION = CVar(var_F4)
  loc_F51E32:     Call global_52.Show
  loc_F51E38:   End If
  loc_F51E38: End If
  loc_F51E3D: global_52 = Nothing
  loc_F51E41: Exit Sub
End Sub

Private Sub SMSGEN_Click(Index As Integer) 'F2E1C0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_F2E0C3: var_B4 = CVar("SMSGEN" & "+") 'String
  loc_F2E0DE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_F2E0F9: If (Index = 1) Then
  loc_F2E105:   global_52 = MemVar_1F92464
  loc_F2E116:   Set var_CC = Me.SMSGEN
  loc_F2E11C:   Call 0.Method_SMSGEN_Click0 (Index, var_D0, var_D4)
  loc_F2E124:   var_C6 = var_D0.Caption
  loc_F2E136:   global_52.CAPTION = CVar(var_D4)
  loc_F2E14C:   Call global_52.Show
  loc_F2E155: Else
  loc_F2E15B:   If (var_C6 = 2) Then
  loc_F2E167:     global_52 = MemVar_1F9243C
  loc_F2E178:     Set var_CC = Me.SMSGEN
  loc_F2E17E:     Call 0.Method_SMSGEN_Click0 (Index, var_D0)
  loc_F2E198:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_F2E1AE:     Call global_52.Show
  loc_F2E1B4:   End If
  loc_F2E1B4: End If
  loc_F2E1B9: global_52 = Nothing
  loc_F2E1BD: Exit Sub
End Sub

Private Sub SMSSEND_Click(Index As Integer) 'ED0348
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_ED02AF: var_B4 = CVar("SMSSEND" & "+") 'String
  loc_ED02CA: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_ED02E5: If (Index = 1) Then
  loc_ED02F1:   global_52 = MemVar_1F92450
  loc_ED0302:   Set var_CC = Me.SMSSEND
  loc_ED0308:   Call 0.Method_SMSSEND_Click0 (Index, var_D0, var_D4)
  loc_ED0310:   var_C6 = var_D0.Caption
  loc_ED0322:   global_52.CAPTION = CVar(var_D4)
  loc_ED0338:   Call global_52.Show
  loc_ED033E: End If
  loc_ED0343: global_52 = Nothing
  loc_ED0347: Exit Sub
End Sub

Private Sub dsale_Click(Index As Integer) 'EBD550
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_EBD4C3: var_B4 = CVar("dsale" & "+") 'String
  loc_EBD4D9: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_EBD4DE: MemVar_1F92200 = CStr(var_C4)
  loc_EBD4ED: On Error Goto loc_EBD509
  loc_EBD4F3: var_C6 = Index
  loc_EBD4FC: If (var_C6 = 0) Then
  loc_EBD4FF: End If
  loc_EBD504: global_52 = Nothing
  loc_EBD508: Exit Sub
  loc_EBD509: ' Referenced from: EBD4ED
  loc_EBD511: Set var_CC = Err()
  loc_EBD517: Call 0.Method_arg_2C (var_D0, var_C6)
  loc_EBD538: MsgBox(CVar(var_D0), &H40, "Information", var_B4, var_C4)
  loc_EBD54B: Exit Sub
  loc_EBD54C: Exit Sub
End Sub

Private Sub EXTRWREP_Click(Index As Integer) 'EF0B84
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_CC As Variant
  loc_EF0ACB: var_B4 = CVar("EXTRWREP" & "+") 'String
  loc_EF0AE6: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EF0AF8: var_C6 = Index
  loc_EF0B01: If (var_C6 = 1) Then
  loc_EF0B0E:   global_52 = New rPOSRepView
  loc_EF0B21:   global_52.GRepFormName = "RegisteredGuestDetail"
  loc_EF0B32:   Set var_CC = var_F0(Index)
  loc_EF0B38:   Call 0.Method_EXTRWREP_Click0 (var_F4, var_C6)
  loc_EF0B40:   MemVar_1F92200 = global_52.Menu.Caption
  loc_EF0B52:   global_52.CAPTION = CVar(var_F4)
  loc_EF0B72:   Me.Global.Unload global_52
  loc_EF0B7A: End If
  loc_EF0B7F: global_52 = Nothing
  loc_EF0B83: Exit Sub
End Sub

Private Sub TelMaast_Click(Index As Integer) 'FD65A8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  loc_FD63E7: var_B4 = CVar("TelMaast" & "+") 'String
  loc_FD6402: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FD641D: If (Index = 1) Then
  loc_FD6429:   global_52 = MemVar_1F9336C
  loc_FD643A:   Set var_CC = Me.TelMaast
  loc_FD6440:   Call 0.Method_TelMaast_Click0 (Index, var_D0, var_D4)
  loc_FD6448:   var_C6 = var_D0.Caption
  loc_FD645A:   global_52.CAPTION = CVar(var_D4)
  loc_FD6470:   Call global_52.Show
  loc_FD6479: Else
  loc_FD647F:   If (var_C6 = 2) Then
  loc_FD648B:     global_52 = MemVar_1F93380
  loc_FD649C:     Set var_CC = Me.TelMaast
  loc_FD64A2:     Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD64BC:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD64D2:     Call global_52.Show
  loc_FD64DB:   Else
  loc_FD64E1:     If (var_C6 = 3) Then
  loc_FD64ED:       global_52 = MemVar_1F93394
  loc_FD64FE:       Set var_CC = Me.TelMaast
  loc_FD6504:       Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD651E:       global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD6534:       Call global_52.Show
  loc_FD653D:     Else
  loc_FD6543:       If (var_C6 = 4) Then
  loc_FD654F:         global_52 = MemVar_1F933A8
  loc_FD6560:         Set var_CC = Me.TelMaast
  loc_FD6566:         Call 0.Method_TelMaast_Click0 (Index, var_D0)
  loc_FD6580:         global_52.CAPTION = CVar(var_D0.Caption)
  loc_FD6596:         Call global_52.Show
  loc_FD659C:       End If
  loc_FD659C:     End If
  loc_FD659C:   End If
  loc_FD659C: End If
  loc_FD65A1: global_52 = Nothing
  loc_FD65A5: Exit Sub
End Sub

Private Sub mnuWindowCascade_Click() 'E08500
  'Data Table: 5C8378
  loc_E084F9: Call 0.Method_arg_2EC (CInt(0))
  loc_E084FE: Exit Sub
End Sub

Private Sub Hallop_Click(Index As Integer) '128BB64
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D4 As String
  Dim var_E4 As Variant
  loc_128B587: var_B4 = CVar("Hallop" & "+") 'String
  loc_128B5A2: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_128B5B4: var_C6 = Index
  loc_128B5BD: If (var_C6 = 0) Then
  loc_128B5CA:   global_52 = New FrmBookingInquiry
  loc_128B5DE:   var_D4 = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_128B5EF:   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B606:   Set var_CC = var_E8(Index)
  loc_128B60C:   Call 0.Method_Hallop_Click0 (var_D4, var_C6)
  loc_128B614:   MemVar_1F92200 = global_52.Menu.Caption
  loc_128B626:   global_52.CAPTION = CVar(var_D4)
  loc_128B63C:   Call global_52.Show
  loc_128B645: Else
  loc_128B64B:   If (var_C6 = 1) Then
  loc_128B658:     global_52 = New HallBooking
  loc_128B66C:     var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B67D:     global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B696:     global_52.OpenMode = 2
  loc_128B6A7:     Set var_CC = var_E8(Index)
  loc_128B6AD:     Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B6B5:     2 = global_52.Menu.Caption
  loc_128B6C7:     global_52.CAPTION = CVar(var_D4)
  loc_128B6DD:     Call global_52.Show
  loc_128B6E6:   Else
  loc_128B6EC:     If (var_C6 = 2) Then
  loc_128B6F9:       global_52 = New CateringBooking
  loc_128B70D:       var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B71E:       global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B735:       Set var_CC = var_E8(Index)
  loc_128B73B:       Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B743:       2 = global_52.Menu.Caption
  loc_128B755:       global_52.CAPTION = CVar(var_D4)
  loc_128B76B:       Call global_52.Show
  loc_128B774:     Else
  loc_128B77A:       If (var_C6 = 3) Then
  loc_128B787:         global_52 = New HallChefPreCosting
  loc_128B79B:         var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B7AC:         global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B7C3:         Set var_CC = var_E8(Index)
  loc_128B7C9:         Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B7D1:         2 = global_52.Menu.Caption
  loc_128B7E3:         global_52.CAPTION = CVar(var_D4)
  loc_128B7F9:         Call global_52.Show
  loc_128B802:       Else
  loc_128B808:         If (var_C6 = 4) Then
  loc_128B815:           global_52 = New HallBill
  loc_128B829:           var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B83A:           global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B851:           Set var_CC = var_E8(Index)
  loc_128B857:           Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B85F:           2 = global_52.Menu.Caption
  loc_128B871:           global_52.CAPTION = CVar(var_D4)
  loc_128B887:           Call global_52.Show
  loc_128B890:         Else
  loc_128B896:           If (var_C6 = 5) Then
  loc_128B8A3:             global_52 = New HallAdvanceDepDialog
  loc_128B8B7:             var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B8C8:             global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B8DF:             Set var_CC = var_E8(Index)
  loc_128B8E5:             Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B8ED:             2 = global_52.Menu.Caption
  loc_128B8FF:             global_52.CAPTION = CVar(var_D4)
  loc_128B915:             Call global_52.Show
  loc_128B91E:           Else
  loc_128B924:             If (var_C6 = 6) Then
  loc_128B931:               global_52 = New BanqAvailability
  loc_128B945:               var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B956:               global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B96D:               Set var_CC = var_E8(Index)
  loc_128B973:               Call 0.Method_Hallop_Click0 (var_D4)
  loc_128B97B:               2 = global_52.Menu.Caption
  loc_128B98D:               global_52.CAPTION = CVar(var_D4)
  loc_128B9A3:               Call global_52.Show
  loc_128B9AC:             Else
  loc_128B9B2:               If (var_C6 = 7) Then
  loc_128B9BF:                 global_52 = New frmGuestComments
  loc_128B9D3:                 var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128B9E4:                 global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128B9FB:                 Set var_CC = var_E8(Index)
  loc_128BA01:                 Call 0.Method_Hallop_Click0 (var_D4)
  loc_128BA09:                 2 = global_52.Menu.Caption
  loc_128BA1B:                 global_52.CAPTION = CVar(var_D4)
  loc_128BA31:                 Call global_52.Show
  loc_128BA3A:               Else
  loc_128BA40:                 If (var_C6 = 8) Then
  loc_128BA4D:                   global_52 = New HallBillEstimate
  loc_128BA61:                   var_D4 = Proc_6_45_EAD428(MemVar_1F92078)
  loc_128BA72:                   global_52.MDIRestCode = CVar(var_D4 & "BANQ")
  loc_128BA89:                   Set var_CC = var_E8(Index)
  loc_128BA8F:                   Call 0.Method_Hallop_Click0 (var_D4)
  loc_128BA97:                   2 = global_52.Menu.Caption
  loc_128BAA9:                   global_52.CAPTION = CVar(var_D4)
  loc_128BABF:                   Call global_52.Show
  loc_128BAC8:                 Else
  loc_128BACE:                   If (var_C6 = 9) Then
  loc_128BADB:                     global_52 = New HallAdvanceDepDialog
  loc_128BAEE:                     global_52.AdvType = "AD"
  loc_128BB01:                     global_52.OpenMode = 2
  loc_128BB14:                     global_52.OpenType = 6
  loc_128BB36:                     global_52.MDIRestCode = CVar(Proc_6_45_EAD428(MemVar_1F92078) & "BANQ")
  loc_128BB40:                     var_E4 = 1
  loc_128BB51:                     Call global_52.Show
  loc_128BB57:                   End If
  loc_128BB57:                 End If
  loc_128BB57:               End If
  loc_128BB57:             End If
  loc_128BB57:           End If
  loc_128BB57:         End If
  loc_128BB57:       End If
  loc_128BB57:     End If
  loc_128BB57:   End If
  loc_128BB57: End If
  loc_128BB5C: global_52 = Nothing
  loc_128BB60: Exit Sub
End Sub

Private Sub ResOpEnt_Click(Index As Integer) '11EFBF8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  Dim var_D0 As Menu
  Dim var_E4 As Variant
  loc_11EF767: var_B4 = CVar("ResOpEnt" & "+") 'String
  loc_11EF782: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_11EF79D: If (Index = 0) Then
  loc_11EF7A9:   global_52 = MemVar_1F934E8
  loc_11EF7BA:   Set var_CC = Me.ResOpEnt
  loc_11EF7C0:   Call 0.Method_ResOpEnt_Click0 (Index, var_D0, var_D4)
  loc_11EF7C8:   var_C6 = var_D0.Caption
  loc_11EF7DA:   global_52.CAPTION = CVar(var_D4)
  loc_11EF7F0:   Call global_52.Show
  loc_11EF7F9: Else
  loc_11EF7FF:   If (var_C6 = 1) Then
  loc_11EF80B:     global_52 = MemVar_1F934FC
  loc_11EF81C:     Set var_CC = Me.ResOpEnt
  loc_11EF822:     Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11EF83C:     global_52.CAPTION = CVar(var_D0.Caption)
  loc_11EF852:     Call global_52.Show
  loc_11EF85B:   Else
  loc_11EF861:     If (var_C6 = 2) Then
  loc_11EF86D:       global_52 = MemVar_1F93510
  loc_11EF87E:       Set var_CC = Me.ResOpEnt
  loc_11EF884:       Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11EF89E:       global_52.CAPTION = CVar(var_D0.Caption)
  loc_11EF8B4:       Call global_52.Show
  loc_11EF8BD:     Else
  loc_11EF8C3:       If (var_C6 = 3) Then
  loc_11EF8CF:         global_52 = MemVar_1F93524
  loc_11EF8E0:         Set var_CC = Me.ResOpEnt
  loc_11EF8E6:         Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11EF900:         global_52.CAPTION = CVar(var_D0.Caption)
  loc_11EF916:         Call global_52.Show
  loc_11EF91F:       Else
  loc_11EF925:         If (var_C6 = 4) Then
  loc_11EF931:           global_52 = MemVar_1F93538
  loc_11EF942:           Set var_CC = Me.ResOpEnt
  loc_11EF948:           Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11EF950:           var_D4 = var_D0.Caption
  loc_11EF962:           global_52.CAPTION = CVar(var_D4)
  loc_11EF978:           Call global_52.Show
  loc_11EF981:         Else
  loc_11EF987:           If (var_C6 = 5) Then
  loc_11EF993:             global_52 = MemVar_1F9354C
  loc_11EF9A6:             global_52.OpenType = 1
  loc_11EF9B9:             global_52.OpenMode = 2
  loc_11EF9C9:             global_52.AdvType = "ADRES"
  loc_11EF9DA:             Set var_CC = var_D0(Index)
  loc_11EF9E0:             Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11EF9E8:             MemVar_1F92200 = global_52.Menu.Caption
  loc_11EF9FA:             global_52.CAPTION = CVar(var_D4)
  loc_11EFA10:             Call global_52.Show
  loc_11EFA19:           Else
  loc_11EFA1F:             If (var_C6 = 6) Then
  loc_11EFA2C:               global_52 = New rRepReserv
  loc_11EFA3F:               global_52.GRepFormName = "ConfirmLetter"
  loc_11EFA50:               Set var_CC = var_D0(Index)
  loc_11EFA56:               Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11EFA5E:                = global_52.Menu.Caption
  loc_11EFA70:               global_52.CAPTION = CVar(var_D4)
  loc_11EFA7E:               var_E4 = 1
  loc_11EFA8F:               Call global_52.Show
  loc_11EFA98:             Else
  loc_11EFA9E:               If (var_C6 = 7) Then
  loc_11EFAAB:                 global_52 = New rRepReserv
  loc_11EFABE:                 global_52.GRepFormName = "CancellLetter"
  loc_11EFACF:                 Set var_CC = var_D0(Index)
  loc_11EFAD5:                 Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11EFADD:                 var_E4 = global_52.Menu.Caption
  loc_11EFAEF:                 global_52.CAPTION = CVar(var_D4)
  loc_11EFAFD:                 var_E4 = 1
  loc_11EFB0E:                 Call global_52.Show
  loc_11EFB17:               Else
  loc_11EFB1D:                 If (var_C6 = 8) Then
  loc_11EFB2A:                   global_52 = New rRepReserv
  loc_11EFB3D:                   global_52.GRepFormName = "RegistrationCard"
  loc_11EFB4E:                   Set var_CC = var_D0(Index)
  loc_11EFB54:                   Call 0.Method_ResOpEnt_Click0 (var_D4)
  loc_11EFB5C:                   var_E4 = global_52.Menu.Caption
  loc_11EFB6E:                   global_52.CAPTION = CVar(var_D4)
  loc_11EFB7C:                   var_E4 = 1
  loc_11EFB8D:                   Call global_52.Show
  loc_11EFB96:                 Else
  loc_11EFB9C:                   If (var_C6 = 9) Then
  loc_11EFBA8:                     global_52 = MemVar_1F93560
  loc_11EFBB9:                     Set var_CC = Me.ResOpEnt
  loc_11EFBBF:                     Call 0.Method_ResOpEnt_Click0 (Index, var_D0)
  loc_11EFBD9:                     global_52.CAPTION = CVar(var_D0.Caption)
  loc_11EFBEF:                     Call global_52.Show
  loc_11EFBF5:                   End If
  loc_11EFBF5:                 End If
  loc_11EFBF5:               End If
  loc_11EFBF5:             End If
  loc_11EFBF5:           End If
  loc_11EFBF5:         End If
  loc_11EFBF5:       End If
  loc_11EFBF5:     End If
  loc_11EFBF5:   End If
  loc_11EFBF5: End If
  loc_11EFBF5: Exit Sub
End Sub

Private Sub ResStatusRpt_Click(Index As Integer) '102754C
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_1027323: var_B4 = CVar("ResStatusRpt" & "+") 'String
  loc_102733E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_1027350: var_C6 = Index
  loc_1027359: If (var_C6 = 0) Then
  loc_1027366:   global_52 = New rFomRepView
  loc_1027379:   global_52.GRepFormName = "ReservationStatus"
  loc_102738A:   Set var_CC = var_F0(Index)
  loc_1027390:   Call 0.Method_ResStatusRpt_Click0 (var_F4, var_C6)
  loc_1027398:   MemVar_1F92200 = global_52.Menu.Caption
  loc_10273AA:   global_52.CAPTION = CVar(var_F4)
  loc_10273C0:   Call global_52.Show
  loc_10273C9: Else
  loc_10273CF:   If (var_C6 = 1) Then
  loc_10273DC:     global_52 = New rFomRepView
  loc_10273EF:     global_52.GRepFormName = "ReservStatusArrival"
  loc_1027400:     Set var_CC = var_F0(Index)
  loc_1027406:     Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_102740E:      = global_52.Menu.Caption
  loc_1027420:     global_52.CAPTION = CVar(var_F4)
  loc_1027436:     Call global_52.Show
  loc_102743F:   Else
  loc_1027445:     If (var_C6 = 2) Then
  loc_1027452:       global_52 = New rFomRepView
  loc_1027465:       global_52.GRepFormName = "ReservStatusInHouse"
  loc_1027476:       Set var_CC = var_F0(Index)
  loc_102747C:       Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_1027484:        = global_52.Menu.Caption
  loc_1027496:       global_52.CAPTION = CVar(var_F4)
  loc_10274AC:       Call global_52.Show
  loc_10274B5:     Else
  loc_10274BB:       If (var_C6 = 3) Then
  loc_10274BE:         GoTo loc_1027540
  loc_10274C1:       End If
  loc_10274C7:       If (var_C6 = 4) Then
  loc_10274CA:         GoTo loc_1027540
  loc_10274CD:       End If
  loc_10274D3:       If (var_C6 = 5) Then
  loc_10274E0:         global_52 = New rFomRepView
  loc_10274F3:         global_52.GRepFormName = "MovementList"
  loc_1027504:         Set var_CC = var_F0(Index)
  loc_102750A:         Call 0.Method_ResStatusRpt_Click0 (var_F4)
  loc_1027512:          = global_52.Menu.Caption
  loc_1027524:         global_52.CAPTION = CVar(var_F4)
  loc_102753A:         Call global_52.Show
  loc_1027540:         ' Referenced from:       10274CA
  loc_1027540:         ' Referenced from:       10274BE
  loc_1027540:       End If
  loc_1027540:     End If
  loc_1027540:   End If
  loc_1027540: End If
  loc_1027545: global_52 = Nothing
  loc_1027549: Exit Sub
End Sub

Private Sub DRLK_Click(Index As Integer) 'ECA148
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_ECA0AF: var_B4 = CVar("DRLK" & "+") 'String
  loc_ECA0C5: var_C4 = var_B4 & Trim(CVar(CStr(Index))) 
  loc_ECA0CA: MemVar_1F92200 = CStr(var_C4)
  loc_ECA0D9: On Error Goto loc_ECA104
  loc_ECA0DF: var_C6 = Index
  loc_ECA0E8: If (var_C6 = 1) Then
  loc_ECA0FE:   Call 0.Method_arg_2B0 (1, var_E8)
  loc_ECA103: End If
  loc_ECA103: Exit Sub
  loc_ECA104: ' Referenced from: ECA0D9
  loc_ECA10C: Set var_EC = Err()
  loc_ECA112: Call 0.Method_arg_2C (var_F0, var_C6)
  loc_ECA133: MsgBox(CVar(var_F0), &H40, "Information", var_B4, var_C4)
  loc_ECA146: Exit Sub
  loc_ECA147: Exit Sub
End Sub

Private Sub AdvRecdRpt_Click(Index As Integer) 'FB6B50
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_FB69B7: var_B4 = CVar("AdvRecdRpt" & "+") 'String
  loc_FB69D2: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FB69E4: var_C6 = Index
  loc_FB69ED: If (var_C6 = 0) Then
  loc_FB69FA:   global_52 = New rFomRepView
  loc_FB6A0D:   global_52.GRepFormName = "ResvAdvRecd"
  loc_FB6A1E:   Set var_CC = var_F0(Index)
  loc_FB6A24:   Call 0.Method_AdvRecdRpt_Click0 (var_F4, var_C6)
  loc_FB6A2C:   MemVar_1F92200 = global_52.Menu.Caption
  loc_FB6A3E:   global_52.CAPTION = CVar(var_F4)
  loc_FB6A54:   Call global_52.Show
  loc_FB6A5D: Else
  loc_FB6A63:   If (var_C6 = 1) Then
  loc_FB6A70:     global_52 = New rFomRepView
  loc_FB6A83:     global_52.GRepFormName = "ResvAdvRecdArr"
  loc_FB6A94:     Set var_CC = var_F0(Index)
  loc_FB6A9A:     Call 0.Method_AdvRecdRpt_Click0 (var_F4)
  loc_FB6AA2:      = global_52.Menu.Caption
  loc_FB6AB4:     global_52.CAPTION = CVar(var_F4)
  loc_FB6ACA:     Call global_52.Show
  loc_FB6AD3:   Else
  loc_FB6AD9:     If (var_C6 = 2) Then
  loc_FB6AE6:       global_52 = New rFomRepView
  loc_FB6AF9:       global_52.GRepFormName = "ResvAdvRecdInHouse"
  loc_FB6B0A:       Set var_CC = var_F0(Index)
  loc_FB6B10:       Call 0.Method_AdvRecdRpt_Click0 (var_F4)
  loc_FB6B18:        = global_52.Menu.Caption
  loc_FB6B2A:       global_52.CAPTION = CVar(var_F4)
  loc_FB6B40:       Call global_52.Show
  loc_FB6B46:     End If
  loc_FB6B46:   End If
  loc_FB6B46: End If
  loc_FB6B4B: global_52 = Nothing
  loc_FB6B4F: Exit Sub
End Sub

Private Sub ReservationMIS_Click(Index As Integer) 'FF94D0
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_FF92E3: var_B4 = CVar("ReservationMIS" & "+") 'String
  loc_FF92FE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_FF9310: var_C6 = Index
  loc_FF9319: If (var_C6 = 0) Then
  loc_FF9326:   global_52 = New rFomRepView
  loc_FF9339:   global_52.GRepFormName = "DaysForecastRep"
  loc_FF934A:   Set var_CC = var_F0(Index)
  loc_FF9350:   Call 0.Method_ReservationMIS_Click0 (var_F4, var_C6)
  loc_FF9358:   MemVar_1F92200 = global_52.Menu.Caption
  loc_FF936A:   global_52.CAPTION = CVar(var_F4)
  loc_FF9380:   Call global_52.Show
  loc_FF9389: Else
  loc_FF938F:   If (var_C6 = 1) Then
  loc_FF93B0:     Set var_CC = var_F0(Index)
  loc_FF93B6:     Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF93BE:      = resRoomNo.Menu.Caption
  loc_FF93D0:     New resRoomNo.CAPTION = CVar(var_F4)
  loc_FF93E1:   Else
  loc_FF93E7:     If (var_C6 = 2) Then
  loc_FF9408:       Set var_CC = var_F0(Index)
  loc_FF940E:       Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF9416:        = resRoomType.Menu.Caption
  loc_FF9428:       New resRoomType.CAPTION = CVar(var_F4)
  loc_FF9441:       Set var_CC = MemVar_1F93510.Frame2
  loc_FF9447:       resRoomType.Frame2.Visible = True
  loc_FF9452:     Else
  loc_FF9458:       If (var_C6 = 3) Then
  loc_FF9465:         global_52 = New rFomRepView
  loc_FF9478:         global_52.GRepFormName = "PackageForecast"
  loc_FF9489:         Set var_CC = var_F0(Index)
  loc_FF948F:         Call 0.Method_ReservationMIS_Click0 (var_F4)
  loc_FF9497:          = global_52.Menu.Caption
  loc_FF94A9:         global_52.CAPTION = CVar(var_F4)
  loc_FF94BF:         Call global_52.Show
  loc_FF94C5:       End If
  loc_FF94C5:     End If
  loc_FF94C5:   End If
  loc_FF94C5: End If
  loc_FF94CA: global_52 = Nothing
  loc_FF94CE: Exit Sub
End Sub

Private Sub UTLL_Click(Index As Integer) 'EB8A90
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  loc_EB8A0B: var_B4 = CVar("UTLL" & "+") 'String
  loc_EB8A26: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_EB8A3F: global_52 = New RSSaleBill1
  loc_EB8A53: Set var_C8 = var_CC(Index)
  loc_EB8A59: Call 0.Method_UTLL_Click0 (var_D0)
  loc_EB8A61: MemVar_1F92200 = RSSaleBill1.Menu.Caption
  loc_EB8A73: global_52.CAPTION = CVar(var_D0)
  loc_EB8A89: Call global_52.Show
  loc_EB8A8F: Exit Sub
End Sub

Private Sub SCRD_Click() 'DFCDDC
  'Data Table: 5C8378
  Dim MemVar_0 As Currency
  loc_DFCDD8: Exit Sub
  loc_DFCDD9: MemVar_0 = 
End Sub

Private Sub HouseREP_Click(Index As Integer) '10E30F8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_10E2DEB: var_B4 = CVar("HouseREP" & "+") 'String
  loc_10E2E06: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(Index))))
  loc_10E2E18: var_C6 = Index
  loc_10E2E21: If (var_C6 = 0) Then
  loc_10E2E2E:   global_52 = New rRepHousePreview
  loc_10E2E41:   global_52.GRepFormName = "IssueRegister"
  loc_10E2E52:   Set var_CC = var_F0(Index)
  loc_10E2E58:   Call 0.Method_HouseREP_Click0 (var_F4, var_C6)
  loc_10E2E60:   MemVar_1F92200 = global_52.Menu.Caption
  loc_10E2E72:   global_52.CAPTION = CVar(var_F4)
  loc_10E2E88:   Call global_52.Show
  loc_10E2E91: Else
  loc_10E2E97:   If (var_C6 = 1) Then
  loc_10E2EA4:     global_52 = New rRepHousePreview
  loc_10E2EB7:     global_52.GRepFormName = "StockRegister"
  loc_10E2EC8:     Set var_CC = var_F0(Index)
  loc_10E2ECE:     Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E2ED6:      = global_52.Menu.Caption
  loc_10E2EE8:     global_52.CAPTION = CVar(var_F4)
  loc_10E2EFE:     Call global_52.Show
  loc_10E2F07:   Else
  loc_10E2F0D:     If (var_C6 = 2) Then
  loc_10E2F1A:       global_52 = New rRepHousePreview
  loc_10E2F2D:       global_52.GRepFormName = "StockSumm"
  loc_10E2F3E:       Set var_CC = var_F0(Index)
  loc_10E2F44:       Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E2F4C:        = global_52.Menu.Caption
  loc_10E2F5E:       global_52.CAPTION = CVar(var_F4)
  loc_10E2F74:       Call global_52.Show
  loc_10E2F7F:       global_52 = Nothing
  loc_10E2F86:     Else
  loc_10E2F8C:       If (var_C6 = 3) Then
  loc_10E2F99:         global_52 = New rRepHousePreview
  loc_10E2FAC:         global_52.GRepFormName = "RoomStatus"
  loc_10E2FBD:         Set var_CC = var_F0(Index)
  loc_10E2FC3:         Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E2FCB:          = global_52.Menu.Caption
  loc_10E2FDD:         global_52.CAPTION = CVar(var_F4)
  loc_10E2FF3:         Call global_52.Show
  loc_10E2FFE:         global_52 = Nothing
  loc_10E3005:       Else
  loc_10E300B:         If (var_C6 = 4) Then
  loc_10E3018:           global_52 = New rRepHousePreview
  loc_10E302B:           global_52.GRepFormName = "ComplaintList"
  loc_10E303C:           Set var_CC = var_F0(Index)
  loc_10E3042:           Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E304A:            = global_52.Menu.Caption
  loc_10E305C:           global_52.CAPTION = CVar(var_F4)
  loc_10E3072:           Call global_52.Show
  loc_10E307D:           global_52 = Nothing
  loc_10E3084:         Else
  loc_10E308A:           If (var_C6 = 5) Then
  loc_10E3097:             global_52 = New rFomRepView
  loc_10E30AA:             global_52.GRepFormName = "HouseKeeping"
  loc_10E30BB:             Set var_CC = var_F0(Index)
  loc_10E30C1:             Call 0.Method_HouseREP_Click0 (var_F4)
  loc_10E30C9:              = global_52.Menu.Caption
  loc_10E30DB:             global_52.CAPTION = CVar(var_F4)
  loc_10E30F1:             Call global_52.Show
  loc_10E30F7:           End If
  loc_10E30F7:         End If
  loc_10E30F7:       End If
  loc_10E30F7:     End If
  loc_10E30F7:   End If
  loc_10E30F7: End If
  loc_10E30F7: Exit Sub
End Sub

Private Sub MallRep_Click() 'DFB9C0
  'Data Table: 5C8378
  loc_DFB9BC: Exit Sub
End Sub

Public Sub Proc_1_113_11C29F8(arg_C) '11C29F8
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_11C25A3: var_B4 = CVar("BanqRep1" & "+") 'String
  loc_11C25BE: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_11C25DA: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_11C25EA: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_11C25F9: var_D2 = arg_C
  loc_11C2602: If (var_D2 = 0) Then
  loc_11C260F:   global_52 = New rHallRepView
  loc_11C2622:   global_52.GRepFormName = "SalesRegister"
  loc_11C2633:   Set var_D8 = var_FC(arg_C)
  loc_11C2639:   Call 0.Method_Proc_1_113_11C29F80 (var_CC, var_D2)
  loc_11C2641:   MemVar_1F92200 = global_52.Menu.Caption
  loc_11C2653:   global_52.CAPTION = CVar(var_CC)
  loc_11C2669:   Call global_52.Show
  loc_11C2672: Else
  loc_11C2678:   If (var_D2 = 1) Then
  loc_11C2685:     global_52 = New rHallRepView
  loc_11C2698:     global_52.GRepFormName = "PartyOutStanding"
  loc_11C26A9:     Set var_D8 = var_FC(arg_C)
  loc_11C26AF:     Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C26B7:      = global_52.Menu.Caption
  loc_11C26C9:     global_52.CAPTION = CVar(var_CC)
  loc_11C26DF:     Call global_52.Show
  loc_11C26E8:   Else
  loc_11C26EE:     If (var_D2 = 2) Then
  loc_11C26FB:       global_52 = New rHallRepView
  loc_11C270E:       global_52.GRepFormName = "PartyWiseOutStanding"
  loc_11C271F:       Set var_D8 = var_FC(arg_C)
  loc_11C2725:       Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C272D:        = global_52.Menu.Caption
  loc_11C273F:       global_52.CAPTION = CVar(var_CC)
  loc_11C2755:       Call global_52.Show
  loc_11C275E:     Else
  loc_11C2764:       If (var_D2 = 3) Then
  loc_11C2771:         global_52 = New rHallRepView
  loc_11C2784:         global_52.GRepFormName = "CashierCollection"
  loc_11C2794:         global_52.CAPTION = "Cashier Report"
  loc_11C27A0:         Call global_52.Show
  loc_11C27A9:       Else
  loc_11C27AF:         If (var_D2 = 4) Then
  loc_11C27BC:           global_52 = New rHallRepView
  loc_11C27CF:           global_52.GRepFormName = "BookingDetail"
  loc_11C27E0:           Set var_D8 = var_FC(arg_C)
  loc_11C27E6:           Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C27EE:            = global_52.Menu.Caption
  loc_11C2800:           global_52.CAPTION = CVar(var_CC)
  loc_11C2816:           Call global_52.Show
  loc_11C281F:         Else
  loc_11C2825:           If (var_D2 = 5) Then
  loc_11C2832:             global_52 = New rHallRepView
  loc_11C2845:             global_52.GRepFormName = "SettleRepHall"
  loc_11C2856:             Set var_D8 = var_FC(arg_C)
  loc_11C285C:             Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C2864:              = global_52.Menu.Caption
  loc_11C2876:             global_52.CAPTION = CVar(var_CC)
  loc_11C288C:             Call global_52.Show
  loc_11C2895:           Else
  loc_11C289B:             If (var_D2 = 6) Then
  loc_11C28A8:               global_52 = New rHallRepView
  loc_11C28BB:               global_52.GRepFormName = "TaxReportHall"
  loc_11C28CC:               Set var_D8 = var_FC(arg_C)
  loc_11C28D2:               Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C28DA:                = global_52.Menu.Caption
  loc_11C28EC:               global_52.CAPTION = CVar(var_CC)
  loc_11C2902:               Call global_52.Show
  loc_11C290B:             Else
  loc_11C2911:               If (var_D2 = 7) Then
  loc_11C291E:                 global_52 = New rHallRepView
  loc_11C2931:                 global_52.GRepFormName = "DailyFuncSheet"
  loc_11C2942:                 Set var_D8 = var_FC(arg_C)
  loc_11C2948:                 Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C2950:                  = global_52.Menu.Caption
  loc_11C2962:                 global_52.CAPTION = CVar(var_CC)
  loc_11C2978:                 Call global_52.Show
  loc_11C2981:               Else
  loc_11C2987:                 If (var_D2 = 8) Then
  loc_11C2994:                   global_52 = New rHallRepView
  loc_11C29A7:                   global_52.GRepFormName = "CoverAnalysis"
  loc_11C29B8:                   Set var_D8 = var_FC(arg_C)
  loc_11C29BE:                   Call 0.Method_Proc_1_113_11C29F80 (var_CC)
  loc_11C29C6:                    = global_52.Menu.Caption
  loc_11C29D8:                   global_52.CAPTION = CVar(var_CC)
  loc_11C29EE:                   Call global_52.Show
  loc_11C29F4:                 End If
  loc_11C29F4:               End If
  loc_11C29F4:             End If
  loc_11C29F4:           End If
  loc_11C29F4:         End If
  loc_11C29F4:       End If
  loc_11C29F4:     End If
  loc_11C29F4:   End If
  loc_11C29F4: End If
  loc_11C29F4: Exit Sub
End Sub

Public Sub Proc_1_114_F83E78(arg_C) 'F83E78
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_CC As String
  Dim var_D2 As Integer
  loc_F83D33: var_B4 = CVar("BanqRepMIS1" & "+") 'String
  loc_F83D4E: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_F83D6A: var_CC = Proc_6_45_EAD428(MemVar_1F92078, 2)
  loc_F83D7A: Call 0.Method_arg_1C4 (var_CC & "ODC")
  loc_F83D89: var_D2 = arg_C
  loc_F83D92: If (var_D2 = 0) Then
  loc_F83D9F:   global_52 = New rHallRepView
  loc_F83DB2:   global_52.GRepFormName = "CashierCollectionMIS"
  loc_F83DC3:   Set var_D8 = var_FC(arg_C)
  loc_F83DC9:   Call 0.Method_Proc_1_114_F83E780 (var_CC, var_D2)
  loc_F83DD1:   MemVar_1F92200 = global_52.Menu.Caption
  loc_F83DE3:   global_52.CAPTION = CVar(var_CC)
  loc_F83DF9:   Call global_52.Show
  loc_F83E02: Else
  loc_F83E08:   If (var_D2 = 1) Then
  loc_F83E15:     global_52 = New rHallRepView
  loc_F83E28:     global_52.GRepFormName = "TaxSummaryHall"
  loc_F83E39:     Set var_D8 = var_FC(arg_C)
  loc_F83E3F:     Call 0.Method_Proc_1_114_F83E780 (var_CC)
  loc_F83E47:      = global_52.Menu.Caption
  loc_F83E59:     global_52.CAPTION = CVar(var_CC)
  loc_F83E6F:     Call global_52.Show
  loc_F83E75:   End If
  loc_F83E75: End If
  loc_F83E75: Exit Sub
End Sub

Public Sub Proc_1_115_DFC658
  'Data Table: 5C8378
  loc_DFC654: Exit Sub
  loc_DFC655: Exit Sub
End Sub

Public Sub Proc_1_116_12B3E7C
  'Data Table: 5C8378
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_128 As Recordset15
  loc_12B3855: If (global_100 = 0) Then
  loc_12B387C:   unk_5C83B4.Execute "SELECT * FROM ENVIRO WHERE SITECODE='" & MemVar_1F92078 & "'", var_B0, -1
  loc_12B3887:   Set var_88 = var_B4
  loc_12B38AB:   If (var_88.RecordCount > 0) Then
  loc_12B390E:     Me.PictMainMenu.Visible = CBool(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShowMenuBar")), &HFF) = "No"), False, True))
  loc_12B3986:     Me.PictSubMenu.Visible = CBool(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShowSubMenuBar"))) = "No"), False, True))
  loc_12B39FE:     Me.PictTitleBar.Visible = CBool(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShowTitleBar"))) = "No"), False, True))
  loc_12B3A62:     var_11C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShowShortCutsBar"))) = "Yes"), True, False)
  loc_12B3A76:     Me.PictShortCuts.Visible = CBool(var_11C)
  loc_12B3A96:   End If
  loc_12B3A96: End If
  loc_12B3AB1: If (Me.PictShortCuts.Visible = &HFF) Then
  loc_12B3AC7:   Me.ListView1.Width = CVar(CDbl(3120))
  loc_12B3AE2:   Me.TreeView1.Width = CVar(CDbl(3120))
  loc_12B3AFD:   Me.ListView1.Width = CVar(CDbl(3120))
  loc_12B3B14:   Me.PictShortCuts.Width = CDbl(3170)
  loc_12B3B31:   var_B8 = Me.PictShortCuts.Width
  loc_12B3B4A:   Set var_B4 = Me.PictSubMenu
  loc_12B3B5E:   Call 0.Method_arg_108 (var_B8, CInt(var_B8))
  loc_12B3B7A:   global_108 = CLng((((var_B8 * CDbl(&H41)) / CDbl(&H64)) - var_B4.Height))
  loc_12B3BA5:   var_EC = "Select * from UserMenu Where ucase(UserName)='" & Ucase(MemVar_1F920C8) 
  loc_12B3BBC:   MDIForm1.Connection15.Execute CStr(var_EC & "'"), var_11C, -1
  loc_12B3BC7:   Set var_128 = var_B4
  loc_12B3BEF:   If (var_128.RecordCount > 0) Then
  loc_12B3C01:     var_B4 = var_128.Fields
  loc_12B3C18:     Proc_6_39_E7C810(var_EC, CVar(var_B4.Item("MenuX")), var_B4)
  loc_12B3C57:     Proc_6_39_E7C810(var_EC, CVar(var_128.Fields.Item("MenuY")), CInt(var_EC))
  loc_12B3C7F:     var_B4 = var_128.Fields
  loc_12B3C8F:     var_B0 = CVar(var_B4.Item("MenuDisp")) 'Address
  loc_12B3C9E:     global_116 = Proc_6_38_E68A98(var_B0, CInt(var_EC), global_108)
  loc_12B3CAE:   Else
  loc_12B3CD2:     unk_5C83B4.Execute "SELECT * FROM ENVIRO WHERE SITECODE='" & MemVar_1F92078 & "'", var_B0, -1
  loc_12B3CDD:     Set var_88 = var_B4
  loc_12B3CF3:     var_B8 = var_88.RecordCount
  loc_12B3D01:     If (var_B8 > 0) Then
  loc_12B3D13:       var_B4 = var_88.Fields
  loc_12B3D2A:       Proc_6_39_E7C810(var_EC, CVar(var_B4.Item("MenuX")), var_B4)
  loc_12B3D36:       global_112 = CInt(var_EC)
  loc_12B3D69:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("MenuY")), global_112)
  loc_12B3D75:       global_114 = CInt(var_EC)
  loc_12B3DB0:       global_116 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuDisp")), global_114)
  loc_12B3DBD:     End If
  loc_12B3DBD:   End If
  loc_12B3DC6:   If (global_112 > 0) Then
  loc_12B3DDB:     Me.PictShortCuts.Width = CDbl(global_112)
  loc_12B3DE3:   End If
  loc_12B3DEC:   If (global_114 > 0) Then
  loc_12B3E0A:     Call 0.Method_arg_108 (var_B8, global_114)
  loc_12B3E26:     global_108 = CLng((((var_B8 * CDbl(global_114)) / CDbl(&H64)) - Me.PictSubMenu.Height))
  loc_12B3E2C:   End If
  loc_12B3E37:   If (global_116 = "Yes") Then
  loc_12B3E46:     Me.PictShortCuts.Visible = True
  loc_12B3E51:   Else
  loc_12B3E5D:     Me.PictShortCuts.Visible = False
  loc_12B3E65:   End If
  loc_12B3E6A:   Set var_88 = Nothing
  loc_12B3E72:   Set var_128 = Nothing
  loc_12B3E75: End If
  loc_12B3E75: Call Proc_1_126_106F648(global_108)
  loc_12B3E7A: Exit Sub
End Sub

Public Sub Proc_1_117_E009EC
  'Data Table: 5C8378
  loc_E009E5: global_52 = Nothing
  loc_E009E9: Exit Sub
End Sub

Public Sub Proc_1_118_11821FC
  'Data Table: 5C8378
  Dim var_8C As Menu
  Dim var_3E8 As Menu
  loc_1181EA1: For Each var_88 In MemVar_1F92244
  loc_1181EAE:   If TypeOf var_88 Is arg_E Then
  loc_1181EB7:     Set var_8C = var_88
  loc_1181ED6:     var_C4 = Ucase(CVar(var_8C.Caption)) 'Variant
  loc_1181EFF:     If Not (var_C4 = Ucase("&Finance")) Then
  loc_1181F24:       If Not (var_C4 = Ucase("&Main Setup")) Then
  loc_1181F49:         If Not (var_C4 = Ucase("Inventory")) Then
  loc_1181F6E:           If Not (var_C4 = Ucase("Members Mgmt")) Then
  loc_1181F93:             If Not (var_C4 = Ucase("House Keeping")) Then
  loc_1181FB8:               If Not (var_C4 = Ucase("Outdoor Banquet")) Then
  loc_1181FDD:                 If Not (var_C4 = Ucase("Banquet")) Then
  loc_1182002:                   If Not (var_C4 = Ucase("Point of Sale")) Then
  loc_1182027:                     If Not (var_C4 = Ucase("&Messaging")) Then
  loc_118204C:                       If Not (var_C4 = Ucase("Reservation")) Then
  loc_1182071:                         If Not (var_C4 = Ucase("Front Office")) Then
  loc_1182096:                           If Not (var_C4 = Ucase("Night Audit")) Then
  loc_11820BB:                             If Not (var_C4 = Ucase("HR/Payroll")) Then
  loc_11820E0:                               If Not (var_C4 = Ucase("Mall Mgmt")) Then
  loc_1182105:                                 If Not (var_C4 = Ucase("Epabx")) Then
  loc_118212A:                                   If (var_C4 = Ucase("Extras")) Then
  loc_118212D:                                   End If
  loc_118212D:                                 End If
  loc_118212D:                               End If
  loc_118212D:                             End If
  loc_118212D:                           End If
  loc_118212D:                         End If
  loc_118212D:                       End If
  loc_118212D:                     End If
  loc_118212D:                   End If
  loc_118212D:                 End If
  loc_118212D:               End If
  loc_118212D:             End If
  loc_118212D:           End If
  loc_118212D:         End If
  loc_118212D:       End If
  loc_1182132:       var_8C.Visible = False
  loc_1182137:     End If
  loc_1182137:   End If
  loc_1182140:   Set var_3E8 = Me.CmdSubMenu
  loc_1182146:   Call 0.Method_Proc_1_118_11821FC0 (0)
  loc_118214E:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_3EC)
  loc_118216B:   If (CStr() = ".") Then
  loc_118217C:     Set var_3E8 = Me.CmdSubMenu
  loc_1182182:     Call 0.Method_Proc_1_118_11821FC0 (0, var_3EC)
  loc_118218A:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1182199:   Else
  loc_11821A6:     Set var_3E8 = Me.CmdSubMenu
  loc_11821AC:     Call 0.Method_Proc_1_118_11821FC0 (0, var_3EC)
  loc_11821B4:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11821C0:   End If
  loc_11821C3: Next
  loc_11821DA: MemVar_1F92244.mnuMdI.Enabled = True
  loc_11821ED: Set var_3E8 = MemVar_1F92244.smnuMdI
  loc_11821F3: MDIForm1.smnuMdI.Enabled = True
  loc_11821FB: Exit Sub
End Sub

Public Sub Proc_1_119_11C9508
  'Data Table: 5C8378
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D4 As Variant
  Dim var_22C As Variant
  loc_11C9168: Set var_8C = Me.ListView1
  loc_11C916E: var_9C = var_8C.ListItems
  loc_11C917F: var_9C.Clear
  loc_11C91B7: var_B0 = "SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND [Option]<>'-' AND ShowInList='Y' ORDER BY OPT1,OPT2,OPT3,OPT4 "
  loc_11C91C0: unk_5C83B4.Execute var_B0, var_9C, -1
  loc_11C91CB: Set var_88 = var_8C
  loc_11C91DF: ' Referenced from: 11C948B
  loc_11C91EE: If Not(var_88.EOF) Then
  loc_11C9315:   var_A8 = Replace(CStr(Trim(CVar(var_88.Fields.Item("Option")))), "&", vbNullString, 1, -1, 0)
  loc_11C93D9:   var_104 = ("C" + Trim(Str(CVar(var_88.Fields.Item("Opt1")))))
  loc_11C93E0:   var_15C = (var_104 + Trim(Str(CVar(var_88.Fields.Item("Opt2")))))
  loc_11C93E7:   var_1B4 = (var_15C + Trim(Str(CVar(var_88.Fields.Item("Opt3")))))
  loc_11C93EB:   var_1C4 = "-"
  loc_11C93F0:   var_1D4 = (var_1B4 + var_1C4)
  loc_11C93F7:   var_22C = (var_1D4 + Trim(Str(CVar(var_88.Fields.Item("Code")))))
  loc_11C9419:   Me.ListView1.ListItems.Add var_3C8, var_22C, CVar("SELECT * FROM MENUHELP Where Flag<>'V' AND USERNAME='" & MemVar_1F920C8 & "' AND CompCode='"), IIf((var_88.Fields.Item("Flag").Value = "E"), "Frm", IIf((var_88.Fields.Item("Flag").Value = "R"), "Rep", "Open")), var_3F8
  loc_11C9486:   var_88.MoveNext
  loc_11C948B:   GoTo loc_11C91DF
  loc_11C948E: End If
  loc_11C94A2: If (var_88.RecordCount > 0) Then
  loc_11C94B8:   Me.mnuGrid.Row = 0
  loc_11C94C3: Else
  loc_11C94D6:   Me.mnuGrid.Row = 1
  loc_11C94DE: End If
  loc_11C94F1: Me.mnuGrid.Col = 1
  loc_11C94F9: Call mnuGrid_UnknownEvent_9()
  loc_11C9503: Set var_88 = Nothing
  loc_11C9506: Exit Sub
End Sub

Public Sub Proc_1_120_1208AAC
  'Data Table: 5C8378
  Dim var_90 As String
  Dim unk_5C83B4 As Connection15
  Dim var_86 As Integer
  Dim var_AC As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_C0 As Variant
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim var_F4 As Long
  Dim var_11C As Field20
  Dim var_13C As Variant
  Dim var_12C As Variant
  loc_1208618: var_90 = "Select [Option] Name,OPT1 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 And OPT3=0 And OPT4=0 And UserName='" & MemVar_1F920C8
  loc_1208636: unk_5C83B4.Execute var_90 & "' And CompCode='" & MemVar_1F92128 & "' Order By Code", var_BC, -1
  loc_1208641: Set var_8C = var_C0
  loc_1208657: var_86 = 0
  loc_120865E: Set var_C4 = Me.mnuGrid
  loc_120866D: var_C4.Cols = 2
  loc_120867E: var_C4.Rows = 0
  loc_1208683: var_AC = vbNullString
  loc_12086A6: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_12086AB: var_E4 = &H1C2
  loc_12086B7: LateIdCallSt
  loc_12086D4: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_12086D9: var_E4 = 0
  loc_12086E2: var_104 = "0"
  loc_12086EB: LateIdCallSt
  loc_1208708: var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_120870D: var_E4 = 1
  loc_1208716: var_104 = "Short Cut(s)"
  loc_120871F: LateIdCallSt
  loc_120872A: var_AC = 0
  loc_1208733: var_E4 = 0
  loc_120873F: LateIdCallSt
  loc_1208747: var_AC = 1
  loc_1208756: var_E4 = CVar(CInt(1)) 'Integer
  loc_120875D: LateIdCallSt
  loc_1208765: var_AC = 1
  loc_1208787: var_E4 = CVar(CLng((CDbl(Me.mnuGrid.Width) - CDbl(375)))) 'Long
  loc_120878F: LateIdCallSt
  loc_120879D: ' Referenced from: 1208A71
  loc_12087AC: If Not(var_8C.EOF) Then
  loc_12087AF:   var_AC = vbNullString
  loc_12087D2:   var_AC = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_12087D7:   var_E4 = &H1C2
  loc_12087E3:   LateIdCallSt
  loc_1208800:   var_D4 = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_1208805:   var_F4 = 0
  loc_1208839:   var_13C = CVar(CStr(var_8C.Fields.Item("Opt1").Value)) 'String
  loc_1208840:   LateIdCallSt
  loc_120886A:   var_D4 = CVar((CLng(var_C4.Rows) - 1)) 'Long
  loc_120886F:   var_F4 = 1
  loc_12088A3:   var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_12088AA:   LateIdCallSt
  loc_12088F0:   Set var_140 = Me.CmdMainMenu
  loc_12088F6:   Call 0.Method_Proc_1_120_1208AAC0 (var_86, var_144, CVar(var_8C.Fields.Item("Name")), var_C4, var_13C, var_F4, var_D4)
  loc_12088FE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_C4)
  loc_1208929:   var_11C = var_8C.Fields.Item("Opt1")
  loc_120893A:   var_12C = CVar(CStr(var_11C.Value)) 'String
  loc_1208948:   Set var_140 = Me.CmdMainMenu
  loc_120894E:   Call 0.Method_Proc_1_120_1208AAC0 (var_86, var_144, var_12C, var_13C, var_F4)
  loc_1208956:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_D4)
  loc_1208970:   var_8C.MoveNext
  loc_120897B:   var_86 = (var_86 + 1)
  loc_120898F:   If (var_8C.EOF = 0) Then
  loc_120899C:     Set var_C0 = Me.CmdMainMenu
  loc_12089A2:     Call 0.Method_Proc_1_120_1208AAC0 (var_86, var_11C, var_86)
  loc_12089B3:     Me.CmdMainMenu.Load var_11C
  loc_12089BF:     var_AC = True
  loc_12089CD:     Set var_C0 = Me.CmdMainMenu
  loc_12089D3:     Call 0.Method_Proc_1_120_1208AAC0 (var_86, var_11C, var_AC)
  loc_12089DB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_C4)
  loc_12089F4:     Set var_140 = Me.CmdMainMenu
  loc_12089FA:     Call 0.Method_Proc_1_120_1208AAC0 ((var_86 - 1), var_144)
  loc_1208A02:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_E4)
  loc_1208A18:     Set var_C0 = Me.CmdMainMenu
  loc_1208A1E:     Call 0.Method_Proc_1_120_1208AAC0 ((var_86 - 1), var_11C)
  loc_1208A26:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_AC)
  loc_1208A39:     var_AC = CVar(((CDbl() + CDbl(var_12C)) + CDbl(0))) 'Single
  loc_1208A48:     Set var_148 = Me.CmdMainMenu
  loc_1208A4E:     Call 0.Method_Proc_1_120_1208AAC0 (var_86, var_14C)
  loc_1208A56:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_AC)
  loc_1208A71:   End If
  loc_1208A71:   GoTo loc_120879D
  loc_1208A74: End If
  loc_1208A78: var_BC = CVar(Me.ImageList1) 'Address
  loc_1208A7D: VerifyVarObj
  loc_1208A89: LateIdStAd
  loc_1208A99: Set var_C4 = Nothing 
  loc_1208AA2: Set var_8C = Nothing
  loc_1208AA5: Call Proc_1_119_11C9508(Me.TreeView1)
  loc_1208AAA: Exit Sub
End Sub

Public Sub Proc_1_121_133085C(arg_C, arg_10, arg_14, arg_18) '133085C
  'Data Table: 5C8378
  Dim var_B0 As String
  Dim unk_5C83B4 As Connection15
  Dim var_86 As Integer
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_94 As Fields15
  Dim var_EC As Variant
  Dim var_A0 As Field20
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  loc_13300E4: Set var_94 = Me.CmdSubMenu
  loc_13300EA: Call 0.Method_Proc_1_121_133085CC (var_96, var_86)
  loc_13300F8: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_1330108:   Set var_94 = Me.CmdSubMenu
  loc_133010E:   Call 0.Method_Proc_1_121_133085C0 (var_86)
  loc_133011F:   Me.CmdSubMenu.Unload var_A0
  loc_133012E: Next var_9A 'Integer
  loc_1330139: If (arg_C <> 0) Then
  loc_1330181:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2<>" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_133019B: End If
  loc_13301A1: If (arg_10 <> 0) Then
  loc_13301E9:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3<>" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_1330203: End If
  loc_1330209: If (arg_14 <> 0) Then
  loc_1330251:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4<>" & CStr(arg_18)
  loc_133026B: End If
  loc_1330271: If (arg_18 <> 0) Then
  loc_13302B9:   var_8C = " And OPT1=" & CStr(arg_C) & " And OPT2=" & CStr(arg_10) & " And OPT3=" & CStr(arg_14) & " And OPT4=" & CStr(arg_18)
  loc_13302D3: End If
  loc_13302F5: var_B0 = "Select [Option] Name,Cast(Code As Varchar) CODE from MenuHelp Where Flag<>'V' " & var_8C & " And UserName='" & MemVar_1F920C8
  loc_1330313: unk_5C83B4.Execute var_B0 & "' And CompCode='" & MemVar_1F92128 & "'", var_EC, -1
  loc_133031E: Set var_90 = var_94
  loc_1330338: var_86 = 0
  loc_133033B: ' Referenced from: 1330847
  loc_133034A: If Not(var_90.EOF) Then
  loc_133037B:   Set var_A4 = Me.CmdSubMenu
  loc_1330381:   Call 0.Method_Proc_1_121_133085C0 (var_86, var_F0, CVar(var_90.Fields.Item("Name")))
  loc_1330389:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_86)
  loc_13303B4:   var_A0 = var_90.Fields.Item("Code")
  loc_13303C5:   var_110 = CVar(CStr(var_A0.Value)) 'String
  loc_13303D3:   Set var_A4 = Me.CmdSubMenu
  loc_13303D9:   Call 0.Method_Proc_1_121_133085C0 (var_86, var_F0)
  loc_13303E1:   Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_110)
  loc_13303FB:   var_90.MoveNext
  loc_1330406:   var_86 = (var_86 + 1)
  loc_133041A:   If (var_90.EOF = 0) Then
  loc_1330427:     Set var_94 = Me.CmdSubMenu
  loc_133042D:     Call 0.Method_Proc_1_121_133085C0 (var_86, var_A0)
  loc_133043E:     Me.CmdSubMenu.Load var_A0
  loc_1330457:     Set var_A4 = Me.CmdSubMenu
  loc_133045D:     Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1), var_F0)
  loc_1330465:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_1330493:     Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1), var_A0)
  loc_133049B:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.CmdSubMenu)
  loc_13304C3:     If (CSng((CDbl() + CDbl(var_110))) > Me.PictSubMenu.Width) Then
  loc_13304CF:       Set var_94 = Me.CmdSubMenu
  loc_13304D5:       Call 0.Method_Proc_1_121_133085C0 (0)
  loc_13304DD:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_13304F8:       Set var_A4 = Me.CmdSubMenu
  loc_13304FE:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1), var_F0)
  loc_1330506:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_1330526:       Set var_A4 = Me.CmdSubMenu
  loc_133052C:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_1330534:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_133054A:       Set var_94 = Me.CmdSubMenu
  loc_1330550:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_1330558:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_1330567:       var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_1330579:       Set var_114 = Me.CmdSubMenu
  loc_133057F:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1), var_11C)
  loc_1330587:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13305AF:       Set var_94 = Me.CmdSubMenu
  loc_13305B5:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_13305BD:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13305D5:       Set var_A4 = Me.CmdSubMenu
  loc_13305DB:       Call 0.Method_Proc_1_121_133085C0 (var_86, var_F0)
  loc_13305E3:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13305F9:     Else
  loc_1330606:       Set var_A4 = Me.CmdSubMenu
  loc_133060C:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_1330614:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F0)
  loc_133062A:       Set var_94 = Me.CmdSubMenu
  loc_1330630:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_1330638:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_1330647:       var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_1330656:       Set var_114 = Me.CmdSubMenu
  loc_133065C:       Call 0.Method_Proc_1_121_133085C0 (var_86, var_11C)
  loc_1330664:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_133068C:       Set var_94 = Me.CmdSubMenu
  loc_1330692:       Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_133069A:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13306B2:       Set var_A4 = Me.CmdSubMenu
  loc_13306B8:       Call 0.Method_Proc_1_121_133085C0 (var_86, var_F0)
  loc_13306C0:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_13306DD:       Set var_A4 = Me.CmdSubMenu
  loc_13306E3:       Call 0.Method_Proc_1_121_133085C0 (var_86)
  loc_13306EB:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F0)
  loc_1330710:       Set var_94 = Me.CmdSubMenu
  loc_1330716:       Call 0.Method_Proc_1_121_133085C0 (var_86)
  loc_133071E:       Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_1330746:       If (CSng((CDbl() + CDbl(var_110))) > Me.PictSubMenu.Width) Then
  loc_1330752:         Set var_94 = Me.CmdSubMenu
  loc_1330758:         Call 0.Method_Proc_1_121_133085C0 (0)
  loc_1330760:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_A0)
  loc_1330778:         Set var_A4 = Me.CmdSubMenu
  loc_133077E:         Call 0.Method_Proc_1_121_133085C0 (var_86, var_F0)
  loc_1330786:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_13307A6:         Set var_A4 = Me.CmdSubMenu
  loc_13307AC:         Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_13307B4:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_13307CA:         Set var_94 = Me.CmdSubMenu
  loc_13307D0:         Call 0.Method_Proc_1_121_133085C0 ((var_86 - 1))
  loc_13307D8:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_A0)
  loc_13307E7:         var_DC = CVar((CDbl() + CDbl(var_110))) 'Single
  loc_13307F6:         Set var_114 = Me.CmdSubMenu
  loc_13307FC:         Call 0.Method_Proc_1_121_133085C0 (var_86, var_11C)
  loc_1330804:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_133081F:       End If
  loc_133081F:     End If
  loc_133082D:     Set var_94 = Me.CmdSubMenu
  loc_1330833:     Call 0.Method_Proc_1_121_133085C0 (var_86, var_A0)
  loc_133083B:     Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1330847:   End If
  loc_1330847:   GoTo loc_133033B
  loc_133084A: End If
  loc_1330850: If (var_86 > 0) Then
  loc_1330853: End If
  loc_1330858: Set var_90 = Nothing
  loc_133085B: Exit Sub
End Sub

Public Sub Proc_1_122_107B0E4(arg_C) '107B0E4
  'Data Table: 5C8378
  Dim var_B4 As Variant
  Dim MemVar_1F92200 As String
  Dim var_C6 As Integer
  loc_107AE4F: var_B4 = CVar("Memb" & "+") 'String
  loc_107AE6A: MemVar_1F92200 = CStr(var_B4 & Trim(CVar(CStr(arg_C))))
  loc_107AE7C: var_C6 = arg_C
  loc_107AE85: If (var_C6 = 0) Then
  loc_107AE92:   global_52 = New MemVisitEntry
  loc_107AEA6:   Set var_CC = var_D0(arg_C)
  loc_107AEAC:   Call 0.Method_Proc_1_122_107B0E40 (var_D4, var_C6)
  loc_107AEB4:   MemVar_1F92200 = MemVisitEntry.Menu.Caption
  loc_107AEC6:   global_52.CAPTION = CVar(var_D4)
  loc_107AEDC:   Call global_52.Show
  loc_107AEE5: Else
  loc_107AEEB:   If (var_C6 = 1) Then
  loc_107AEF8:     global_52 = New MemRenewalEntry
  loc_107AF0C:     Set var_CC = var_D0(arg_C)
  loc_107AF12:     Call 0.Method_Proc_1_122_107B0E40 (var_D4)
  loc_107AF1A:      = MemRenewalEntry.Menu.Caption
  loc_107AF2C:     global_52.CAPTION = CVar(var_D4)
  loc_107AF42:     Call global_52.Show
  loc_107AF4B:   Else
  loc_107AF51:     If (var_C6 = 2) Then
  loc_107AF5E:       global_52 = New MemFacilityEntry
  loc_107AF72:       Set var_CC = var_D0(arg_C)
  loc_107AF78:       Call 0.Method_Proc_1_122_107B0E40 (var_D4)
  loc_107AF80:        = MemFacilityEntry.Menu.Caption
  loc_107AF92:       global_52.CAPTION = CVar(var_D4)
  loc_107AFA8:       Call global_52.Show
  loc_107AFB1:     Else
  loc_107AFB7:       If (var_C6 = 3) Then
  loc_107AFC4:         global_52 = New MemFacilityBilling
  loc_107AFD8:         Set var_CC = var_D0(arg_C)
  loc_107AFDE:         Call 0.Method_Proc_1_122_107B0E40 (var_D4)
  loc_107AFE6:          = MemFacilityBilling.Menu.Caption
  loc_107AFF8:         global_52.CAPTION = CVar(var_D4)
  loc_107B00E:         Call global_52.Show
  loc_107B017:       Else
  loc_107B01D:         If (var_C6 = 4) Then
  loc_107B02A:           global_52 = New MemBillPrintingModule
  loc_107B03E:           Set var_CC = var_D0(arg_C)
  loc_107B044:           Call 0.Method_Proc_1_122_107B0E40 (var_D4)
  loc_107B04C:            = MemBillPrintingModule.Menu.Caption
  loc_107B05E:           global_52.CAPTION = CVar(var_D4)
  loc_107B074:           Call global_52.Show
  loc_107B07D:         Else
  loc_107B083:           If (var_C6 = 5) Then
  loc_107B090:             global_52 = New MemAssistant
  loc_107B0A4:             Set var_CC = var_D0(arg_C)
  loc_107B0AA:             Call 0.Method_Proc_1_122_107B0E40 (var_D4)
  loc_107B0B2:              = MemAssistant.Menu.Caption
  loc_107B0C4:             global_52.CAPTION = CVar(var_D4)
  loc_107B0DA:             Call global_52.Show
  loc_107B0E0:           End If
  loc_107B0E0:         End If
  loc_107B0E0:       End If
  loc_107B0E0:     End If
  loc_107B0E0:   End If
  loc_107B0E0: End If
  loc_107B0E0: Exit Sub
End Sub

Public Sub Proc_1_123_12895E4
  'Data Table: 5C8378
  Dim var_98 As Menu
  Dim var_C0 As Variant
  Dim var_D8 As String
  Dim var_E0 As String
  Dim var_FC As String
  Dim unk_5C83B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As String
  Dim var_148 As Variant
  Dim var_AC As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  loc_1289079: For Each var_94 In MemVar_1F92244
  loc_1289086:   If TypeOf var_94 Is arg_E Then
  loc_128908F:     Set var_98 = var_94
  loc_12890A3:     If (var_98.Visible = &HFF) Then
  loc_12890F4:       If ((InStr(1, var_98.Caption, "&", 0) > 0) And (InStr(1, var_98.Caption, " & ", 0) <= 0)) Then
  loc_128911F:         var_A0 = Replace(var_98.Caption, "&", vbNullString, 1, -1, 0)
  loc_1289128:       Else
  loc_128912B:         var_C0 = var_94.CAPTION
  loc_1289131:         var_A0 = CStr(var_C0)
  loc_1289137:       End If
  loc_128913A:       Set var_C4 = var_98 
  loc_1289154:       Set var_98 = var_C4
  loc_1289160:       If (IsArray(var_C4) = &HFF) Then
  loc_12891A0:         var_E0 = "select MenuCaption AS  FORM_NAME from menuHelp1 WHERE MenuName='" & var_98.Name & "' And MenuIndex=" & CStr(var_98.Index)
  loc_12891D1:         var_FC = var_E0 & " And MenuCaption='" & var_A0 & "' And UserName='" & MemVar_1F920C8 & "' and (CompCode='" & MemVar_1F92128 & "' OR CompCode='"
  loc_12891E8:         unk_5C83B4.Execute var_FC & MemVar_1F92128 & " ')", var_C0, -1
  loc_12891F3:         Set var_88 = var_C4
  loc_128921E:       Else
  loc_1289252:         var_E0 = "select MenuCaption AS  FORM_NAME from menuHelp1 WHERE MenuName='" & var_98.Name & "' And MenuCaption='" & var_A0 & "' And UserName='"
  loc_1289285:         unk_5C83B4.Execute var_E0 & MemVar_1F920C8 & "' and (CompCode='" & MemVar_1F92128 & "' OR CompCode='" & MemVar_1F92128 & " ')", var_C0, -1
  loc_1289290:         Set var_88 = var_C4
  loc_12892B2:       End If
  loc_12892DD:       var_118 = "-"
  loc_12892F4:       If CBool((var_88.RecordCount > 0) And (Trim(var_A0) <> var_118)) Then
  loc_12892FC:         var_98.Visible = True
  loc_1289304:       Else
  loc_128930F:         var_C0 = Trim(var_A0)
  loc_1289317:         var_118 = "-"
  loc_1289322:         If CBool(var_C0 <> var_118) Then
  loc_1289328:           Set var_C4 = var_98 
  loc_1289342:           Set var_98 = var_C4
  loc_128934E:           If (IsArray(var_C4) = &HFF) Then
  loc_1289356:             var_98.Visible = False
  loc_128935E:           Else
  loc_1289363:             var_98.Enabled = False
  loc_1289368:           End If
  loc_1289368:         End If
  loc_1289368:       End If
  loc_1289368:     End If
  loc_1289368:   End If
  loc_128936D:   Set var_98 = Nothing
  loc_1289373: Next
  loc_128938D: var_AC = "SELECT Distinct Opt1 FROM menuHelp1 WHERE Opt1>0 AND Opt2=0 AND Opt3=0 AND Flag='V' AND UserName='SA' and CompCode='" & MemVar_1F92128
  loc_128939B: var_D8 = var_AC & "' " & "AND Opt1 NOT IN(SELECT Distinct Opt1 FROM menuHelp1 WHERE Opt1>0 AND Opt3=0 AND MenuIndex<0 AND  Flag='N' AND UserName='SA' and CompCode='"
  loc_12893B2: unk_5C83B4.Execute var_D8 & MemVar_1F92128 & "') ORDER By Opt1", var_C0, -1
  loc_12893BD: Set var_88 = var_C4
  loc_12893E7: If (var_88.RecordCount <= 0) Then
  loc_12893EA:   Exit Sub
  loc_12893EB:   ' Referenced from: 12895D7
  loc_12893EB: End If
  loc_12893FA: If Not(var_88.EOF) Then
  loc_1289442:   var_148 = "SELECT MenuCaption,MenuName,MenuIndex FROM menuHelp1 WHERE Opt1=" & var_88.Fields.Item("Opt1").Value & " AND Opt2=0 AND UserName='SA' and (CompCode='" 
  loc_1289471:   unk_5C83B4.Execute CStr(var_148 & CVar(MemVar_1F92128) & "' OR CompCode='" & CVar(MemVar_1F92128 & " ')")), var_1CC, -1
  loc_128947C:   Set var_8C = var_1D0
  loc_12894B2:   If (var_8C.RecordCount > 0) Then
  loc_12894BE:     For Each var_94 In MemVar_1F92244
  loc_12894CB:       If TypeOf var_94 Is arg_E Then
  loc_1289510:         If (var_94.Name = var_94.Recordset15.Fields.Item("menuNAME").Value) Then
  loc_128951B:           var_94.Visible = False
  loc_128956C:           var_128 = CVar(Replace(CStr(var_94.Recordset15.Fields.Item("MenuCaption").Value), "&", vbNullString, 1, -1, 0)) 'String
  loc_12895A5:           If (InStr(1, Ucase(var_94.Name), "EXIT", 0) > 0) Then
  loc_12895AF:             var_94.Visible = True
  loc_12895BA:             var_94.Enabled = True
  loc_12895BE:           End If
  loc_12895BE:         End If
  loc_12895BE:       End If
  loc_12895C1:     Next
  loc_12895CA:     var_8C.MoveNext
  loc_12895CF:   End If
  loc_12895D2:   var_88.MoveNext
  loc_12895D7:   GoTo loc_12893EB
  loc_12895DA: End If
  loc_12895DF: Set var_88 = Nothing
  loc_12895E2: Exit Sub
End Sub

Public Sub Proc_1_124_EE9F88(arg_C) 'EE9F88
  'Data Table: 5C8378
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE9EF6: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE9F15: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE9F38:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE9F54:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE9F5C:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE9F61:   var_8C = CStr(var_108)
  loc_EE9F75: Next var_B8 'Integer
  loc_EE9F7D: var_88 = var_8C
  loc_EE9F80: Proc_1_124_EE9F88 = 
End Sub

Public Sub Proc_1_125_EEDB5C(arg_C) 'EEDB5C
  'Data Table: 5C8378
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEDA9C: Do 'loop at: EEDB5A
  loc_EEDAA1: Randomize(var_B0)
  loc_EEDAC2: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEDAD2: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEDAEB: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEDB27:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEDB2F:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEDB34:   var_8C = CStr(var_10C)
  loc_EEDB48: Next var_B8 'Integer
  loc_EEDB50: var_88 = var_8C
  loc_EEDB53: Proc_1_125_EEDB5C = 
  loc_EEDB5A: Loop Until Not ( = ) 'do at: EEDA9C
End Sub

Public Sub Proc_1_126_106F648
  'Data Table: 5C8378
  Dim var_BC As Integer
  Dim var_C4 As Variant
  loc_106F3CF: If (Me.PictMainMenu.Visible = &HFF) Then
  loc_106F3D8:   var_BC = 6
  loc_106F3F8:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F400:   var_C4._ObjectDefault = var_C4
  loc_106F418: Else
  loc_106F424:   Me.PictMainMenu.Visible = False
  loc_106F432:   var_BC = 6
  loc_106F452:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F45A:   var_C4._ObjectDefault = var_C4
  loc_106F46F: End If
  loc_106F48A: If (Me.PictTitleBar.Visible = &HFF) Then
  loc_106F493:   var_BC = 7
  loc_106F4B3:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F4BB:   var_C4._ObjectDefault = var_C4
  loc_106F4D3: Else
  loc_106F4DF:   Me.PictTitleBar.Visible = False
  loc_106F4ED:   var_BC = 7
  loc_106F50D:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F515:   var_C4._ObjectDefault = var_C4
  loc_106F52A: End If
  loc_106F562: Set var_C4 = Me.PictTitleBar
  loc_106F57D: If (((Me.PictMainMenu.Visible = &HFF) Or (Me.PictSubMenu.Visible = &HFF)) Or (var_C4.Visible = &HFF)) Then
  loc_106F586:   var_BC = 8
  loc_106F5A6:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F5AE:   var_C4._ObjectDefault = var_C4
  loc_106F5C6: Else
  loc_106F5D2:   Me.PictMainMenu.Visible = False
  loc_106F5E6:   Me.PictSubMenu.Visible = False
  loc_106F5FA:   Me.PictTitleBar.Visible = False
  loc_106F608:   var_BC = 8
  loc_106F628:   var_BC = Me.sbar.Panels.ControlDefault
  loc_106F630:   var_C4._ObjectDefault = var_C4
  loc_106F645: End If
  loc_106F645: Exit Sub
End Sub
