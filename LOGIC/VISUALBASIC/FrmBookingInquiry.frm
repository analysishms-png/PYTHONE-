VERSION 5.00
Begin VB.Form FrmBookingInquiry
  Caption = "Booking Inquiry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 15000
  ClientHeight = 6615
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrmList
    Left = 16350
    Top = 5880
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 23
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = -465
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 24
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 18270
    Top = 6240
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGVenue
    Left = 16095
    Top = 3435
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGCity
    Left = 15705
    Top = 2475
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGSource
    Left = 14655
    Top = 1830
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
End
Begin DataGrid DGMarketSeg
  Left = 14910
  Top = 1290
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 26
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 15000
  Height = 450
  TabIndex = 58
End
Begin TextBox txt
  Index = 19
  ForeColor = &HFF0000&
  Left = 2940
  Top = 5145
  Width = 4305
  Height = 720
  TabIndex = 17
  BorderStyle = 0 'None
  MultiLine = -1  'True
  ScrollBars = 2
  MaxLength = 150
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin DataGrid DGFuncType
  Left = 15015
  Top = 735
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 28
End
Begin TextBox txt
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5880
  Top = 3885
  Width = 1365
  Height = 285
  Enabled = 0   'False
  TabIndex = 13
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1875
  Top = 8580
  Width = 1425
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 7
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1365
  Width = 4300
  Height = 285
  Enabled = 0   'False
  TabIndex = 2
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3570
  Width = 4300
  Height = 285
  TabIndex = 11
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3255
  Width = 4300
  Height = 285
  TabIndex = 10
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5520
  Top = 2940
  Width = 1725
  Height = 285
  Enabled = 0   'False
  TabIndex = 9
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2625
  Width = 1815
  Height = 285
  Enabled = 0   'False
  TabIndex = 6
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin PictureBox Picture2
  Picture = "FrmBookingInquiry.frx":0
  Left = 19275
  Top = 8505
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 34
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin PictureBox Picture4
  Picture = "FrmBookingInquiry.frx":34E
  Left = 19050
  Top = 8220
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 33
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1680
  Width = 4300
  Height = 285
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 40
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1995
  Width = 4300
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  MaxLength = 40
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2310
  Width = 4300
  Height = 285
  TabIndex = 5
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2940
  Width = 1815
  Height = 285
  Enabled = 0   'False
  TabIndex = 8
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5520
  Top = 2625
  Width = 1725
  Height = 285
  Enabled = 0   'False
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 16
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4830
  Width = 4300
  Height = 285
  TabIndex = 16
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4200
  Width = 4300
  Height = 285
  TabIndex = 14
  BorderStyle = 0 'None
  MaxLength = 20
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4515
  Width = 4300
  Height = 285
  TabIndex = 15
  BorderStyle = 0 'None
  MaxLength = 20
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1860
  Top = 8265
  Width = 1440
  Height = 285
  Enabled = 0   'False
  TabIndex = 18
  BorderStyle = 0 'None
  MaxLength = 9
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1050
  Width = 4300
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 40
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3885
  Width = 1365
  Height = 285
  Enabled = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin PictureBox Picture3
  Picture = "FrmBookingInquiry.frx":69C
  Left = 19515
  Top = 8250
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 20
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox txt
  Index = 18
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5160
  Top = 8565
  Width = 1860
  Height = 285
  Enabled = 0   'False
  TabIndex = 19
  BorderStyle = 0 'None
  MaxLength = 9
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox TxtGrid
  Index = 1
  BackColor = &HC0C0C0&
  ForeColor = &H80000012&
  Left = 8190
  Top = 1425
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 32
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
  BeginProperty Font
    Name = "Arial Narrow"
    Size = 6.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin MSHFlexGrid FGrid2
  Left = 2925
  Top = 5895
  Width = 4320
  Height = 2295
  TabIndex = 22
End
Begin MaskEdBox txtMEd
  Index = 0
  Left = 9675
  Top = 3090
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 31
End
Begin MSHFlexGrid FGrid
  Left = 7320
  Top = 1050
  Width = 7635
  Height = 3090
  TabIndex = 21
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 480
  Width = 180
  Height = 540
  TabIndex = 57
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
  AutoSize = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 19.5
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 12465
  Top = 8610
  Width = 2430
  Height = 285
  TabIndex = 56
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Times New Roman"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 12480
  Top = 8280
  Width = 2520
  Height = 255
  TabIndex = 55
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Times New Roman"
    Size = 11.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Remark"
  Index = 9
  ForeColor = &HFF0000&
  Left = 1215
  Top = 5130
  Width = 735
  Height = 240
  TabIndex = 54
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "City"
  Index = 1
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2310
  Width = 360
  Height = 240
  TabIndex = 53
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Shape Shape1
  Left = 7290
  Top = 4290
  Width = 4695
  Height = 4695
End
Begin Label Lbl
  Caption = "Expected Pax"
  Index = 12
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3885
  Width = 1320
  Height = 240
  TabIndex = 52
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Catering Type"
  Index = 0
  ForeColor = &H80&
  Left = 480
  Top = 8580
  Width = 1335
  Height = 240
  TabIndex = 51
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Party Name"
  Index = 2
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1365
  Width = 1110
  Height = 240
  TabIndex = 50
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Source"
  Index = 13
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4515
  Width = 675
  Height = 240
  TabIndex = 49
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Segment"
  Index = 14
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4200
  Width = 855
  Height = 240
  TabIndex = 48
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Address"
  Index = 5
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1680
  Width = 750
  Height = 240
  TabIndex = 47
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Phone"
  Index = 9
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2625
  Width = 615
  Height = 240
  TabIndex = 46
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Mobile No"
  Index = 3
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2940
  Width = 960
  Height = 240
  TabIndex = 45
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Fax No"
  Index = 4
  ForeColor = &HFF0000&
  Left = 4845
  Top = 2970
  Width = 675
  Height = 240
  TabIndex = 44
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Contact Person"
  Index = 10
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3255
  Width = 1440
  Height = 240
  TabIndex = 43
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Handled By"
  Index = 15
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4830
  Width = 1095
  Height = 240
  TabIndex = 42
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Status"
  Index = 16
  ForeColor = &H80&
  Left = 480
  Top = 8280
  Width = 585
  Height = 240
  TabIndex = 41
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Booked By"
  Index = 11
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3570
  Width = 1020
  Height = 240
  TabIndex = 40
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "(Res.)"
  Index = 17
  ForeColor = &HFF0000&
  Left = 1920
  Top = 2640
  Width = 525
  Height = 240
  TabIndex = 39
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "(Off.)"
  Index = 18
  ForeColor = &HFF0000&
  Left = 4815
  Top = 2640
  Width = 450
  Height = 240
  TabIndex = 38
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Function Type"
  Index = 7
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1050
  Width = 1350
  Height = 240
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Guranteed Pax"
  Index = 19
  ForeColor = &HFF0000&
  Left = 4335
  Top = 3885
  Width = 1440
  Height = 240
  TabIndex = 36
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Lbl
  Caption = "Creat By"
  Index = 20
  ForeColor = &H80&
  Left = 4230
  Top = 8565
  Width = 810
  Height = 240
  TabIndex = 35
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Image Pic1
  Left = 7305
  Top = 4290
  Width = 4695
  Height = 4695
  Stretch = -1  'True
End
End

Attribute VB_Name = "FrmBookingInquiry"

Private global_100 As Integer

Private Sub DGCity_UnknownEvent_9 'F46044
  'Data Table: 504C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45F3B: Me.DGCity.Visible = False
  loc_F45F5A: If (Me.RecordCount > 0) Then
  loc_F45F99:   Set var_B4 = Me.txt
  loc_F45F9F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(5), var_B8)
  loc_F45FA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F45FDA:   var_B0 = Me.Fields.Item("Code")
  loc_F45FF9:   Set var_B4 = Me.txt
  loc_F45FFF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(5), var_B8)
  loc_F46007:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4601D: End If
  loc_F46028: Set var_A8 = Me.txt
  loc_F4602E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(5))
  loc_F46036: var_B0.SetFocus
  loc_F46042: Exit Sub
End Sub

Private Sub Form_Load() '13147C8
  'Data Table: 504C54
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_AC As String
  Dim var_D8 As String
  Dim unk_504C5F As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_1314074: On Error Goto loc_1314782
  loc_1314081: Set var_A8 = Me.TopCtrl1
  loc_1314087: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1314095: Call 0.Method_arg_50 (var_AC)
  loc_131409D: var_BC = CVar(var_AC) 'String
  loc_13140A5: Set var_A8 = Me.TopCtrl1
  loc_13140AB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_BC)
  loc_13140C4: Set var_A8 = Me.txt
  loc_13140CA: Call 0.Method_Form_Load0 (CInt(&HE), var_C0)
  loc_13140E9: Me.DGMarketSeg.Left = CVar(var_C0.Left)
  loc_1314105: Set var_C8 = Me.txt
  loc_131410B: Call 0.Method_Form_Load0 (CInt(&HE), var_CC)
  loc_1314126: Set var_A8 = Me.txt
  loc_131412C: Call 0.Method_Form_Load0 (CInt(&HE), var_C0)
  loc_1314144: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_1314153: Me.DGMarketSeg.Top = CVar(var_C0.Left)
  loc_1314173: Set var_A8 = Me.txt
  loc_1314179: Call 0.Method_Form_Load0 (CInt(&HF), var_C0)
  loc_1314198: Me.DGSource.Left = CVar(var_C0.Left)
  loc_13141B4: Set var_C8 = Me.txt
  loc_13141BA: Call 0.Method_Form_Load0 (CInt(&HF), var_CC)
  loc_13141D5: Set var_A8 = Me.txt
  loc_13141DB: Call 0.Method_Form_Load0 (CInt(&HF), var_C0)
  loc_13141F3: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_1314202: Me.DGSource.Top = CVar(var_C0.Left)
  loc_1314222: Set var_A8 = Me.txt
  loc_1314228: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_1314247: Me.DGFuncType.Left = CVar(var_C0.Left)
  loc_1314263: Set var_C8 = Me.txt
  loc_1314269: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1314271: var_D0 = var_CC.Height
  loc_1314284: Set var_A8 = Me.txt
  loc_131428A: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_1314292: var_C4 = var_C0.Top
  loc_13142A2: var_94 = CVar(((var_C4 + var_D0) + CDbl(&H1E))) 'Single
  loc_13142B1: Me.DGFuncType.Top = CVar(var_C0.Left)
  loc_13142D8: If (global_52 = MemVar_1F92078 & "BANQ") Then
  loc_13142EF:   var_AC = "SELECT BI.Code As SearchCode,BI.Capacity AS Capacity,BI.*,B.Name As BussinessName,M.Name As MarketSegName,V.Name As VenueName,FT.Name As FunctionType,BI.logsite_code,BI.Site_code" & " FROM ((((BookingInquiry BI Left Join BussSource B On BI.BussSource=B.Code) Left Join MarketSeg M On BI.MarketSeg=M.Code) "
  loc_13142F6:   var_D8 = var_AC & " Left Join VenueMast V On BI.VenueCode=V.Code) Left Join FunctionType FT On BI.FuncType=FT.Code) where BI.LogSite_Code in ('"
  loc_131430D:   unk_504C5F.Execute var_D8 & MemVar_1F92078 & "')  and CatType='Indoor' ORDER BY BI.Code", var_BC, -1
  loc_131431E:   Set global_56 = var_A8
  loc_131433A: Else
  loc_131434E:   var_AC = "SELECT BI.Code As SearchCode,BI.Capacity AS Capacity, BI.*,B.Name As BussinessName,M.Name As MarketSegName,V.Name As VenueName,FT.Name As FunctionType,BI.logSite_Code,BI.Site_Code " & " FROM ((((BookingInquiry BI Left Join BussSource B On BI.BussSource=B.Code) Left Join MarketSeg M On BI.MarketSeg=M.Code) "
  loc_1314355:   var_D8 = var_AC & " Left Join VenueMast V On BI.VenueCode=V.Code) Left Join FunctionType FT On BI.FuncType=FT.Code) where BI.LogSite_Code in ('"
  loc_131436C:   unk_504C5F.Execute var_D8 & MemVar_1F92078 & "') and CatType='Outdoor' ORDER BY BI.Code", var_BC, -1
  loc_131437D:   Set global_56 = var_A8
  loc_1314396: End If
  loc_13143BA: unk_504C5F.Execute "Select Code,Name From VenueMast Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') Order by Name", var_BC, -1
  loc_13143CB: Set global_60 = var_A8
  loc_13143E9: CVarUnk
  loc_13143EE: VerifyVarObj
  loc_13143FA: LateIdStAd
  loc_131442C: unk_504C5F.Execute "Select Code,Name From MarketSeg Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') Order by Name", var_BC, -1
  loc_131443D: Set global_64 = Me.DGVenue
  loc_131445B: CVarUnk
  loc_1314460: VerifyVarObj
  loc_131446C: LateIdStAd
  loc_131449E: unk_504C5F.Execute "Select Code,Name From BussSource Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') Order by Name", var_BC, -1
  loc_13144CD: CVarUnk
  loc_13144D2: VerifyVarObj
  loc_13144D8: Set var_A8 = Me.DGSource
  loc_13144DE: LateIdStAd
  loc_1314508: Me.DGSource.CursorLocation = 3
  loc_1314532: var_BC = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') Order by CITYName") 'String
  loc_131453C: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_1314550: CVarUnk
  loc_1314555: VerifyVarObj
  loc_131455B: Set var_A8 = Me.DGCity
  loc_1314561: LateIdStAd
  loc_1314583: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_C4, Me.txt, New, 3, -1)
  loc_13145A2: Me.DGCity.Left = CVar(var_C4)
  loc_13145BE: Set var_C8 = Me.txt
  loc_13145C4: Call 0.Method_Form_Load0 (CInt(5), var_CC, var_D0, Me.DGMarketSeg, var_C0.Left)
  loc_13145CC: var_A8 = var_CC.Height
  loc_13145E5: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_C4)
  loc_13145ED: global_64 = var_C0.Top
  loc_13145F9: var_94 = CVar((var_C4 + var_D0)) 'Single
  loc_1314608: Me.DGCity.Top = CVar(var_C4)
  loc_131463E: unk_504C5F.Execute "Select Code,Name From FunctionType Where Status='Active' and LogSite_Code in ('" & MemVar_1F92078 & "','HO')  Order by Name", var_BC, -1
  loc_131466D: CVarUnk
  loc_1314672: VerifyVarObj
  loc_131467E: LateIdStAd
  loc_1314693: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Me.DGFuncType, Me.txt)
  loc_13146AB: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13146C6: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13146DD: Me.LblUser.Left = CDbl(13500)
  loc_13146F4: Me.LblUser.Top = CDbl(7800)
  loc_131470B: Me.LblLDt.Top = CDbl(8160)
  loc_1314722: Me.LblLDt.Left = CDbl(13500)
  loc_1314736: Set var_A8 = Me
  loc_131473F: var_AC = "INI"
  loc_131474D: Call Proc_120_54_EC92D8(Proc_5_1_100CB50(var_AC, var_A8, global_56), var_A8)
  loc_1314761: Call 0.Method_arg_160 (var_A8, var_A8)
  loc_131476F: Call 0.Method_arg_164 (var_A8)
  loc_1314777: Call Proc_120_49_135E324(var_A8)
  loc_131477C: Call Proc_120_56_14754F0()
  loc_1314781: Exit Sub
  loc_1314782: ' Referenced from: 1314074
  loc_131478A: Set var_A8 = Err()
  loc_1314790: Call 0.Method_arg_2C (var_AC)
  loc_13147B1: MsgBox(CVar(var_AC), &H40, "Information", var_104, var_124)
  loc_13147C4: Exit Sub
  loc_13147C5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED14F8
  'Data Table: 504C54
  Dim var_8C As Label
  loc_ED1456: Call 0.Method_arg_50 (var_88)
  loc_ED1468: Me.LblFormCaption.Caption = var_88
  loc_ED1481: Me.LblFormCaption.Left = CDbl(0)
  loc_ED148D: Set var_A0 = Me.TopCtrl1
  loc_ED1493: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED14A0: Set var_8C = Me.TopCtrl1
  loc_ED14A6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED14C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED14DB: Call 0.Method_arg_100 (var_B8)
  loc_ED14ED: Me.LblFormCaption.Width = var_B8
  loc_ED14F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E832CC
  'Data Table: 504C54
  loc_E83267: Set global_56 = Nothing
  loc_E83279: Set global_60 = Nothing
  loc_E8328B: Set global_64 = Nothing
  loc_E8329D: Set global_72 = Nothing
  loc_E832AF: Set global_76 = Nothing
  loc_E832C1: Set global_68 = Nothing
  loc_E832C8: Exit Sub
End Sub

Private Sub Form_Activate() 'E0008C
  'Data Table: 504C54
  loc_E00084: Call Proc_120_57_1466A20()
  loc_E00089: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E874FC
  'Data Table: 504C54
  loc_E87498: On Error Goto loc_E874B8
  loc_E874AF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E874B7: Exit Sub
  loc_E874B8: ' Referenced from: E87498
  loc_E874C0: Set var_88 = Err()
  loc_E874C6: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E874E7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E874FA: Exit Sub
  loc_E874FB: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FE09E8
  'Data Table: 504C54
  Dim var_92 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_FE0826: Set var_88 = Me.TxtGrid
  loc_FE082C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FE083A: Proc_6_74_E226B0(var_8C)
  loc_FE0849: var_92 = Index
  loc_FE0852: If (var_92 = 1) Then
  loc_FE0871:   Set var_8C = Me.FGrid
  loc_FE0889:   Set var_90 = Me.FGrid
  loc_FE08A7:   Set var_108 = Me.TxtGrid
  loc_FE08AD:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(var_90.TextMatrix)), CVar(CLng(var_8C.Col)))
  loc_FE08B5:   var_10C.Tag = CVar(CLng(Me.FGrid.RowSel))
  loc_FE08D3:   var_C4 = "MS Sans Serif"
  loc_FE08E5:   Set var_88 = Me.TxtGrid
  loc_FE08EB:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_FE08F3:   var_C4 = var_8C.Font
  loc_FE08FB:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_FE0916:   Set var_88 = Me.TxtGrid
  loc_FE091C:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(8))
  loc_FE0924:   var_8C.FontSize = var_92
  loc_FE0943:   var_114 = CLng(Me.FGrid.Col)
  loc_FE0953:   If (var_114 = CLng(2)) Then
  loc_FE0956:     var_C4 = "WINGDINGS"
  loc_FE0968:     Set var_88 = Me.TxtGrid
  loc_FE096E:     Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_FE0976:     var_C4 = var_8C.Font
  loc_FE097E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_FE0999:     Set var_88 = Me.TxtGrid
  loc_FE099F:     Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(&HE))
  loc_FE09A7:     var_8C.FontSize = var_114
  loc_FE09C3:     Me.FGrid.CellFontName = "WINGDINGS"
  loc_FE09DD:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_FE09E5:   End If
  loc_FE09E5: End If
  loc_FE09E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FCF664
  'Data Table: 504C54
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_FCF4AC: If (KeyCode = 1) Then
  loc_FCF4B9:   If (CLng(Shift) = &H1B) Then
  loc_FCF4C9:     Set var_8C = Me.TxtGrid
  loc_FCF4CF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_FCF4E9:     Set var_98 = Me.TxtGrid
  loc_FCF4EF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_FCF4F7:     var_9C.Text = var_90.Tag
  loc_FCF50E:     Set var_8C = Me.FGrid
  loc_FCF52B:     Set var_8C = Me.TxtGrid
  loc_FCF531:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_FCF539:     var_90.Visible = FGrid.DispID_8001
  loc_FCF545:     Exit Sub
  loc_FCF546:   End If
  loc_FCF559:   var_B0 = CLng(Me.FGrid.Col)
  loc_FCF569:   If (var_B0 = CLng(3)) Then
  loc_FCF576:     If (CLng(Shift) = &HD) Then
  loc_FCF57F:       Call Proc_120_50_1172594(KeyCode, var_B2)
  loc_FCF58A:       If (var_B2 = &HFF) Then
  loc_FCF5D0:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, 7)
  loc_FCF5E0:       End If
  loc_FCF5E0:     End If
  loc_FCF5E3:   Else
  loc_FCF5EA:     If (var_B0 = CLng(5)) Then
  loc_FCF5F7:       If (CLng(Shift) = &HD) Then
  loc_FCF600:         Call Proc_120_50_1172594(KeyCode, var_B2, 0, 4)
  loc_FCF60B:         If (var_B2 = &HFF) Then
  loc_FCF651:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, 7)
  loc_FCF661:         End If
  loc_FCF661:       End If
  loc_FCF661:     End If
  loc_FCF661:   End If
  loc_FCF661: End If
  loc_FCF661: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E99204
  'Data Table: 504C54
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A8 As MaskEdBox
  loc_E99190: If (Cancel = 1) Then
  loc_E991A6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E991B6:   If (var_A0 = CLng(5)) Then
  loc_E991B9:     GoTo loc_E991C6
  loc_E991BC:   End If
  loc_E991C3:   If (var_A0 = CLng(5)) Then
  loc_E991C6:     ' Referenced from: E991B9
  loc_E991C6:   End If
  loc_E991CC:   Call Proc_120_50_1172594(Cancel, var_A2)
  loc_E991E6:   Set var_8C = Me.txtMEd
  loc_E991EC:   Call 0.Method_TxtGrid_Validate0 (0, var_A8, False)
  loc_E991F4:   var_A8.Visible = Not(var_A2)
  loc_E99200: End If
  loc_E99200: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_9 'F46304
  'Data Table: 504C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F461FB: Me.DGFuncType.Visible = False
  loc_F4621A: If (Me.RecordCount > 0) Then
  loc_F46259:   Set var_B4 = Me.txt
  loc_F4625F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F46267:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4629A:   var_B0 = Me.Fields.Item("Code")
  loc_F462B9:   Set var_B4 = Me.txt
  loc_F462BF:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F462C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F462DD: End If
  loc_F462E8: Set var_A8 = Me.txt
  loc_F462EE: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1))
  loc_F462F6: var_B0.SetFocus
  loc_F46302: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA3EA0
  'Data Table: 504C54
  Dim var_A8 As Variant
  loc_EA3E20: Set var_88 = Me.DGFuncType
  loc_EA3E4A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3E52: Set var_BC = Me.DGFuncType
  loc_EA3E8E: Proc_6_138_106D6F8(Me.DGFuncType, global_76, CInt(1), Me.FGPoint)
  loc_EA3E9C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1383158
  'Data Table: 504C54
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_13828BE: Set var_88 = Me.txt
  loc_13828C4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13828D2: Proc_6_74_E226B0(var_8C)
  loc_13828DE: Call Proc_120_58_F6A08C(var_8C)
  loc_13828E6: var_92 = Index
  loc_13828F1: If (var_92 = CInt(5)) Then
  loc_138290B:   If (Me.RecordCount > 0) Then
  loc_1382919:     Set var_8C = Me.FGPoint
  loc_1382931:     Proc_6_137_1193554(Me.DGCity, global_68, Index)
  loc_138293F:   End If
  loc_138298D:   Set var_88 = Me.txt
  loc_1382993:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_138299B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13829B3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13829B6:     Exit Sub
  loc_13829B7:   End If
  loc_13829C4:   Set var_88 = Me.txt
  loc_13829CA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13829D2:   var_A0 = var_8C.Text
  loc_13829E4:   var_B0 = "Name"
  loc_1382A1F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1382A28:     Me.MoveFirst
  loc_1382A4B:     Set var_88 = Me.txt
  loc_1382A51:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1382A59:     0 = var_8C.Text
  loc_1382A72:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1382A87:   End If
  loc_1382A8A: Else
  loc_1382A92:   If (var_92 = CInt(&HE)) Then
  loc_1382AAC:     If (Me.RecordCount > 0) Then
  loc_1382ABA:       Set var_8C = Me.FGPoint
  loc_1382AD2:       Proc_6_137_1193554(Me.DGMarketSeg, global_64)
  loc_1382AE0:     End If
  loc_1382B2E:     Set var_88 = Me.txt
  loc_1382B34:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1382B3C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1382B54:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1382B64:       Set var_88 = Me.txt
  loc_1382B6A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382B72:       var_8C.Tag = vbNullString
  loc_1382B7E:       Exit Sub
  loc_1382B7F:     End If
  loc_1382B8C:     Set var_88 = Me.txt
  loc_1382B92:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382B9A:     var_A0 = var_8C.Text
  loc_1382BAC:     var_B0 = "Name"
  loc_1382BE7:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1382BF0:       Me.MoveFirst
  loc_1382C13:       Set var_88 = Me.txt
  loc_1382C19:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1382C21:       0 = var_8C.Text
  loc_1382C3A:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1382C4F:     End If
  loc_1382C52:   Else
  loc_1382C5A:     If (var_92 = CInt(&HF)) Then
  loc_1382C74:       If (Me.RecordCount > 0) Then
  loc_1382C82:         Set var_8C = Me.FGPoint
  loc_1382C9A:         Proc_6_137_1193554(Me.DGSource, global_72)
  loc_1382CA8:       End If
  loc_1382CF6:       Set var_88 = Me.txt
  loc_1382CFC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1382D04:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1382D1C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1382D2C:         Set var_88 = Me.txt
  loc_1382D32:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382D3A:         var_8C.Tag = vbNullString
  loc_1382D46:         Exit Sub
  loc_1382D47:       End If
  loc_1382D54:       Set var_88 = Me.txt
  loc_1382D5A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382D62:       var_A0 = var_8C.Text
  loc_1382D74:       var_B0 = "Name"
  loc_1382DAF:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1382DB8:         Me.MoveFirst
  loc_1382DDB:         Set var_88 = Me.txt
  loc_1382DE1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1382DE9:         0 = var_8C.Text
  loc_1382E02:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1382E17:       End If
  loc_1382E1A:     Else
  loc_1382E22:       If (var_92 = CInt(1)) Then
  loc_1382E3C:         If (Me.RecordCount > 0) Then
  loc_1382E4A:           Set var_8C = Me.FGPoint
  loc_1382E62:           Proc_6_137_1193554(Me.DGFuncType, global_76)
  loc_1382E70:         End If
  loc_1382EBE:         Set var_88 = Me.txt
  loc_1382EC4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1382ECC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1382EE4:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1382EF4:           Set var_88 = Me.txt
  loc_1382EFA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382F02:           var_8C.Tag = vbNullString
  loc_1382F0E:           Exit Sub
  loc_1382F0F:         End If
  loc_1382F1C:         Set var_88 = Me.txt
  loc_1382F22:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1382F2A:         var_A0 = var_8C.Text
  loc_1382F3C:         var_B0 = "Name"
  loc_1382F77:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1382F80:           Me.MoveFirst
  loc_1382FA3:           Set var_88 = Me.txt
  loc_1382FA9:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1382FB1:           0 = var_8C.Text
  loc_1382FCA:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1382FDF:         End If
  loc_1382FE2:       Else
  loc_1382FEA:         If (var_92 = CInt(0)) Then
  loc_1382FFA:           ReDim var_F0(0 To 1)
  loc_1383011:           var_F0(0) = "Indoor"
  loc_1383020:           var_F0(1) = "Outdoor"
  loc_1383037:           global_80 = Array(var_F0)
  loc_1383052:           CRefVarAry
  loc_1383089:           Set global_96 = Proc_6_66_EFF8FC(Me.ListView, Me.txt, Index)
  loc_138309D:         Else
  loc_13830A5:           If (var_92 = CInt(&H11)) Then
  loc_13830B5:             ReDim var_F0(0 To 1)
  loc_13830CC:             var_F0(0) = "Active"
  loc_13830DB:             var_F0(1) = "In Active"
  loc_138310D:             CRefVarAry
  loc_1383144:             Set global_96 = Proc_6_66_EFF8FC(Me.ListView, Me.txt, Index, Array(var_F0), CInt((UBound(Array(var_F0), 1) + 1)))
  loc_1383155:           End If
  loc_1383155:         End If
  loc_1383155:       End If
  loc_1383155:     End If
  loc_1383155:   End If
  loc_1383155: End If
  loc_1383155: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12EC298
  'Data Table: 504C54
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As DataGrid
  loc_12EBBF2: If (CLng(Shift) = &H1B) Then
  loc_12EBBF5:   Call Proc_120_58_F6A08C()
  loc_12EBBFA:   Exit Sub
  loc_12EBBFB: End If
  loc_12EBBFE: var_88 = KeyCode
  loc_12EBC09: If (var_88 = CInt(5)) Then
  loc_12EBC29:   Set var_9C = Me.FGPoint
  loc_12EBC5B:   Proc_6_79_11ACE04(Me.DGCity, Me.txt, CInt(5), global_68, Shift)
  loc_12EBCC8:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12EBCEE:     Proc_6_138_106D6F8(Me.DGCity, global_68, KeyCode, Me.FGPoint, &HFF)
  loc_12EBCFC:   End If
  loc_12EBCFF: Else
  loc_12EBD07:   If (var_88 = CInt(&HE)) Then
  loc_12EBD32:     Set var_9C = Nothing
  loc_12EBD60:     Proc_6_69_134A198(Me.DGMarketSeg, Me.txt, KeyCode, global_64, Shift, 0, 1)
  loc_12EBDCF:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12EBDD6:       Set var_9C = Me.DGMarketSeg
  loc_12EBDF5:       Proc_6_138_106D6F8(var_9C, global_64, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12EBE03:     End If
  loc_12EBE06:   Else
  loc_12EBE0E:     If (var_88 = CInt(1)) Then
  loc_12EBE67:       Proc_6_69_134A198(Me.DGFuncType, Me.txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_12EBED6:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12EBEFC:         Proc_6_138_106D6F8(Me.DGFuncType, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12EBF0A:       End If
  loc_12EBF0D:     Else
  loc_12EBF15:       If (var_88 = CInt(&HF)) Then
  loc_12EBF23:         Set var_AC = Me.txt
  loc_12EBF35:         Set var_A4 = Me.FGPoint
  loc_12EBF6E:         Proc_6_69_134A198(Me.DGSource, var_AC, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_12EBF8D:         var_B0 = Me.RecordCount
  loc_12EBFDD:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12EBFEB:           Set var_90 = Me.FGPoint
  loc_12EC003:           Proc_6_138_106D6F8(Me.DGSource, global_72, KeyCode, var_90, var_A4, 0)
  loc_12EC011:         End If
  loc_12EC014:       Else
  loc_12EC01C:         If Not (var_88 = CInt(0)) Then
  loc_12EC027:           If (var_88 = CInt(&H11)) Then
  loc_12EC02A:           End If
  loc_12EC04C:           Set var_8C = Me.txt
  loc_12EC052:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_12EC05A:           1 = var_90.Left
  loc_12EC06C:           Set var_9C = Me.txt
  loc_12EC072:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_12EC07A:           var_9C = var_A4.Top
  loc_12EC08C:           Set var_A8 = Me.txt
  loc_12EC092:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12EC09A:           0 = var_AC.Height
  loc_12EC0AC:           Set var_B4 = Me.txt
  loc_12EC0B2:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12EC0BA:           var_C4 = var_C0.Width
  loc_12EC102:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.txt, KeyCode, Shift, arg_14)
  loc_12EC126:         End If
  loc_12EC126:       End If
  loc_12EC126:     End If
  loc_12EC126:   End If
  loc_12EC126: End If
  loc_12EC1CD: If ((((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGVenue.Visible) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) And (CBool(Me.DGFuncType.Visible) = 0)) And (CBool(Me.DGSource.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12EC1E3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12EC1EC:     Proc_6_76_E52838(Shift, arg_14, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_12EC1F1:   End If
  loc_12EC20F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H13))) Then
  loc_12EC218:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_C4))
  loc_12EC21D:   End If
  loc_12EC23B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H13))) Then
  loc_12EC246:     Call Txt_Validate(KeyCode)
  loc_12EC25E:     Me.FGrid.Row = 1
  loc_12EC278:     Me.FGrid.Col = CVar(CLng(2))
  loc_12EC284:     Set var_8C = Me.FGrid
  loc_12EC295:   End If
  loc_12EC295: End If
  loc_12EC295: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10AE864
  'Data Table: 504C54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10AE58E: Proc_6_133_E7EF78(var_94)
  loc_10AE5A3: If (CInt(var_94) = &HD) Then
  loc_10AE5A8:   arg_10 = 0
  loc_10AE5AB: End If
  loc_10AE5AE: Proc_6_58_E054C0(arg_10, arg_10)
  loc_10AE5B6: var_96 = KeyAscii
  loc_10AE5C1: If (var_96 = CInt(1)) Then
  loc_10AE5E0:   If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_10AE60D:     Proc_6_89_146F1AC(Me.txt, KeyAscii, global_60, arg_10, "Name")
  loc_10AE63F:     Proc_6_138_106D6F8(Me.DGVenue, global_60, KeyAscii, Me.FGPoint)
  loc_10AE64D:   End If
  loc_10AE650: Else
  loc_10AE658:   If (var_96 = CInt(&HE)) Then
  loc_10AE677:     If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_10AE6A4:       Proc_6_89_146F1AC(Me.txt, KeyAscii, global_64, arg_10, "Name")
  loc_10AE6D6:       Proc_6_138_106D6F8(Me.DGMarketSeg, global_64, KeyAscii, Me.FGPoint, 0)
  loc_10AE6E4:     End If
  loc_10AE6E7:   Else
  loc_10AE6EF:     If (var_96 = CInt(&HF)) Then
  loc_10AE70E:       If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_10AE73B:         Proc_6_89_146F1AC(Me.txt, KeyAscii, global_72, arg_10, "Name")
  loc_10AE76D:         Proc_6_138_106D6F8(Me.DGSource, global_72, KeyAscii, Me.FGPoint, 0)
  loc_10AE77B:       End If
  loc_10AE77E:     Else
  loc_10AE786:       If (var_96 = CInt(1)) Then
  loc_10AE7A5:         If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_10AE7D2:           Proc_6_89_146F1AC(Me.txt, KeyAscii, global_76, arg_10, "Name")
  loc_10AE7EC:           Set var_A8 = Me.FGPoint
  loc_10AE804:           Proc_6_138_106D6F8(Me.DGFuncType, global_76, KeyAscii, var_A8, 0)
  loc_10AE812:         End If
  loc_10AE815:       Else
  loc_10AE81D:         If Not (var_96 = CInt(&HC)) Then
  loc_10AE828:           If (var_96 = CInt(&HD)) Then
  loc_10AE82B:           End If
  loc_10AE835:           Set var_9C = Me.txt
  loc_10AE83B:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10AE856:           Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_10AE862:         End If
  loc_10AE862:       End If
  loc_10AE862:     End If
  loc_10AE862:   End If
  loc_10AE862: End If
  loc_10AE862: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F315C0
  'Data Table: 504C54
  Dim var_86 As Integer
  loc_F314B3: var_86 = KeyCode
  loc_F314BE: If (var_86 = CInt(5)) Then
  loc_F314DD:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F314EA:     var_A4 = "Name"
  loc_F31509:     Proc_6_80_FF0AC0(Me.txt, CInt(5), global_68)
  loc_F3153B:     Proc_6_138_106D6F8(Me.DGCity, global_68, KeyCode, Me.FGPoint)
  loc_F31549:   End If
  loc_F3154C: Else
  loc_F31554:   If Not (var_86 = CInt(0)) Then
  loc_F3155F:     If (var_86 = CInt(&H11)) Then
  loc_F31562:     End If
  loc_F3157D:     If (Me.FrmList.Visible = &HFF) Then
  loc_F315AC:       Proc_6_64_F28E58(Me.ListView, Me.txt, KeyCode, Shift)
  loc_F315BC:     End If
  loc_F315BC:   End If
  loc_F315BC: End If
  loc_F315BC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E544
  'Data Table: 504C54
  loc_E4E522: Set var_88 = Me.txt
  loc_E4E528: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E536: Proc_6_73_E22704(var_8C)
  loc_E4E542: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D75C8
  'Data Table: 504C54
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B8 As TextBox
  loc_12D6F1B: var_86 = Cancel
  loc_12D6F26: If (var_86 = CInt(5)) Then
  loc_12D6F36:   Set var_8C = Me.txt
  loc_12D6F3C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D6F44:   var_94 = var_90.Text
  loc_12D6F5B:   If (var_94 = vbNullString) Then
  loc_12D6F6B:     Set var_8C = Me.txt
  loc_12D6F71:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D6F79:     var_90.Tag = vbNullString
  loc_12D6F85:     Exit Sub
  loc_12D6F86:   End If
  loc_12D6F9D:   If (Me.RecordCount <= 0) Then
  loc_12D6FA0:     Exit Sub
  loc_12D6FA1:   End If
  loc_12D6FA7:   Me.MoveFirst
  loc_12D6FCA:   Set var_8C = Me.txt
  loc_12D6FD0:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_12D6FD8:   0 = var_90.Text
  loc_12D6FF1:   Me.Find 1 & var_94 & "*'", var_B0, var_86
  loc_12D701D:   If (Me.AbsolutePosition > 0) Then
  loc_12D705B:     Set var_B4 = Me.txt
  loc_12D7061:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D7069:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D709C:     var_90 = Me.Fields.Item("Code")
  loc_12D70BA:     Set var_B4 = Me.txt
  loc_12D70C0:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D70C8:     var_B8.Tag = CStr(var_90.Value)
  loc_12D70DE:     GoTo loc_12D70E1
  loc_12D70E1:     ' Referenced from: 12D70DE
  loc_12D70E1:   End If
  loc_12D70E4: Else
  loc_12D70EC:   If (var_86 = CInt(&HE)) Then
  loc_12D713D:     Set var_8C = Me.txt
  loc_12D7143:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D7163:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D7173:       Set var_8C = Me.txt
  loc_12D7179:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D7181:       var_90.Tag = vbNullString
  loc_12D718D:       Exit Sub
  loc_12D718E:     End If
  loc_12D71C9:     Set var_B4 = Me.txt
  loc_12D71CF:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D71D7:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D720A:     var_90 = Me.Fields.Item("Code")
  loc_12D7228:     Set var_B4 = Me.txt
  loc_12D722E:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D7236:     var_B8.Tag = CStr(var_90.Value)
  loc_12D724F:   Else
  loc_12D7257:     If (var_86 = CInt(&HF)) Then
  loc_12D72A8:       Set var_8C = Me.txt
  loc_12D72AE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D72CE:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D72DE:         Set var_8C = Me.txt
  loc_12D72E4:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D72EC:         var_90.Tag = vbNullString
  loc_12D72F8:         Exit Sub
  loc_12D72F9:       End If
  loc_12D7334:       Set var_B4 = Me.txt
  loc_12D733A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D7342:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D7375:       var_90 = Me.Fields.Item("Code")
  loc_12D7393:       Set var_B4 = Me.txt
  loc_12D7399:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D73A1:       var_B8.Tag = CStr(var_90.Value)
  loc_12D73BA:     Else
  loc_12D73C2:       If (var_86 = CInt(1)) Then
  loc_12D7413:         Set var_8C = Me.txt
  loc_12D7419:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D7439:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D7449:           Set var_8C = Me.txt
  loc_12D744F:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D7457:           var_90.Tag = vbNullString
  loc_12D7463:           Exit Sub
  loc_12D7464:         End If
  loc_12D749F:         Set var_B4 = Me.txt
  loc_12D74A5:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D74AD:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D74E0:         var_90 = Me.Fields.Item("Code")
  loc_12D74FE:         Set var_B4 = Me.txt
  loc_12D7504:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D750C:         var_B8.Tag = CStr(var_90.Value)
  loc_12D7525:       Else
  loc_12D752D:         If Not (var_86 = CInt(0)) Then
  loc_12D7538:           If (var_86 = CInt(&H11)) Then
  loc_12D753B:           End If
  loc_12D7548:           Set var_8C = Me.txt
  loc_12D754E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D756D:           If (var_90.Text <> vbNullString) Then
  loc_12D75A0:             Set var_B4 = Me.txt
  loc_12D75A6:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D75AE:             var_B8.Text = Me.ListView.SelectedItem.Text
  loc_12D75C4:           End If
  loc_12D75C4:         End If
  loc_12D75C4:       End If
  loc_12D75C4:     End If
  loc_12D75C4:   End If
  loc_12D75C4: End If
  loc_12D75C4: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '119130C
  'Data Table: 504C54
  Dim var_A8 As Variant
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_90 As Variant
  Dim var_13C As Variant
  Dim var_164 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_504C5F As Connection15
  Dim var_8C As Recordset15
  Dim var_19C As Long
  loc_1190F3C: Set var_90 = Me.TopCtrl1
  loc_1190F42: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1190F5B: If (CStr() = "Browse") Then
  loc_1190F5E:   Exit Sub
  loc_1190F5F: End If
  loc_1190F63: Set var_A8 = Me.FGrid2
  loc_1190F72: var_B8 = CVar(CLng(var_A8.RowSel)) 'Long
  loc_1190F7A: var_D8 = CVar(CLng(2)) 'Long
  loc_1190FAE: If CBool(Trim(CVar(CStr(var_A8.TextMatrix)))) <> vbNullString) Then
  loc_1190FC4:   var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_1190FCC:   var_D8 = CVar(CLng(0)) 'Long
  loc_1190FFA:   var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_1191002:   var_164 = CVar(CLng(2)) 'Long
  loc_1191011:   var_118 = Me.FGrid2.TextMatrix)
  loc_1191058:   var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_1191062:   Me.var_118.Open var_138, CVar(MemVar_1F92044), 2
  loc_11910BD:   If IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) Then
  loc_11910D2:     Me.Pic1.Picture = Nothing
  loc_11910DE:   End If
  loc_11910E7:   unk_504C5F.BeginTrans var_198
  loc_1191103:   If (Me.Recordset15.RecordCount > 0) Then
  loc_119111C:     Set var_13C = var_8C 
  loc_119112C:     Proc_142_1_F33768(Me.Pic1, var_13C, "PicPath", 3, -1, var_118, var_164)
  loc_1191137:     Set var_8C = var_13C
  loc_1191146:   End If
  loc_119114C:   var_8C.Close
  loc_1191157:   unk_504C5F.CommitTrans
  loc_119115F: Else
  loc_1191171:   Me.Pic1.Picture = Nothing
  loc_119117D: End If
  loc_1191192: var_A8.Tag = CVar(CStr(CLng(Pic1.DispID_C)))
  loc_11911AD: var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_11911B5: var_D8 = CVar(CLng(2)) 'Long
  loc_11911EC: If (Trim(CVar(CStr(Pic1.DispID_41))) = vbNullString) Then
  loc_11911EF:   Exit Sub
  loc_11911F0: End If
  loc_11911FC: var_19C = CLng(Pic1.DispID_B)
  loc_1191209: If (var_19C = CLng(1)) Then
  loc_119124C:   If (CStr(Pic1.DispID_41) = vbNullString) Then
  loc_1191252:     var_A0 = var_A8.Tag
  loc_119126E:     Call Proc_120_53_FFCAFC(CInt(CStr(var_A0)), CInt(1), var_A0, CVar(CLng(1)), CVar(CLng(CStr(var_A8.Tag))), var_19C, CVar(CLng(1)))
  loc_1191288:     var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_1191290:     var_D8 = CVar(CLng(1)) 'Long
  loc_1191295:     var_128 = "ü"
  loc_119129E:     LateIdCallSt
  loc_11912AF:   Else
  loc_11912BE:     var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_11912C6:     var_D8 = CVar(CLng(1)) 'Long
  loc_11912CB:     var_128 = vbNullString
  loc_11912D4:     LateIdCallSt
  loc_11912E2:     var_B8 = &HE0E0E0
  loc_11912F3:   End If
  loc_11912F3:   var_B8 = &HE0E0E0
  loc_1191304: End If
  loc_1191306: Set var_A8 = Nothing 
  loc_119130A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '1037A00
  'Data Table: 504C54
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  loc_10377BC: Set var_88 = Me.TopCtrl1
  loc_10377C2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1037807: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1037810:   Call Form_KeyDown(Cancel, arg_10)
  loc_1037815: End If
  loc_1037819: Set var_88 = Me.TopCtrl1
  loc_103781F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1037838: If (CStr() = "Browse") Then
  loc_103783B:   Exit Sub
  loc_103783C: End If
  loc_10378B0: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - (CLng(Me.FGrid2.Rows) - 1))))) Then
  loc_10378BB:   var_9C = "+{Tab}"
  loc_10378C1:   Proc_303_0_FB9B68(CStr(Me.FGrid2.Tag), 0)
  loc_10378CB:   Cancel = 0
  loc_10378D1: Else
  loc_10378DB:   var_B0 = Me.FGrid2.Rows
  loc_1037928:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1037939:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1037943:     Cancel = 0
  loc_1037946:   End If
  loc_1037946: End If
  loc_1037969: Me.FGrid2.Tag = CVar(CStr(CLng(Me.FGrid2.Row)))
  loc_10379A4: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_10379A7:   Call FGrid2_UnknownEvent_9()
  loc_10379AC: End If
  loc_10379DF: If (((CLng(Me.FGrid2.Col) <> CLng(1)) And (CLng(Cancel) = &H26)) Or (CLng(Cancel) = &H28)) Then
  loc_10379E2:   Call FGrid2_UnknownEvent_9()
  loc_10379E7: End If
  loc_10379ED: If (Cancel = &HD) Then
  loc_10379F5:   global_100 = 0
  loc_10379F8: End If
  loc_10379FA: Cancel = 0
  loc_10379FD: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_C 'E4FD40
  'Data Table: 504C54
  Dim var_8C As TextBox
  loc_E4FD16: If (Cancel = &HD) Then
  loc_E4FD24:   Set var_88 = Me.txt
  loc_E4FD2A:   Call 0.Method_FGrid2_UnknownEvent_C0 (CInt(1))
  loc_E4FD32:   var_8C.SetFocus
  loc_E4FD3E: End If
  loc_E4FD3E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E84520
  'Data Table: 504C54
  loc_E844CC: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_E844CF:   Call DGMarketSeg_UnknownEvent_9()
  loc_E844D4: End If
  loc_E844F0: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_E844F3:   Call DGFuncType_UnknownEvent_9()
  loc_E844F8: End If
  loc_E84514: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_E84517:   Call DGSource_UnknownEvent_9()
  loc_E8451C: End If
  loc_E8451C: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_0 'F1C424
  'Data Table: 504C54
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_10C As MaskEdBox
  Dim var_130 As Long
  loc_F1C33C: Call Proc_120_58_F6A08C()
  loc_F1C34D: If (Cancel = 0) Then
  loc_F1C363:   var_C0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F1C372:   var_B0 = Me.FGrid.ColSel
  loc_F1C3A3:   Set var_108 = Me.txtMEd
  loc_F1C3A9:   Call 0.Method_txtMEd_UnknownEvent_00 (Cancel, var_10C, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F1C3B1:   var_10C.Tag = CVar(CLng(var_B0))
  loc_F1C3E1:   var_130 = CLng(Me.FGrid.Col)
  loc_F1C3F1:   If Not (var_130 = CLng(4)) Then
  loc_F1C3FB:     If (var_130 = CLng(6)) Then
  loc_F1C3FE:     End If
  loc_F1C407:     If (global_100 = 0) Then
  loc_F1C412:       var_134 = "{Home}+{End}"
  loc_F1C418:       Proc_303_0_FB9B68(var_134, 0, var_130)
  loc_F1C420:     End If
  loc_F1C420:   End If
  loc_F1C420: End If
  loc_F1C420: Exit Sub
  loc_F1C421: var_B01 = var_C0
End Sub

Private Sub txtMEd_UnknownEvent_8 'E21450
  'Data Table: 504C54
  Dim arg_10 As Integer
  loc_E21438: If (Cancel = 0) Then
  loc_E21441:   Call Proc_120_52_119EB30(Cancel, var_88)
  loc_E2144A:   arg_10 = Not(var_88)
  loc_E2144D: End If
  loc_E2144D: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_B '106C8E4
  'Data Table: 504C54
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C4 As Long
  loc_106C660: If (Cancel = 0) Then
  loc_106C66D:   If (CLng(arg_10) = &H1B) Then
  loc_106C674:     Set var_8C = Me.FGrid
  loc_106C694:     Set var_8C = Me.txtMEd
  loc_106C69A:     Call 0.Method_txtMEd_UnknownEvent_B0 (Cancel, var_90, False)
  loc_106C6A2:     var_90.Visible = FGrid.DispID_8001
  loc_106C6AE:     Exit Sub
  loc_106C6AF:   End If
  loc_106C6C2:   var_C4 = CLng(Me.FGrid.Col)
  loc_106C6D2:   If (var_C4 = CLng(4)) Then
  loc_106C715:     If ((CLng(arg_10) = &HD) Or (((((CLng(arg_10) = &H25) Or (CLng(arg_10) = &H27)) Or (CLng(arg_10) = &H26)) Or (CLng(arg_10) = &H28)) And (global_100 = &HFF))) Then
  loc_106C71E:       Call Proc_120_52_119EB30(Cancel, var_C6)
  loc_106C729:       If (var_C6 = &HFF) Then
  loc_106C737:         Set var_8C = Me.TxtGrid
  loc_106C73D:         Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_106C745:         var_90.Visible = var_C4
  loc_106C785:         Set var_90 = Me.txtMEd
  loc_106C794:         Proc_6_62_1253BC4(Me.FGrid, var_90, Cancel, arg_10, global_100)
  loc_106C7A4:       End If
  loc_106C7A4:     End If
  loc_106C7A7:   Else
  loc_106C7AE:     If (var_C4 = CLng(6)) Then
  loc_106C7F1:       If ((CLng(arg_10) = &HD) Or (((((CLng(arg_10) = &H25) Or (CLng(arg_10) = &H27)) Or (CLng(arg_10) = &H26)) Or (CLng(arg_10) = &H28)) And (global_100 = &HFF))) Then
  loc_106C7FA:         Call Proc_120_52_119EB30(Cancel, var_C6, 7, 0)
  loc_106C805:         If (var_C6 = &HFF) Then
  loc_106C813:           Set var_8C = Me.TxtGrid
  loc_106C819:           Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_106C821:           var_90.Visible = True
  loc_106C870:           Proc_6_62_1253BC4(Me.FGrid, Me.txtMEd, Cancel, arg_10, global_100, 7)
  loc_106C899:           var_A0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106C8A2:           Set var_90 = Me.FGrid
  loc_106C8A8:           var_90.Row = False
  loc_106C8BA:         Else
  loc_106C8C4:           Set var_8C = Me.txtMEd
  loc_106C8CA:           Call 0.Method_txtMEd_UnknownEvent_B0 (Cancel, var_90, 1, 2)
  loc_106C8E1:         End If
  loc_106C8E1:       End If
  loc_106C8E1:     End If
  loc_106C8E1:   End If
  loc_106C8E1: End If
  loc_106C8E1: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F474E4
  'Data Table: 504C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F473DB: Me.DGMarketSeg.Visible = False
  loc_F473FA: If (Me.RecordCount > 0) Then
  loc_F47439:   Set var_B4 = Me.txt
  loc_F4743F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F47447:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4747A:   var_B0 = Me.Fields.Item("Code")
  loc_F47499:   Set var_B4 = Me.txt
  loc_F4749F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F474A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F474BD: End If
  loc_F474C8: Set var_A8 = Me.txt
  loc_F474CE: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE))
  loc_F474D6: var_B0.SetFocus
  loc_F474E2: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA4AE0
  'Data Table: 504C54
  Dim var_A8 As Variant
  loc_EA4A60: Set var_88 = Me.DGMarketSeg
  loc_EA4A8A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4A92: Set var_BC = Me.DGMarketSeg
  loc_EA4ACE: Proc_6_138_106D6F8(Me.DGMarketSeg, global_64, CInt(&HE), Me.FGPoint)
  loc_EA4ADC: Exit Sub
  loc_EA4ADD: arg_2102 = DGMarketSeg.DispID_1B
End Sub

Private Sub FGrid_UnknownEvent_0 'E35714
  'Data Table: 504C54
  Dim var_8C As TextBox
  loc_E356F7: Set var_88 = Me.TxtGrid
  loc_E356FD: Call 0.Method_FGrid_UnknownEvent_00 (1, var_8C)
  loc_E35705: var_8C.Visible = False
  loc_E35711: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '136E7E8
  'Data Table: 504C54
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_120 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_11A As Integer
  Dim var_88 As Variant
  Dim var_114 As Variant
  Dim unk_504C5F As Connection15
  Dim var_118 As Recordset15
  Dim var_19C As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim FGrid_UnknownEvent_94 As Variant
  loc_136DF98: Set var_88 = Me.TopCtrl1
  loc_136DF9E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_136DFB7: If (CStr() = "Browse") Then
  loc_136DFBA:   Exit Sub
  loc_136DFBB: End If
  loc_136DFBF: Set var_A0 = Me.FGrid
  loc_136DFDB: If (CLng(var_A0.Col) = CLng(2)) Then
  loc_136DFEA:   var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_136DFF2:   var_D4 = CVar(CLng(2)) 'Long
  loc_136E017:   If (CStr(var_A0.TextMatrix)) = vbNullString) Then
  loc_136E026:     var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_136E02E:     var_D4 = CVar(CLng(2)) 'Long
  loc_136E033:     var_104 = "ü"
  loc_136E03C:     LateIdCallSt
  loc_136E04A:   Else
  loc_136E056:     var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_136E05E:     var_D4 = CVar(CLng(2)) 'Long
  loc_136E063:     var_104 = vbNullString
  loc_136E06C:     LateIdCallSt
  loc_136E077:   End If
  loc_136E077: End If
  loc_136E079: Set var_A0 = Nothing 
  loc_136E081: Set var_120 = Me.FGrid2
  loc_136E09F: For var_124 = 1 To CInt((CLng(var_120.Rows) - 1)): var_11A = var_124 'Integer
  loc_136E0B1:   var_120.Row = CVar(CLng(var_11A))
  loc_136E0D1:   For var_128 = 0 To CInt((CLng(var_120.Cols) - 1)): var_11C = var_128 'Integer
  loc_136E0E3:     var_120.Col = CVar(CLng(var_11C))
  loc_136E123:     If (((CLng(var_120.Col) = CLng(1)) Or (CLng(var_120.Col) = CLng(3))) Or (CLng(var_120.Col) = CLng(5))) Then
  loc_136E12F:       var_120.CellFontName = "wingdings"
  loc_136E13F:       var_120.CellFontSize = CVar(CDbl(&H12))
  loc_136E150:       var_120.CellForeColor = &HFF0000
  loc_136E159:       var_B4 = CVar(CLng(var_11A)) 'Long
  loc_136E162:       var_D4 = CVar(CLng(var_11C)) 'Long
  loc_136E167:       var_104 = vbNullString
  loc_136E170:       LateIdCallSt
  loc_136E178:     End If
  loc_136E17B:   Next var_128 'Integer
  loc_136E183: Next var_124 'Integer
  loc_136E18A: Set var_120 = Nothing 
  loc_136E190: var_11A = 0
  loc_136E1A6: var_B4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_136E1AE: var_D4 = CVar(CLng(7)) 'Long
  loc_136E1FF: unk_504C5F.Execute CStr("Select * FROM VenueCapacity Where VenueCode='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_18C, -1
  loc_136E20A: Set var_118 = var_190
  loc_136E23E: var_114 = (var_118.RecordCount > 0)
  loc_136E255: var_B4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_136E2A9: If CBool(CVar(CLng(2)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_136E2BC:   Me.FGrid2.Tag = vbNullString
  loc_136E2C4:   ' Referenced from: 136E5AD
  loc_136E2D3:   If Not(var_118.EOF) Then
  loc_136E2DC:     var_11A = (var_11A + 1)
  loc_136E2E3:     Set var_19C = Me.FGrid2
  loc_136E2F1:     var_19C.Col = CVar(CLng(1))
  loc_136E2FF:     var_19C.CellFontName = "wingdings"
  loc_136E30F:     var_19C.CellFontSize = CVar(CDbl(&H12))
  loc_136E320:     var_19C.CellForeColor = &HFF0000
  loc_136E329:     var_C4 = CVar(CLng(var_11A)) 'Long
  loc_136E331:     var_E4 = CVar(CLng(0)) 'Long
  loc_136E361:     var_F4 = CVar(CStr(var_118.Fields.Item("Venuecode").Value)) 'String
  loc_136E368:     LateIdCallSt
  loc_136E3B7:     var_F4 = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Capacity")), CVar(CLng(2)), CVar(CLng(var_11A)), var_19C, var_F4, CVar(CLng(2)), CVar(CLng(var_11A)))) 'String
  loc_136E3BE:     LateIdCallSt
  loc_136E407:     Proc_6_48_EF4270(var_F4, CVar(var_118.Fields.Item("Seating")), CVar(CLng(4)), CVar(CLng(var_11A)), var_19C, var_F4)
  loc_136E417:     LateIdCallSt
  loc_136E462:     Proc_6_48_EF4270(var_F4, CVar(var_118.Fields.Item("Floating")), CVar(CLng(6)), CVar(CLng(var_11A)), var_19C, CVar(CStr(var_F4)))
  loc_136E46B:     var_138 = CVar(CStr(var_F4)) 'String
  loc_136E472:     LateIdCallSt
  loc_136E49D:     If (Me.RecordCount <> 0) Then
  loc_136E506:       Set var_190 = Me.TopCtrl1
  loc_136E50C:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((Trim(CVar(CStr(var_19C.TextMatrix)))) = Trim(CVar(Me.Fields.Item("Capacity")))))
  loc_136E51C:       var_114 = (CStr(CVar(CLng(2))) <> "Add")
  loc_136E541:       If CBool(CVar(CLng(var_11A)) And var_114) Then
  loc_136E548:         var_B4 = CVar(CLng(var_11A)) 'Long
  loc_136E550:         var_D4 = CVar(CLng(1)) 'Long
  loc_136E555:         var_104 = "ü"
  loc_136E55E:         LateIdCallSt
  loc_136E572:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(CVar(CStr(var_11A)))
  loc_136E57D:       Else
  loc_136E581:         var_B4 = CVar(CLng(var_11A)) 'Long
  loc_136E589:         var_D4 = CVar(CLng(1)) 'Long
  loc_136E58E:         var_104 = vbNullString
  loc_136E597:         LateIdCallSt
  loc_136E59F:       End If
  loc_136E59F:     End If
  loc_136E5A1:     Set var_19C = Nothing 
  loc_136E5A8:     var_118.MoveNext
  loc_136E5AD:     GoTo loc_136E2C4
  loc_136E5B0:   End If
  loc_136E5D4:   If Not((CStr(Me.FGrid2.Tag) = vbNullString)) Then
  loc_136E5ED:     var_B4 = CVar(CLng(CStr(Me.FGrid2.Tag))) 'Long
  loc_136E5F5:     var_D4 = CVar(CLng(7)) 'Long
  loc_136E604:     var_F4 = Me.FGrid2.TextMatrix)
  loc_136E631:     Me.var_F4.LoadPicture CVar(CStr(var_F4)), var_104, var_114, var_17C, var_1BC
  loc_136E646:     Me.Pic1.Picture = var_190
  loc_136E665:   Else
  loc_136E677:     Me.Pic1.Picture = Nothing
  loc_136E683:   End If
  loc_136E6AC:   For var_1C8 = (var_11A + 1) To CInt((CLng(Me.FGrid2.Rows) - 1)): var_11C = var_1C8 'Integer
  loc_136E6B6:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_136E6BE:     var_D4 = CVar(CLng(1)) 'Long
  loc_136E6C3:     var_104 = vbNullString
  loc_136E6CD:     Set var_88 = Me.FGrid2
  loc_136E6D3:     LateIdCallSt
  loc_136E6E2:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_136E6EA:     var_D4 = CVar(CLng(0)) 'Long
  loc_136E6EF:     var_104 = vbNullString
  loc_136E6F9:     Set var_88 = Me.FGrid2
  loc_136E6FF:     LateIdCallSt
  loc_136E70E:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_136E716:     var_D4 = CVar(CLng(2)) 'Long
  loc_136E71B:     var_104 = vbNullString
  loc_136E725:     Set var_88 = Me.FGrid2
  loc_136E72B:     LateIdCallSt
  loc_136E73A:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_136E742:     var_D4 = CVar(CLng(4)) 'Long
  loc_136E747:     var_104 = vbNullString
  loc_136E751:     Set var_88 = Me.FGrid2
  loc_136E757:     LateIdCallSt
  loc_136E766:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_136E76E:     var_D4 = CVar(CLng(6)) 'Long
  loc_136E773:     var_104 = vbNullString
  loc_136E77D:     Set var_88 = Me.FGrid2
  loc_136E783:     LateIdCallSt
  loc_136E791:   Next var_1C8 'Integer
  loc_136E7A6:   Me.FGrid2.Tag = vbNullString
  loc_136E7B1: Else
  loc_136E7BB:   FGrid_UnknownEvent_94 = Me.FGrid2.Text
  loc_136E7D8:   Me.Pic1.Picture = Nothing
  loc_136E7E4: End If
  loc_136E7E4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '111BA94
  'Data Table: 504C54
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_111B73C: Set var_88 = Me.TopCtrl1
  loc_111B742: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_111B787: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_111B790:   Call Form_KeyDown(Cancel, arg_10)
  loc_111B795: End If
  loc_111B799: Set var_88 = Me.TopCtrl1
  loc_111B79F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_111B7B8: If (CStr() = "Browse") Then
  loc_111B7BB:   Exit Sub
  loc_111B7BC: End If
  loc_111B830: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_111B83B:   var_9C = "+{Tab}"
  loc_111B841:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_111B84B:   Cancel = 0
  loc_111B851: Else
  loc_111B85B:   var_B0 = Me.FGrid.Rows
  loc_111B8A8:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_111B8B9:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_111B8C3:     Cancel = 0
  loc_111B8C6:   End If
  loc_111B8C6: End If
  loc_111B8E9: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_111B90D: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_111B923:   var_DC = CLng(Me.FGrid.Col)
  loc_111B933:   If Not (var_DC = CLng(3)) Then
  loc_111B93D:     If (var_DC = CLng(5)) Then
  loc_111B940:     End If
  loc_111B953:     var_D8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_111B96B:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_111B970:     var_11C = vbNullString
  loc_111B97A:     Set var_B4 = Me.FGrid
  loc_111B980:     LateIdCallSt
  loc_111B99B:   Else
  loc_111B9A2:     If Not (var_DC = CLng(4)) Then
  loc_111B9AC:       If (var_DC = CLng(6)) Then
  loc_111B9AF:       End If
  loc_111B9C2:       var_D8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_111B9DA:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_111B9DF:       var_11C = "00:00"
  loc_111B9E9:       Set var_B4 = Me.FGrid
  loc_111B9EF:       LateIdCallSt
  loc_111BA07:     End If
  loc_111BA07:   End If
  loc_111BA07: End If
  loc_111BA2F: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_111BA32:   Call FGrid_UnknownEvent_9()
  loc_111BA37: End If
  loc_111BA5F: If ((CLng(Cancel) = &HD) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_111BA74:   Me.FGrid.Col = CVar(CLng(3))
  loc_111BA7C: End If
  loc_111BA82: If (Cancel = &HD) Then
  loc_111BA8A:   global_100 = 0
  loc_111BA8D: End If
  loc_111BA8F: Cancel = 0
  loc_111BA92: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E115B8
  'Data Table: 504C54
  loc_E115A9: Call FGrid_UnknownEvent_C()
  loc_E115B3: global_100 = 0
  loc_E115B6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10318C8
  'Data Table: 504C54
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1031690: Set var_88 = Me.TopCtrl1
  loc_1031696: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10316AF: If (CStr() = "Browse") Then
  loc_10316B2:   Exit Sub
  loc_10316B3: End If
  loc_10316C6: var_A0 = CLng(Me.FGrid.Col)
  loc_10316D6: If Not (var_A0 = CLng(3)) Then
  loc_10316E0:   If (var_A0 = CLng(5)) Then
  loc_10316E3:   End If
  loc_10316E7:   Set var_C4 = Me.FGrid
  loc_103170B:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1031738:   Set var_B4 = var_C4
  loc_103174A:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_1031772:   Set var_88 = Me.TxtGrid
  loc_1031778:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_1031780:   0 = var_B4.Text
  loc_1031799:   If (Len(var_9C) <= 1) Then
  loc_10317A8:     Set var_88 = Me.TxtGrid
  loc_10317AE:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_10317B6:     var_CA = var_B4.Text
  loc_10317C7:     Set var_B8 = Me.TxtGrid
  loc_10317CD:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_10317D5:     var_C4.Text = var_9C
  loc_10317E8:   End If
  loc_10317F4:   Set var_88 = Me.TxtGrid
  loc_10317FA:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4)
  loc_1031814:   Set var_B8 = Me.TxtGrid
  loc_103181A:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_1031822:   var_C4.SelStart = Len(var_B4.Text)
  loc_1031838: Else
  loc_103183F:   If (var_A0 = CLng(2)) Then
  loc_1031842:     GoTo loc_10318B0
  loc_1031845:   End If
  loc_103184C:   If Not (var_A0 = CLng(4)) Then
  loc_1031856:     If (var_A0 = CLng(6)) Then
  loc_1031859:     End If
  loc_103186A:     var_9C = "T"
  loc_103189B:     Proc_6_134_112AEB4(Me, Me.FGrid, Me.txtMEd, 0)
  loc_10318B0:     ' Referenced from:   1031842
  loc_10318B0:   End If
  loc_10318B0: End If
  loc_10318BA: If (CLng(Cancel) <> &HD) Then
  loc_10318C2:   global_100 = &HFF
  loc_10318C5: End If
  loc_10318C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1018CB8
  'Data Table: 504C54
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_1018A88: On Error Goto loc_1018CB2
  loc_1018AAE: Call Proc_120_54_EC92D8(Proc_5_1_100CB50("ADD", Me))
  loc_1018AB9: Call Proc_120_49_135E324(global_56)
  loc_1018ABE: Call Proc_120_55_E9DC18()
  loc_1018AD0: Me.LblUser.Caption = vbNullString
  loc_1018AE5: Me.LblLDt.Caption = vbNullString
  loc_1018AFB: Set var_8C = Me.txt
  loc_1018B01: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H12), var_94)
  loc_1018B09: var_94.Text = MemVar_1F920C8
  loc_1018B2A: If (global_52 = MemVar_1F92078 & "BANQ") Then
  loc_1018B3B:   Set var_8C = Me.txt
  loc_1018B41:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1018B49:   var_94.Text = "Indoor"
  loc_1018B58: Else
  loc_1018B66:   Set var_8C = Me.txt
  loc_1018B6C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1018B74:   var_94.Text = "Outdoor"
  loc_1018B80: End If
  loc_1018B93: Me.FGrid.FillStyle = 0
  loc_1018BAE: Me.FGrid.SelectionMode = 0
  loc_1018BC9: Me.FGrid.HighLight = 2
  loc_1018BE4: Me.FGrid.BackColorSel = &HE0E0E0
  loc_1018BFF: Me.FGrid2.FillStyle = 0
  loc_1018C1A: Me.FGrid2.SelectionMode = 0
  loc_1018C35: Me.FGrid2.HighLight = 2
  loc_1018C4A: Set var_8C = Me.txt
  loc_1018C50: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1018C58: var_94.Enabled = False
  loc_1018C72: Set var_8C = Me.txt
  loc_1018C78: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_1018C80: var_94.Text = "Active"
  loc_1018C97: Set var_8C = Me.txt
  loc_1018C9D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_1018CA5: var_94.SetFocus
  loc_1018CB1: Exit Sub
  loc_1018CB2: ' Referenced from: 1018A88
  loc_1018CB2: Proc_6_60_E62BC4(var_94)
  loc_1018CB7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC5BCC
  'Data Table: 504C54
  loc_EC5B34: On Error Goto loc_EC5BC4
  loc_EC5B6E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC5B7D:   Set var_10C = Me
  loc_EC5B94:   Call Proc_120_54_EC92D8(Proc_5_1_100CB50("INI", var_10C))
  loc_EC5B9F:   Call Proc_120_58_F6A08C(global_56)
  loc_EC5BA4:   Call Proc_120_56_14754F0()
  loc_EC5BAC: Else
  loc_EC5BB2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC5BBA:   Call var_10C.SetFocus
  loc_EC5BC3: End If
  loc_EC5BC3: Exit Sub
  loc_EC5BC4: ' Referenced from: EC5B34
  loc_EC5BC4: Proc_6_60_E62BC4()
  loc_EC5BC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1170CBC
  'Data Table: 504C54
  Dim var_138 As Integer
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_504C5F As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  loc_117092C: On Error Goto loc_1170C6D
  loc_117093D: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_1170940:   Exit Sub
  loc_1170941: End If
  loc_1170947: var_138 = 0
  loc_117098F: var_DC = "Select Count(*) from hallbook where inquiryCode='" & Me.Fields.Item("SearchCode").Value 
  loc_1170998: var_FC = var_DC & "'" 
  loc_11709A6: unk_504C5F.Execute CStr(var_FC), var_120, -1
  loc_11709AE: var_124 = var_124.Fields
  loc_11709B6: var_138 = var_128.Item(var_128)
  loc_11709BE: var_13C = var_13C.Value
  loc_11709EB: If (var_14C > 0) Then
  loc_1170A07:   MsgBox("Booking Already made for this Booking You Can't delete it", &H40, var_DC, var_FC, var_120)
  loc_1170A17:   Exit Sub
  loc_1170A18: End If
  loc_1170A4F: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_120) = 6) Then
  loc_1170A5B:   unk_504C5F.BeginTrans var_170
  loc_1170A71:   var_94 = Me.Bookmark 'Variant
  loc_1170ABD:   var_FC = "Delete From BookingInquiry Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1170ACB:   unk_504C5F.Execute CStr(var_FC), var_120, -1
  loc_1170B16:   var_1A8 = 0
  loc_1170B29:   var_1A0 = 0
  loc_1170B34:   var_19C = 0
  loc_1170B47:   var_194 = 0
  loc_1170B52:   var_190 = 0
  loc_1170B65:   var_188 = 0
  loc_1170BA5:   var_100 = "BookingInquiry"
  loc_1170BAE:   Proc_154_5_10E33A4(MemVar_1F92044, var_100, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1170BDC:   unk_504C5F.CommitTrans
  loc_1170BEC:   Me.Requery -1
  loc_1170C0C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1170C19:     Me.Bookmark = var_94
  loc_1170C21:   Else
  loc_1170C35:     If (Me.EOF = 0) Then
  loc_1170C3E:       Me.MoveLast
  loc_1170C43:     End If
  loc_1170C43:   End If
  loc_1170C43:   Call Proc_120_56_14754F0(var_188, 0, var_190, var_194)
  loc_1170C64:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_1170C6C: End If
  loc_1170C6C: Exit Sub
  loc_1170C6D: ' Referenced from: 117092C
  loc_1170C73: unk_504C5F.RollbackTrans
  loc_1170C80: Set var_98 = Err()
  loc_1170C86: Call 0.Method_arg_2C (var_100, 0, var_19C)
  loc_1170CA7: MsgBox(CVar(var_100), &H30, " Deletion Error ", var_FC, var_120)
  loc_1170CBA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10362C4
  'Data Table: 504C54
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim unk_504C5F As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_1036094: On Error Goto loc_10362BB
  loc_10360A5: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_10360A8:   Exit Sub
  loc_10360A9: End If
  loc_10360AF: var_128 = 0
  loc_10360E7: var_9C = Me.Fields.Item("SearchCode")
  loc_10360F7: var_CC = "Select Count(*) from hallbook where inquiryCode='" & var_9C.Value 
  loc_1036100: var_EC = var_CC & "'" 
  loc_103610E: unk_504C5F.Execute CStr(var_EC), var_110, -1
  loc_1036116: var_114 = var_114.Fields
  loc_103611E: var_128 = var_118.Item(var_118)
  loc_1036126: var_12C = var_12C.Value
  loc_1036153: If (var_13C > 0) Then
  loc_103616F:   MsgBox("Booking Already made for this Booking You Can't Modify it", &H40, var_CC, var_EC, var_110)
  loc_103617F:   Exit Sub
  loc_1036180: End If
  loc_10361A3: Call Proc_120_54_EC92D8(Proc_5_1_100CB50("EDIT", Me), global_56)
  loc_10361C1: Me.FGrid.FillStyle = 0
  loc_10361DC: Me.FGrid.SelectionMode = 0
  loc_10361F7: Me.FGrid.HighLight = 2
  loc_1036212: Me.FGrid.BackColorSel = &HE0E0E0
  loc_103622D: Me.FGrid2.FillStyle = 0
  loc_1036248: Me.FGrid2.SelectionMode = 0
  loc_1036263: Me.FGrid2.HighLight = 2
  loc_1036276: Set var_88 = Me.txt
  loc_103627C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_9C)
  loc_1036284: var_9C.SetFocus
  loc_103629D: Me.LblUser.Caption = vbNullString
  loc_10362B2: Me.LblLDt.Caption = vbNullString
  loc_10362BA: Exit Sub
  loc_10362BB: ' Referenced from: 1036094
  loc_10362BB: Proc_6_60_E62BC4(var_13C)
  loc_10362C0: Exit Sub
  loc_10362C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BF4C
  'Data Table: 504C54
  loc_E1BF41: Me.Global.Unload Me
  loc_E1BF49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F79F1C
  'Data Table: 504C54
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F79DD8: On Error Goto loc_F79EB6
  loc_F79DE4: var_88 = Me.RecordCount
  loc_F79DF2: If (var_88 <= 0) Then
  loc_F79DFB:   var_B8 = "Information"
  loc_F79E16:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F79E26:   Exit Sub
  loc_F79E27: End If
  loc_F79E3C: If (global_52 = MemVar_1F92078 & "BANQ") Then
  loc_F79E46:   var_10C = "SELECT BI.Code AS SearchCode,Convert(Varchar(11),B.FuncDate,100) as InquiryDate,BI.PartyName,BI.ConPerson,BI.Pax,BI.GurrPax,V.Name As VenueName,FT.Name As FunctionType,BI.Status FROM " & " (((BookingInquiry BI Left Join FunctionType FT On BI.FuncType=FT.Code) Left Join BookingDetail B On BI.Code=B.Code) Left Join VenueMast V On B.VenueCode=V.Code) where BI.LogSite_Code in ('"
  loc_F79E54:   MemVar_1F920E4 = var_10C & MemVar_1F92078 & "')  and CatType='Indoor' ORDER BY BI.PartyName"
  loc_F79E62: Else
  loc_F79E69:   var_10C = "SELECT BI.Code AS SearchCode,Convert(Varchar(11),B.FuncDate,100) as InquiryDate,BI.PartyName,BI.ConPerson,BI.Pax,BI.GurrPax,V.Name As VenueName,FT.Name As FunctionType,BI.Status FROM " & " (((BookingInquiry BI Left Join FunctionType FT On BI.FuncType=FT.Code) Left Join BookingDetail B On BI.Code=B.Code) Left Join VenueMast V On B.VenueCode=V.Code) where BI.LogSite_Code in ('"
  loc_F79E77:   MemVar_1F920E4 = var_10C & MemVar_1F92078 & "')  and CatType='Outdoor' ORDER BY BI.PartyName"
  loc_F79E82: End If
  loc_F79E88: MemVar_1F92120 = Me
  loc_F79E8F: var_10C = "1200,2000,2000,1000,1000,2000,2000"
  loc_F79E95: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F79EB0: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F79EB5: Exit Sub
  loc_F79EB6: ' Referenced from: F79DD8
  loc_F79EBE: Set var_114 = Err()
  loc_F79EC4: Call 0.Method_arg_1C (var_88)
  loc_F79ED5: If (var_88 <> 0) Then
  loc_F79EE0:   Set var_114 = Err()
  loc_F79EE6:   Call 0.Method_arg_2C (var_10C)
  loc_F79F07:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F79F1A: End If
  loc_F79F1A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35778
  'Data Table: 504C54
  loc_E35768: Proc_5_0_110649C(&HFF, Me)
  loc_E35770: Call Proc_120_56_14754F0(global_56)
  loc_E35775: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E358F8
  'Data Table: 504C54
  loc_E358E8: Proc_5_0_110649C(&HFF, Me)
  loc_E358F0: Call Proc_120_56_14754F0(global_56)
  loc_E358F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35898
  'Data Table: 504C54
  loc_E35888: Proc_5_0_110649C(&HFF, Me)
  loc_E35890: Call Proc_120_56_14754F0(global_56)
  loc_E35895: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E357D8
  'Data Table: 504C54
  loc_E357C8: Proc_5_0_110649C(&HFF, Me)
  loc_E357D0: Call Proc_120_56_14754F0(global_56)
  loc_E357D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C1ACC
  'Data Table: 504C54
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_504C5F As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_10C17F8: On Error Goto loc_10C1A80
  loc_10C1808: var_D4 = "SELECT B.Code As SearchCode, BD.FuncDate, BD.ToDate, BD.FuncTime, BD.ToTime,F.Name As FunctionType,BS.Name As BussinessName,M.Name As MarketSegName,V.Name VenueName,B.CatType,B.PartyName,B.Add1,B.Add2,B.City,B.PhoneR,B.PhoneO,B.MobileNo,B.ConPerson,B.BookedBy,B.HandledBy,B.Status,B.U_Name,B.Remark FROM BookingInquiry B INNER JOIN BookingDetail BD ON B.Code=BD.Code Left Join BussSource BS On B.BussSource=BS.Code Left Join MarketSeg M On B.MarketSeg=M.Code LEFT JOIN FunctionType F ON B.FuncType=F.Code Left Join VenueMast V On BD.VenueCode=V.Code Where B.Code='"
  loc_10C182A: var_B4 = Me.Fields.Item("Code")
  loc_10C183A: var_E4 = var_D4 & var_B4.Value 
  loc_10C183E: var_F4 = "'"
  loc_10C1843: var_104 = var_E4 & var_F4 
  loc_10C1851: unk_504C5F.Execute CStr(var_104), var_128, -1
  loc_10C185C: Set var_88 = var_12C
  loc_10C187C: var_130 = var_88.RecordCount
  loc_10C188A: If (var_130 = 0) Then
  loc_10C18A6:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_10C18B6:   Exit Sub
  loc_10C18B7: End If
  loc_10C18C6: var_134 = MemVar_1F920B4 & "\BookingInquiry.ttx"
  loc_10C18CD: Set var_A0 = var_88 
  loc_10C18D9: var_136 = CreateFieldDefFile(var_A0, var_134)
  loc_10C18E3: Set var_88 = var_A0
  loc_10C18E9: var_B0 = CVar(var_136) 'Integer
  loc_10C18EC: var_98 = var_B0 'Variant
  loc_10C1908: var_108 = MemVar_1F920B4 & "\BookingInquiry.RPT"
  loc_10C1911: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_10C191C: MemVar_1F921E4 = var_A0
  loc_10C1937: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_10C193F: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10C194B: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_10C1964:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10C196C:   Call 0.Method_arg_20 (var_B4)
  loc_10C1974:   Call 0.Method_arg_30 (var_108)
  loc_10C19BA:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_10C19D0:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10C19D8:     Call 0.Method_arg_20 (var_B4)
  loc_10C19E0:     Call 0.Method_arg_38 ("'Booking Inquiry'")
  loc_10C19EC:   End If
  loc_10C19EF: Next var_13A 'Integer
  loc_10C1A0D: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_10C1A15: Call 0.Method_arg_2C (var_D4)
  loc_10C1A23: Call 0.Method_arg_150 (var_F4)
  loc_10C1A2E: Call 0.Method_arg_50 (var_108)
  loc_10C1A38: Set var_B4 = Nothing
  loc_10C1A52: Set var_A0 = MemVar_1F921E4 
  loc_10C1A5E: Proc_6_99_1483714(var_A0, 0, var_108)
  loc_10C1A69: MemVar_1F921E4 = var_A0
  loc_10C1A7C: Set var_88 = Nothing
  loc_10C1A7F: Exit Sub
  loc_10C1A80: ' Referenced from: 10C17F8
  loc_10C1A88: Set var_A0 = Err()
  loc_10C1A8E: Call 0.Method_arg_2C (var_108, &HFF)
  loc_10C1A99: Call 0.Method_arg_50 (var_134)
  loc_10C1AB5: MsgBox(CVar(var_108), &H10, CVar(var_134), var_104, var_128)
  loc_10C1AC8: Exit Sub
  loc_10C1AC9: CopyBytes 9727
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E55BBC
  'Data Table: 504C54
  Dim Me As Recordset15
  loc_E55B83: Me.Requery -1
  loc_E55B93: Me.Requery -1
  loc_E55BA3: Me.Requery -1
  loc_E55BB3: Me.Requery -1
  loc_E55BB8: Exit Sub
  loc_E55BB9: CopyBytes 27648
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15EB510
  'Data Table: 504C54
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_8E As Variant
  Dim var_E0 As Variant
  Dim var_154 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2E4 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_374 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_468 As MSHFlexGrid
  Dim var_A4 As String
  Dim unk_504C5F As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Field20
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_48C As TextBox
  Dim var_498 As TextBox
  Dim var_4A4 As TextBox
  Dim var_4B0 As TextBox
  Dim var_4BC As TextBox
  Dim var_4C8 As TextBox
  Dim var_3B4 As Variant
  Dim var_4D4 As TextBox
  Dim var_4F0 As TextBox
  Dim var_53C As TextBox
  Dim var_588 As TextBox
  Dim var_5D4 As TextBox
  Dim var_658 As TextBox
  Dim var_6EC As TextBox
  Dim var_728 As TextBox
  Dim var_9AC As Double
  Dim var_754 As TextBox
  Dim var_9B4 As Double
  Dim var_478 As String
  Dim var_2F4 As Variant
  Dim var_5F8 As Variant
  Dim var_73C As Variant
  Dim var_840 As Variant
  Dim var_9B8 As MSHFlexGrid
  Dim var_1D4 As Variant
  Dim var_254 As Variant
  Dim var_480 As String
  loc_15EA370: On Error Goto loc_15EB4BB
  loc_15EA377: var_86 = CByte(0) 'Byte
  loc_15EA386: Set var_98 = Me.txt
  loc_15EA38C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_15EA3B5: If (Proc_6_27_EA565C(var_9C, "Party Name") = 0) Then
  loc_15EA3BF:   Call Txt_GotFocus(CInt(2))
  loc_15EA3C4:   Exit Sub
  loc_15EA3C5: End If
  loc_15EA3D0: Set var_98 = Me.txt
  loc_15EA3D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_15EA3FF: If (Proc_6_27_EA565C(var_9C, "Catering Type") = 0) Then
  loc_15EA409:   Call Txt_GotFocus(CInt(0))
  loc_15EA40E:   Exit Sub
  loc_15EA40F: End If
  loc_15EA41A: Set var_98 = Me.txt
  loc_15EA420: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_9C)
  loc_15EA449: If (Proc_6_27_EA565C(var_9C, "Contact Person") = 0) Then
  loc_15EA453:   Call Txt_GotFocus(CInt(&HA))
  loc_15EA458:   Exit Sub
  loc_15EA459: End If
  loc_15EA464: Set var_98 = Me.txt
  loc_15EA46A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15EA493: If (Proc_6_27_EA565C(var_9C, "Function Type") = 0) Then
  loc_15EA496:   Exit Sub
  loc_15EA497: End If
  loc_15EA49B: Set var_AC = Me.FGrid
  loc_15EA4B9: For var_C0 = 1 To CInt((CLng(var_AC.Rows) - 2)): var_90 = var_C0 'Integer
  loc_15EA4C3:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA4CB:   var_F0 = CVar(CLng(2)) 'Long
  loc_15EA4E4:   var_120 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EA4FD:   If CBool(var_120 <> vbNullString) Then
  loc_15EA502:     var_8E = &HFF
  loc_15EA505:   End If
  loc_15EA508: Next var_C0 'Integer
  loc_15EA513: If (var_8E = 0) Then
  loc_15EA537:   MsgBox("Please Select Venue.", &H40, "Booking Inquiry...", var_120, var_140)
  loc_15EA553:   var_AC.Row = 1
  loc_15EA563:   var_AC.Col = CVar(CLng(2))
  loc_15EA573:   Exit Sub
  loc_15EA577: Else
  loc_15EA592:   For var_144 = 1 To CInt((CLng(var_AC.Rows) - 2)):   var_90 = var_144 'Integer
  loc_15EA59C:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA5A4:     var_F0 = CVar(CLng(2)) 'Long
  loc_15EA5D6:     If CBool(Trim(CVar(CStr(var_AC.TextMatrix)))) <> vbNullString) Then
  loc_15EA5DD:       var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA5E5:       var_F0 = CVar(CLng(3)) 'Long
  loc_15EA5FE:       var_120 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EA606:       var_130 = vbNullString
  loc_15EA614:       var_154 = CVar(CLng(var_90)) 'Long
  loc_15EA647:       var_1E4 = CVar(CLng(4)) Or (Trim(CVar(CStr(var_AC.TextMatrix)))) = vbNullString)
  loc_15EA64F:       var_1F4 = CVar(CLng(var_90)) 'Long
  loc_15EA670:       var_254 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EA682:       var_284 = CVar(CLng(4)) Or (var_254 = "0:00")
  loc_15EA68A:       var_294 = CVar(CLng(var_90)) 'Long
  loc_15EA6A5:       var_2E4 = CVar(CStr(var_AC.TextMatrix))) 'String
  loc_15EA6BD:       var_324 = CVar(CLng(5)) Or (Trim(var_2E4) = vbNullString)
  loc_15EA6C5:       var_334 = CVar(CLng(var_90)) 'Long
  loc_15EA6D5:       var_374 = var_AC.TextMatrix)
  loc_15EA6F8:       var_3C4 = CVar(CLng(6)) Or (Trim(CVar(CStr(var_374))) = vbNullString)
  loc_15EA700:       var_3D4 = CVar(CLng(var_90)) 'Long
  loc_15EA760:       If CBool(CVar(CLng(6)) Or (Trim(CVar(CStr(var_AC.TextMatrix)))) = "0:00")) Then
  loc_15EA784:         MsgBox("Please Check Function Date and Time.", &H40, "Booking Inquiry...", var_120, var_140)
  loc_15EA7A0:         var_AC.Row = CVar(CLng(var_90))
  loc_15EA7B0:         var_AC.Col = CVar(CLng(3))
  loc_15EA7C0:         Exit Sub
  loc_15EA7C1:       End If
  loc_15EA7C1:     End If
  loc_15EA7C4:   Next var_144 'Integer
  loc_15EA7C9: End If
  loc_15EA7CB: Set var_AC = Nothing 
  loc_15EA7D3: Set var_468 = Me.FGrid2
  loc_15EA7DF: var_468.Tag = vbNullString
  loc_15EA7E7: var_94 = vbNullString
  loc_15EA805: For var_46C = 1 To CInt((CLng(var_468.Rows) - 1)): var_90 = var_46C 'Integer
  loc_15EA80F:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA817:   var_F0 = CVar(CLng(1)) 'Long
  loc_15EA838:   If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EA83F:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA847:     var_F0 = CVar(CLng(2)) 'Long
  loc_15EA861:     var_468.Tag = CVar(CStr(var_468.TextMatrix)))
  loc_15EA871:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA879:     var_F0 = CVar(CLng(3)) 'Long
  loc_15EA89A:     If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EA8A0:       var_94 = "S"
  loc_15EA8A3:     End If
  loc_15EA8A7:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EA8AF:     var_F0 = CVar(CLng(5)) 'Long
  loc_15EA8D0:     If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EA8D6:       var_94 = "F"
  loc_15EA8D9:     End If
  loc_15EA8DC:   Else
  loc_15EA8DF:     var_94 = "A"
  loc_15EA8E2:   End If
  loc_15EA8E5: Next var_46C 'Integer
  loc_15EA903: If (CStr(var_468.Tag) = vbNullString) Then
  loc_15EA911:   var_110 = "Error..."
  loc_15EA921:   var_BC = "Please choose venue's capacity."
  loc_15EA927:   MsgBox(var_BC, &H40, var_110, var_120, var_140)
  loc_15EA937:   Exit Sub
  loc_15EA938: End If
  loc_15EA93A: Set var_468 = Nothing 
  loc_15EA942: Set var_98 = Me.TopCtrl1
  loc_15EA948: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_15EA961: If (CStr() = "Add") Then
  loc_15EA96A:   var_E0 = 0
  loc_15EA987:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From BookingInquiry where Site_code='" & MemVar_1F92070
  loc_15EA997:   unk_504C5F.Execute CStr() & "'", var_BC, -1
  loc_15EA99F:   var_98 = var_98.Fields
  loc_15EA9A7:   var_E0 = var_9C.Item(var_9C)
  loc_15EA9AF:   var_A0 = var_A0.Value
  loc_15EA9DF:   var_120 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_15EAA0A:   var_140 = (1 + Format(CStr(var_110), "0000"))
  loc_15EAA0F:   var_8C = CStr(var_140)
  loc_15EAA20: Else
  loc_15EAA3D:   var_9C = Me.Fields.Item("Code")
  loc_15EAA45:   var_BC = var_9C.Value
  loc_15EAA4E:   var_8C = CStr(var_BC)
  loc_15EAA5B: End If
  loc_15EAA64: unk_504C5F.BeginTrans var_474
  loc_15EAA6D: var_86 = CByte(1) 'Byte
  loc_15EAA95: unk_504C5F.Execute "Delete From BookingInquiry Where Code='" & var_8C & "'", var_BC, -1
  loc_15EAACB: unk_504C5F.Execute "Delete From BookingDetail Where Code='" & var_8C & "'", var_BC, -1
  loc_15EAAF1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_480, Me.txt)
  loc_15EAAF9: var_98 = var_9C.Text
  loc_15EAB0C: Set var_A0 = Me.txt
  loc_15EAB12: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_48C, var_490)
  loc_15EAB1A: 1 = var_48C.Text
  loc_15EAB33: Proc_6_17_EAA2B0(var_120, Trim(CVar(var_490)))
  loc_15EAB46: Set var_494 = Me.txt
  loc_15EAB4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_498, var_49C)
  loc_15EAB62: Proc_6_17_EAA2B0(var_1D4, CVar(var_49C))
  loc_15EAB75: Set var_4A0 = Me.txt
  loc_15EAB7B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4A4)
  loc_15EAB91: Proc_6_17_EAA2B0(var_254, CVar(var_4A4.Text))
  loc_15EABA4: Set var_4AC = Me.txt
  loc_15EABAA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_4B0)
  loc_15EABC0: Proc_6_17_EAA2B0(var_2E4, CVar(var_4B0.Text))
  loc_15EABD3: Set var_4B8 = Me.txt
  loc_15EABD9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4BC)
  loc_15EABEF: Proc_6_17_EAA2B0(var_374, CVar(var_4BC.Text))
  loc_15EAC02: Set var_4C4 = Me.txt
  loc_15EAC08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4C8)
  loc_15EAC18: var_3B4 = CVar(var_4C8.Text) 'String
  loc_15EAC1E: Proc_6_17_EAA2B0(var_3C4, var_3B4)
  loc_15EAC31: Set var_4D0 = Me.txt
  loc_15EAC37: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_4D4)
  loc_15EAC4D: Proc_6_17_EAA2B0(var_454, CVar(var_4D4.Text))
  loc_15EAC60: Set var_4EC = Me.txt
  loc_15EAC66: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_4F0)
  loc_15EAC7C: Proc_6_17_EAA2B0(var_514, CVar(var_4F0.Text))
  loc_15EAC8F: Set var_538 = Me.txt
  loc_15EAC95: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_53C)
  loc_15EACAB: Proc_6_17_EAA2B0(var_560, CVar(var_53C.Text))
  loc_15EACBE: Set var_584 = Me.txt
  loc_15EACC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_588)
  loc_15EACDA: Proc_6_17_EAA2B0(var_5AC, CVar(var_588.Text))
  loc_15EACED: Set var_5D0 = Me.txt
  loc_15EACF3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4)
  loc_15EAD0B: Set var_60C = Me.txt
  loc_15EAD11: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_610)
  loc_15EAD20: Proc_6_17_EAA2B0(var_630, CVar(var_610))
  loc_15EAD33: Set var_654 = Me.txt
  loc_15EAD39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_658)
  loc_15EAD51: Set var_690 = Me.txt
  loc_15EAD57: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_694)
  loc_15EAD66: Proc_6_17_EAA2B0(var_6B4, CVar(var_694))
  loc_15EAD79: Set var_6E8 = Me.txt
  loc_15EAD7F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_6EC)
  loc_15EAD9A: Set var_724 = Me.txt
  loc_15EADA0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_728)
  loc_15EADB5: var_9AC = Val(var_728.Text)
  loc_15EADC6: Set var_750 = Me.txt
  loc_15EADCC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_754, var_758)
  loc_15EADE1: var_9B4 = Val(var_758)
  loc_15EADEF: Proc_6_7_F25D88(var_7C8, MemVar_1F920EC)
  loc_15EADF8: Set var_7EC = Me.TopCtrl1
  loc_15EADFE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9B4)
  loc_15EAE53: Set var_928 = Me.txt
  loc_15EAE59: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_92C)
  loc_15EAE68: Proc_6_17_EAA2B0(var_94C, CVar(var_92C))
  loc_15EAE81: var_A4 = "Insert Into BookingInquiry(Code,CatType,PartyName,Add1,Add2,City,PhoneR,PhoneO,MobileNo,FaxNo," & " ConPerson,BookedBy,FuncType,HandledBy,BussSource,Status, "
  loc_15EAE8F: var_478 = var_A4 & " MarketSeg,Pax,GurrPax,VenueCode,Site_Code,U_Name,U_EntDt,U_AE,Capacity,capacityType,LogSite_Code,Remark)" & " Values('"
  loc_15EAEAB: var_140 = CVar(var_478 & var_8C & "','" & var_480 & "',") 'String
  loc_15EAEDA: var_284 = var_140 & var_498.Text & "," & var_1D4 & "," & var_254 & "," 
  loc_15EAF54: var_5F8 = var_284 & var_2E4 & "," & var_374 & "," & var_3C4 & "," & var_454 & "," & var_514 & "," & var_560 & "," & var_5AC & ",'" & CVar(var_5D4.Tag) 
  loc_15EAFB7: var_73C = var_5F8 & "'," & var_630 & ",'" & CVar(var_658.Tag) & "'," & var_6B4 & vbNullString & ",'" & CVar(var_6EC.Tag) & "'," & CVar(var_754.Text) 
  loc_15EB011: var_840 = var_73C & "," & CVar(var_9B4) & ",'','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_7C8 & ",'" & IIf((CStr(var_7FC) = "Add"), "A", "E") 
  loc_15EB068: var_980 = CStr(var_840 & "','" & CVar(CStr(Me.FGrid2.Tag)) & "','" & CVar(var_94) & "','" & CVar(MemVar_1F92078) & "'," & var_94C & ")")
  loc_15EB072: unk_504C5F.Execute var_980, var_9A0, -1
  loc_15EB19C: Set var_9B8 = Me.FGrid
  loc_15EB1BA: For var_9BC = 1 To CInt((CLng(var_9B8.Rows) - 2)): var_90 = var_9BC 'Integer
  loc_15EB1C4:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB1CC:   var_F0 = CVar(CLng(2)) 'Long
  loc_15EB1FE:   If CBool(Trim(CVar(CStr(var_9B8.TextMatrix)))) <> vbNullString) Then
  loc_15EB205:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB20D:     var_F0 = CVar(CLng(7)) 'Long
  loc_15EB215:     var_BC = var_9B8.TextMatrix)
  loc_15EB235:     var_110 = var_9B8.TextMatrix)
  loc_15EB240:     var_120 = CVar(CStr(var_110)) 'String
  loc_15EB246:     Proc_6_7_F25D88(var_140, var_120, CVar(CLng(3)), CVar(CLng(var_90)), var_BC, var_F0, var_D0)
  loc_15EB25F:     var_1D4 = var_9B8.TextMatrix)
  loc_15EB290:     Proc_6_7_F25D88(var_284, CVar(CStr(var_9B8.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_90)), var_1D4, CVar(CLng(4)), CVar(CLng(var_90)))
  loc_15EB2A9:     var_2F4 = var_9B8.TextMatrix)
  loc_15EB2C0:     Proc_6_7_F25D88(var_3B4, MemVar_1F920EC, var_2F4, CVar(CLng(6)), CVar(CLng(var_90)), var_F0)
  loc_15EB2D9:     var_A4 = "Insert Into BookingDetail(Code,VenueCode,FuncDate,FuncTime,ToDate,ToTime,Site_Code,U_EntDt,U_AE,LogSite_Code) " & " Values('"
  loc_15EB337:     var_324 = CVar(var_A4 & var_8C & "','" & CStr(var_BC) & "',") & var_140 & ",'" & CVar(CStr(var_1D4)) & "'," & var_284 & ",'" & CVar(CStr(var_2F4)) 
  loc_15EB384:     unk_504C5F.Execute CStr(var_324 & "','" & CVar(MemVar_1F92078) & "'," & var_3B4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_454, -1
  loc_15EB3D6:   End If
  loc_15EB3D9: Next var_9BC 'Integer
  loc_15EB3E0: Set var_9B8 = Nothing 
  loc_15EB3EA: unk_504C5F.CommitTrans
  loc_15EB3F3: var_86 = CByte(0) 'Byte
  loc_15EB402: Me.Requery -1
  loc_15EB42C: Me.Find "SearchCode='" & var_8C & "'", 0, 1
  loc_15EB43C: Set var_98 = Me.TopCtrl1
  loc_15EB442: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D0)
  loc_15EB45B: If (CStr() = "Add") Then
  loc_15EB45E:   Call TopCtrl1_UnknownEvent_A()
  loc_15EB46A:   VerifyVarObj
  loc_15EB476:   Me.Pic1._Default = CVar(Nothing)
  loc_15EB481:   Exit Sub
  loc_15EB482: End If
  loc_15EB497: var_A4 = "INI"
  loc_15EB4A5: Call Proc_120_54_EC92D8(Proc_5_1_100CB50(var_A4, Me))
  loc_15EB4B0: Call Proc_120_58_F6A08C(global_56)
  loc_15EB4B5: Call Proc_120_56_14754F0()
  loc_15EB4BA: Exit Sub
  loc_15EB4BB: ' Referenced from: 15EA370
  loc_15EB4C4: If (CInt(var_86) = 1) Then
  loc_15EB4CD:   unk_504C5F.RollbackTrans
  loc_15EB4D2: End If
  loc_15EB4DA: Set var_98 = Err()
  loc_15EB4E0: Call 0.Method_arg_2C (var_A4)
  loc_15EB4F9: MsgBox(CVar(var_A4), &H10, var_110, var_120, var_140)
  loc_15EB50C: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_9 'F46CA4
  'Data Table: 504C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46B9B: Me.DGSource.Visible = False
  loc_F46BBA: If (Me.RecordCount > 0) Then
  loc_F46BF9:   Set var_B4 = Me.txt
  loc_F46BFF:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F46C07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46C3A:   var_B0 = Me.Fields.Item("Code")
  loc_F46C59:   Set var_B4 = Me.txt
  loc_F46C5F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F46C67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46C7D: End If
  loc_F46C88: Set var_A8 = Me.txt
  loc_F46C8E: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF))
  loc_F46C96: var_B0.SetFocus
  loc_F46CA2: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_1F 'EA4958
  'Data Table: 504C54
  Dim var_A8 As Variant
  loc_EA48D8: Set var_88 = Me.DGSource
  loc_EA4902: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA490A: Set var_BC = Me.DGSource
  loc_EA4946: Proc_6_138_106D6F8(Me.DGSource, global_72, CInt(&HF), Me.FGPoint)
  loc_EA4954: Exit Sub
  loc_EA4955: arg_2102 = DGSource.DispID_1B
End Sub

Public Function global_52Get() '506258
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '506267
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC61E4
  'Data Table: 504C54
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC615A: On Error Goto loc_EC619F
  loc_EC6163: Me.MoveFirst
  loc_EC617D: var_8C = "code='" & MyValue
  loc_EC618D: Me.Find var_8C & "'", 0, 1
  loc_EC6199: Call Proc_120_56_14754F0(var_A0)
  loc_EC619E: Exit Sub
  loc_EC619F: ' Referenced from: EC615A
  loc_EC61A7: Set var_A4 = Err()
  loc_EC61AD: Call 0.Method_arg_2C (var_8C)
  loc_EC61CE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC61E1: Exit Sub
  loc_EC61E2: Exit Sub
End Sub

Public Sub Proc_120_49_135E324
  'Data Table: 504C54
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim unk_504C5F As Connection15
  Dim var_B8 As MSHFlexGrid
  Dim Proc_120_49_135E3244 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_13C As MSHFlexGrid
  loc_135DAEA: var_98 = CVar(Nothing) 'Address
  loc_135DAEF: VerifyVarObj
  loc_135DAF5: Set var_9C = Me.Pic1
  loc_135DAFB: var_9C._Default = var_98
  loc_135DB24: var_A4 = "SELECT VenueMast.Code AS VenueCode, VenueMast.Name AS VenueName FROM VenueMast where DepartCode='" & global_52 & "' ORDER By VenueMast.Name"
  loc_135DB2D: unk_504C5F.Execute var_A4, var_98, -1
  loc_135DB38: Set var_88 = var_9C
  loc_135DB4C: Set var_B8 = Me.FGrid
  loc_135DB52: Proc_120_49_135E3244 = var_B8.Text
  loc_135DB66: var_B8.Rows = 2
  loc_135DB77: var_B8.Cols = 8
  loc_135DB7F: var_B4 = CVar(CLng(0)) 'Long
  loc_135DB84: var_D8 = &H12C
  loc_135DB90: LateIdCallSt
  loc_135DB98: var_B4 = 0
  loc_135DBA4: var_D8 = CVar(CLng(1)) 'Long
  loc_135DBA9: var_F8 = "Venue Name"
  loc_135DBB2: LateIdCallSt
  loc_135DBBD: var_B4 = CVar(CLng(1)) 'Long
  loc_135DBC8: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DBCF: LateIdCallSt
  loc_135DBDA: var_B4 = CVar(CLng(1)) 'Long
  loc_135DBDF: var_D8 = &HA28
  loc_135DBEB: LateIdCallSt
  loc_135DBF3: var_B4 = 0
  loc_135DBFF: var_D8 = CVar(CLng(2)) 'Long
  loc_135DC04: var_F8 = "Selection"
  loc_135DC0D: LateIdCallSt
  loc_135DC18: var_B4 = CVar(CLng(2)) 'Long
  loc_135DC23: var_D8 = CVar(CInt(4)) 'Integer
  loc_135DC2A: LateIdCallSt
  loc_135DC35: var_B4 = CVar(CLng(2)) 'Long
  loc_135DC3A: var_D8 = &H2BC
  loc_135DC46: LateIdCallSt
  loc_135DC4E: var_B4 = 0
  loc_135DC5A: var_D8 = CVar(CLng(3)) 'Long
  loc_135DC5F: var_F8 = "Fr. Date"
  loc_135DC68: LateIdCallSt
  loc_135DC73: var_B4 = CVar(CLng(3)) 'Long
  loc_135DC7E: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DC85: LateIdCallSt
  loc_135DC90: var_B4 = CVar(CLng(3)) 'Long
  loc_135DC9B: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DCA2: LateIdCallSt
  loc_135DCAD: var_B4 = CVar(CLng(3)) 'Long
  loc_135DCB2: var_D8 = &H47E
  loc_135DCBE: LateIdCallSt
  loc_135DCC6: var_B4 = 0
  loc_135DCD2: var_D8 = CVar(CLng(4)) 'Long
  loc_135DCD7: var_F8 = "Fr. Time"
  loc_135DCE0: LateIdCallSt
  loc_135DCEB: var_B4 = CVar(CLng(4)) 'Long
  loc_135DCF6: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DCFD: LateIdCallSt
  loc_135DD08: var_B4 = CVar(CLng(4)) 'Long
  loc_135DD13: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DD1A: LateIdCallSt
  loc_135DD25: var_B4 = CVar(CLng(4)) 'Long
  loc_135DD2A: var_D8 = &H2BC
  loc_135DD36: LateIdCallSt
  loc_135DD3E: var_B4 = 0
  loc_135DD4A: var_D8 = CVar(CLng(5)) 'Long
  loc_135DD4F: var_F8 = "To Date"
  loc_135DD58: LateIdCallSt
  loc_135DD63: var_B4 = CVar(CLng(5)) 'Long
  loc_135DD6E: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DD75: LateIdCallSt
  loc_135DD80: var_B4 = CVar(CLng(5)) 'Long
  loc_135DD8B: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DD92: LateIdCallSt
  loc_135DD9D: var_B4 = CVar(CLng(5)) 'Long
  loc_135DDA2: var_D8 = &H47E
  loc_135DDAE: LateIdCallSt
  loc_135DDB6: var_B4 = 0
  loc_135DDC2: var_D8 = CVar(CLng(6)) 'Long
  loc_135DDC7: var_F8 = "To Time"
  loc_135DDD0: LateIdCallSt
  loc_135DDDB: var_B4 = CVar(CLng(6)) 'Long
  loc_135DDE6: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DDED: LateIdCallSt
  loc_135DDF8: var_B4 = CVar(CLng(6)) 'Long
  loc_135DE03: var_D8 = CVar(CInt(1)) 'Integer
  loc_135DE0A: LateIdCallSt
  loc_135DE15: var_B4 = CVar(CLng(6)) 'Long
  loc_135DE1A: var_D8 = &H2BC
  loc_135DE26: LateIdCallSt
  loc_135DE2E: var_B4 = 0
  loc_135DE3A: var_D8 = CVar(CLng(7)) 'Long
  loc_135DE3F: var_F8 = "Venue Code"
  loc_135DE48: LateIdCallSt
  loc_135DE53: var_B4 = CVar(CLng(7)) 'Long
  loc_135DE58: var_D8 = 0
  loc_135DE64: LateIdCallSt
  loc_135DE80: If (var_88.RecordCount > 0) Then
  loc_135DE83:   ' Referenced from: 135E048
  loc_135DE92:   If Not(var_88.EOF) Then
  loc_135DEA0:     var_B8.Col = CVar(CLng(2))
  loc_135DEB7:     var_B4 = CVar((CLng(var_B8.Rows) - 1)) 'Long
  loc_135DED0:     var_B8.CellFontName = "wingdings"
  loc_135DEE0:     var_B8.CellFontSize = CVar(CDbl(&HE))
  loc_135DEF1:     var_B8.CellForeColor = &HFF0000
  loc_135DF0F:     var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_135DF17:     var_D8 = CVar(CLng(0)) 'Long
  loc_135DF30:     var_130 = CVar(CStr((CLng(var_B8.Rows) - 1))) 'String
  loc_135DF37:     LateIdCallSt
  loc_135DF64:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_135DF6C:     var_E8 = CVar(CLng(7)) 'Long
  loc_135DF9C:     var_130 = CVar(CStr(var_88.Fields.Item("Venuecode").Value)) 'String
  loc_135DFA3:     LateIdCallSt
  loc_135DFD6:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_135DFDE:     var_E8 = CVar(CLng(1)) 'Long
  loc_135E00E:     var_130 = CVar(CStr(var_88.Fields.Item("VenueName").Value)) 'String
  loc_135E015:     LateIdCallSt
  loc_135E02F:     var_B4 = vbNullString
  loc_135E043:     var_88.MoveNext
  loc_135E048:     GoTo loc_135DE83
  loc_135E04B:   End If
  loc_135E04B: End If
  loc_135E04D: Set var_B8 = Nothing 
  loc_135E056: Set var_88 = Nothing
  loc_135E05D: Set var_13C = Me.FGrid2
  loc_135E063: Proc_120_49_135E3244 = var_13C.Text
  loc_135E077: var_13C.Rows = 2
  loc_135E088: var_13C.Cols = 8
  loc_135E08D: var_B4 = 0
  loc_135E099: var_D8 = CVar(CLng(0)) 'Long
  loc_135E09E: var_F8 = "Code"
  loc_135E0A7: LateIdCallSt
  loc_135E0B2: var_B4 = CVar(CLng(0)) 'Long
  loc_135E0B7: var_D8 = 0
  loc_135E0C3: LateIdCallSt
  loc_135E0CB: var_B4 = 0
  loc_135E0D7: var_D8 = CVar(CLng(1)) 'Long
  loc_135E0DC: var_F8 = vbNullString
  loc_135E0E5: LateIdCallSt
  loc_135E0F0: var_B4 = CVar(CLng(1)) 'Long
  loc_135E0F5: var_D8 = &H15E
  loc_135E101: LateIdCallSt
  loc_135E109: var_B4 = 0
  loc_135E115: var_D8 = CVar(CLng(2)) 'Long
  loc_135E11A: var_F8 = "Capacity"
  loc_135E123: LateIdCallSt
  loc_135E12E: var_B4 = CVar(CLng(2)) 'Long
  loc_135E139: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E140: LateIdCallSt
  loc_135E14B: var_B4 = CVar(CLng(2)) 'Long
  loc_135E156: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E15D: LateIdCallSt
  loc_135E168: var_B4 = CVar(CLng(2)) 'Long
  loc_135E16D: var_D8 = &H3B6
  loc_135E179: LateIdCallSt
  loc_135E181: var_B4 = 0
  loc_135E18D: var_D8 = CVar(CLng(3)) 'Long
  loc_135E192: var_F8 = vbNullString
  loc_135E19B: LateIdCallSt
  loc_135E1A6: var_B4 = CVar(CLng(3)) 'Long
  loc_135E1AB: var_D8 = 0
  loc_135E1B7: LateIdCallSt
  loc_135E1BF: var_B4 = 0
  loc_135E1CB: var_D8 = CVar(CLng(4)) 'Long
  loc_135E1D0: var_F8 = "Seating"
  loc_135E1D9: LateIdCallSt
  loc_135E1E4: var_B4 = CVar(CLng(4)) 'Long
  loc_135E1EF: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E1F6: LateIdCallSt
  loc_135E201: var_B4 = CVar(CLng(4)) 'Long
  loc_135E20C: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E213: LateIdCallSt
  loc_135E21E: var_B4 = CVar(CLng(4)) 'Long
  loc_135E223: var_D8 = &H352
  loc_135E22F: LateIdCallSt
  loc_135E237: var_B4 = 0
  loc_135E243: var_D8 = CVar(CLng(5)) 'Long
  loc_135E248: var_F8 = vbNullString
  loc_135E251: LateIdCallSt
  loc_135E25C: var_B4 = CVar(CLng(5)) 'Long
  loc_135E261: var_D8 = 0
  loc_135E26D: LateIdCallSt
  loc_135E275: var_B4 = 0
  loc_135E281: var_D8 = CVar(CLng(6)) 'Long
  loc_135E286: var_F8 = "Floating"
  loc_135E28F: LateIdCallSt
  loc_135E29A: var_B4 = CVar(CLng(6)) 'Long
  loc_135E2A5: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E2AC: LateIdCallSt
  loc_135E2B7: var_B4 = CVar(CLng(6)) 'Long
  loc_135E2C2: var_D8 = CVar(CInt(1)) 'Integer
  loc_135E2C9: LateIdCallSt
  loc_135E2D4: var_B4 = CVar(CLng(6)) 'Long
  loc_135E2D9: var_D8 = &H352
  loc_135E2E5: LateIdCallSt
  loc_135E2F0: var_B4 = CVar(CLng(7)) 'Long
  loc_135E2F5: var_D8 = 0
  loc_135E301: LateIdCallSt
  loc_135E315: var_13C.Rows = 5
  loc_135E31C: Set var_13C = Nothing 
  loc_135E320: Exit Sub
End Sub

Public Sub Proc_120_50_1172594(arg_C) '1172594
  'Data Table: 504C54
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim var_100 As TextBox
  Dim var_FC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_F4 As Variant
  loc_11721E4: If (arg_C = 1) Then
  loc_117220A:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_117221A:     Set var_98 = Me.TxtGrid
  loc_1172220:     Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0, var_B4)
  loc_1172228:     var_AC = var_B0.Text
  loc_1172258:     If (Len(Trim(CVar(var_B4))) = 0) Then
  loc_117226D:       Set var_98 = Me.TxtGrid
  loc_1172273:       Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0)
  loc_117227B:       var_B0.Text = CStr(MemVar_1F920EC)
  loc_117228D:     Else
  loc_1172297:       Set var_98 = Me.TxtGrid
  loc_117229D:       Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0)
  loc_11722B0:       var_B4 = Proc_6_33_1512840(var_B0)
  loc_11722BD:       Set var_FC = Me.TxtGrid
  loc_11722C3:       Call 0.Method_Proc_120_50_11725940 (arg_C, var_100)
  loc_11722CB:       var_100.Text = var_B4
  loc_11722DE:     End If
  loc_11722F1:     var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1172309:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_117231B:     Set var_98 = Me.TxtGrid
  loc_1172321:     Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0, var_B4)
  loc_1172329:     var_120 = var_B0.Text
  loc_1172331:     var_D4 = CVar(var_B4) 'String
  loc_1172339:     Set var_100 = Me.FGrid
  loc_117233F:     LateIdCallSt
  loc_1172360:   Else
  loc_1172367:     If (var_AC = CLng(5)) Then
  loc_1172377:       Set var_98 = Me.TxtGrid
  loc_117237D:       Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0, var_B4, var_100)
  loc_1172385:       var_D4 = var_B0.Text
  loc_117239F:       var_E4 = 0
  loc_11723B5:       If (Len(Trim(CVar(var_B4))) = var_E4) Then
  loc_11723CA:         Set var_98 = Me.TxtGrid
  loc_11723D0:         Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0, CStr(MemVar_1F920EC))
  loc_11723D8:         var_B0.Text = var_E4
  loc_11723EA:       Else
  loc_11723F4:         Set var_98 = Me.TxtGrid
  loc_11723FA:         Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0)
  loc_117240D:         var_B4 = Proc_6_33_1512840(var_B0)
  loc_117241A:         Set var_FC = Me.TxtGrid
  loc_1172420:         Call 0.Method_Proc_120_50_11725940 (arg_C, var_100)
  loc_1172428:         var_100.Text = var_B4
  loc_117243B:       End If
  loc_117244E:       var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1172466:       var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1172478:       Set var_98 = Me.TxtGrid
  loc_117247E:       Call 0.Method_Proc_120_50_11725940 (arg_C, var_B0, var_B4)
  loc_1172486:       var_120 = var_B0.Text
  loc_117248E:       var_D4 = CVar(var_B4) 'String
  loc_1172496:       Set var_100 = Me.FGrid
  loc_117249C:       LateIdCallSt
  loc_11724C4:       var_D4 = Me.FGrid.Row
  loc_11724CD:       var_140 = CVar(CLng(var_D4)) 'Long
  loc_11724D5:       var_160 = CVar(CLng(3)) 'Long
  loc_11724E4:       var_F4 = Me.FGrid.TextMatrix)
  loc_1172503:       var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117250B:       var_120 = CVar(CLng(5)) 'Long
  loc_117251A:       var_C4 = Me.FGrid.TextMatrix)
  loc_1172551:       If (CDate(CStr(var_C4)) < CDate(CStr(var_F4))) Then
  loc_117256D:         MsgBox("To Date Must be Greater than From Date.", &H40, var_C4, var_D4, var_F4)
  loc_1172582:         Proc_120_50_1172594 = 0
  loc_1172588:       End If
  loc_1172588:     End If
  loc_1172588:   End If
  loc_1172588: End If
  loc_117258D: Proc_120_50_1172594 = &HFF
End Sub

Public Sub Proc_120_51_12A81D8
  'Data Table: 504C54
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_108 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As String
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_86 As Integer
  Dim var_15C As Integer
  Dim var_13C As String
  Dim unk_504C5F As Connection15
  loc_12A7BFF: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7C07: var_E0 = CVar(CLng(3)) 'Long
  loc_12A7C21: var_108 = CStr(Me.FGrid.TextMatrix))
  loc_12A7C3C: var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7C44: var_14C = CVar(CLng(4)) 'Long
  loc_12A7C5E: var_174 = CStr(Me.FGrid.TextMatrix))
  loc_12A7C7A: var_198 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7C82: var_1B8 = CVar(CLng(5)) 'Long
  loc_12A7C91: var_1DC = Me.FGrid.TextMatrix)
  loc_12A7C9C: var_1E0 = CStr(var_1DC)
  loc_12A7CAF: var_1F4 = Me.FGrid.Row
  loc_12A7CB8: var_204 = CVar(CLng(var_1F4)) 'Long
  loc_12A7D14: If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12A7D2A:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7D32:   var_E0 = CVar(CLng(3)) 'Long
  loc_12A7D53:   var_174 = CStr(Me.FGrid.TextMatrix)) & " "
  loc_12A7D69:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7D94:   var_90 = CDate(CVar(CLng(4)) & CStr(Me.FGrid.TextMatrix)))
  loc_12A7DCB:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7DD3:   var_E0 = CVar(CLng(5)) 'Long
  loc_12A7DE2:   var_104 = Me.FGrid.TextMatrix)
  loc_12A7DF4:   var_174 = CStr(var_104) & " "
  loc_12A7E01:   var_11C = Me.FGrid.Row
  loc_12A7E0A:   var_12C = CVar(CLng(var_11C)) 'Long
  loc_12A7E1B:   Set var_160 = Me.FGrid
  loc_12A7E21:   var_170 = var_160.TextMatrix)
  loc_12A7E35:   var_98 = CDate(CVar(CLng(6)) & CStr(var_170))
  loc_12A7E60:   If (var_90 >= var_98) Then
  loc_12A7E7C:     MsgBox("Check Booking Dates and Times", &H40, var_104, var_11C, var_170)
  loc_12A7E91:     Proc_120_51_12A81D8 = 0
  loc_12A7E9A:   Else
  loc_12A7EAD:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7EB5:     var_E0 = CVar(CLng(7)) 'Long
  loc_12A7EC4:     var_104 = Me.FGrid.TextMatrix)
  loc_12A7ED6:     var_15C = 0
  loc_12A7F0C:     var_11C = CVar("Select COunt(*) From VenueOCC S WHERE " & var_9C & " VenuCode='" & CStr(var_104) & "' and '") 'String
  loc_12A7F16:     var_170 = var_11C & CDate(var_90) 
  loc_12A7F1A:     var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+convert(smalldatetime,ToTime) "
  loc_12A7F2D:     unk_504C5F.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_12A7F35:     var_10C = var_10C.Fields
  loc_12A7F3D:     var_15C = var_160.Item(var_160)
  loc_12A7F45:     var_178 = var_178.Value
  loc_12A7F80:     If (var_1F4 > 0) Then
  loc_12A7F85:       var_86 = 0
  loc_12A7FA7:       MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check From Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_12A7FCC:       Me.FGrid.Col = CVar(CLng(3))
  loc_12A7FE7:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A7FEF:       var_E0 = CVar(CLng(5)) 'Long
  loc_12A7FF4:       var_12C = vbNullString
  loc_12A7FFE:       Set var_F4 = Me.FGrid
  loc_12A8004:       LateIdCallSt
  loc_12A801A:       Set var_A0 = Me.FGrid
  loc_12A802B:       Proc_120_51_12A81D8 = FGrid.DispID_8001
  loc_12A8034:     Else
  loc_12A8047:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A804F:       var_E0 = CVar(CLng(7)) 'Long
  loc_12A805E:       var_104 = Me.FGrid.TextMatrix)
  loc_12A8070:       var_15C = 0
  loc_12A80A6:       var_11C = CVar("Select COunt(*) From VenueOCC S WHERE " & var_9C & " VenuCode='" & CStr(var_104) & "' and '") 'String
  loc_12A80B0:       var_170 = var_11C & CDate(var_98) 
  loc_12A80B4:       var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+Convert(smalldatetime,ToTime) "
  loc_12A80C7:       unk_504C5F.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_12A80CF:       var_10C = var_10C.Fields
  loc_12A80D7:       var_15C = var_160.Item(var_160)
  loc_12A80DF:       var_178 = var_178.Value
  loc_12A811A:       If (var_1F4 > 0) Then
  loc_12A811F:         var_86 = 0
  loc_12A8141:         MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check To Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_12A8166:         Me.FGrid.Col = CVar(CLng(5))
  loc_12A8181:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A8189:         var_E0 = CVar(CLng(5)) 'Long
  loc_12A818E:         var_12C = vbNullString
  loc_12A8198:         Set var_F4 = Me.FGrid
  loc_12A819E:         LateIdCallSt
  loc_12A81B4:         Set var_A0 = Me.FGrid
  loc_12A81C5:         Proc_120_51_12A81D8 = FGrid.DispID_8001
  loc_12A81CB:       End If
  loc_12A81CB:     End If
  loc_12A81CB:   End If
  loc_12A81CB: End If
  loc_12A81D0: Proc_120_51_12A81D8 = &HFF
End Sub

Public Sub Proc_120_52_119EB30(arg_C) '119EB30
  'Data Table: 504C54
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_A4 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_154 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_238 As Variant
  Dim var_134 As String
  Dim var_168 As String
  Dim var_130 As MSHFlexGrid
  Dim var_188 As Variant
  loc_119E75C: If (arg_C = 0) Then
  loc_119E772:   var_A0 = CLng(Me.FGrid.Col)
  loc_119E782:   If (var_A0 = CLng(4)) Then
  loc_119E78F:     Set var_8C = Me.txtMEd
  loc_119E795:     Call 0.Method_Proc_120_52_119EB300 (arg_C, var_A4)
  loc_119E7AF:     If (IsDate(CVar(var_A4)) = 0) Then
  loc_119E7B7:       Proc_120_52_119EB30 = 0
  loc_119E7BD:     End If
  loc_119E7D0:     var_CC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_119E7F7:     Set var_8C = Me.txtMEd
  loc_119E7FD:     Call 0.Method_Proc_120_52_119EB300 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_119E80D:     var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_119E815:     Set var_130 = Me.FGrid
  loc_119E81B:     LateIdCallSt
  loc_119E83E:   Else
  loc_119E845:     If (var_A0 = CLng(6)) Then
  loc_119E852:       Set var_8C = Me.txtMEd
  loc_119E858:       Call 0.Method_Proc_120_52_119EB300 (arg_C, var_A4, var_130, var_11C)
  loc_119E872:       If (IsDate(CVar(var_A4)) = 0) Then
  loc_119E87A:         Proc_120_52_119EB30 = 0
  loc_119E880:       End If
  loc_119E8BA:       Set var_8C = Me.txtMEd
  loc_119E8C0:       Call 0.Method_Proc_120_52_119EB300 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.RowSel)))
  loc_119E8D0:       var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_119E8D8:       Set var_130 = Me.FGrid
  loc_119E8DE:       LateIdCallSt
  loc_119E908:       var_10C = Me.FGrid.Row
  loc_119E911:       var_12C = CVar(CLng(var_10C)) 'Long
  loc_119E919:       var_154 = CVar(CLng(3)) 'Long
  loc_119E928:       var_11C = Me.FGrid.TextMatrix)
  loc_119E947:       var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E94F:       var_214 = CVar(CLng(4)) 'Long
  loc_119E95E:       var_238 = Me.FGrid.TextMatrix)
  loc_119E97D:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E985:       var_EC = CVar(CLng(5)) 'Long
  loc_119E994:       var_BC = Me.FGrid.TextMatrix)
  loc_119E99F:       var_134 = CStr(var_BC)
  loc_119E9A8:       var_168 = CStr(var_11C)
  loc_119E9C1:       var_188 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119EA24:       If (CVar(CLng(6)) And (CDate(CStr(Me.FGrid.TextMatrix))) < CDate(CStr(var_238)))) Then
  loc_119EA35:         var_CC = "To Time Must be Greater than From Date and Time."
  loc_119EA40:         MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_119EA55:         Proc_120_52_119EB30 = 0
  loc_119EA5B:       End If
  loc_119EA5E:       Call Proc_120_51_12A81D8(var_23E, var_188, (CDate(var_134) = CDate(var_168)), var_EC, var_CC, var_238)
  loc_119EA69:       If (var_23E = 0) Then
  loc_119EA7E:         Me.FGrid.Col = CVar(CLng(3))
  loc_119EA99:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119EAA1:         var_EC = CVar(CLng(5)) 'Long
  loc_119EAA6:         var_12C = vbNullString
  loc_119EAB0:         Set var_A4 = Me.FGrid
  loc_119EAB6:         LateIdCallSt
  loc_119EADA:         Me.FGrid.Col = CVar(CLng(3))
  loc_119EAE6:         Set var_8C = Me.FGrid
  loc_119EAF7:         Proc_120_52_119EB30 = FGrid.DispID_8001
  loc_119EAFD:       End If
  loc_119EAFD:     End If
  loc_119EAFD:   End If
  loc_119EAFD: End If
  loc_119EB0B: Set var_8C = Me.txtMEd
  loc_119EB11: Call 0.Method_Proc_120_52_119EB300 (0, var_A4, False, var_A4, var_12C, var_EC, False)
  loc_119EB19: var_A4.Visible = var_214
  loc_119EB2A: Proc_120_52_119EB30 = &HFF
End Sub

Public Sub Proc_120_53_FFCAFC(arg_C, arg_10) 'FFCAFC
  'Data Table: 504C54
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  loc_FFC900: Set var_8C = Me.FGrid2
  loc_FFC91E: For var_A0 = 1 To CInt((CLng(var_8C.Rows) - 1)): var_86 = var_A0 'Integer
  loc_FFC930:   var_8C.Row = CVar(CLng(var_86))
  loc_FFC950:   For var_C4 = 0 To CInt((CLng(var_8C.Cols) - 1)): var_88 = var_C4 'Integer
  loc_FFC962:     var_8C.Col = CVar(CLng(var_88))
  loc_FFC9A2:     If (((CLng(var_8C.Col) = CLng(1)) Or (CLng(var_8C.Col) = CLng(3))) Or (CLng(var_8C.Col) = CLng(5))) Then
  loc_FFC9AE:       var_8C.CellFontName = "wingdings"
  loc_FFC9BE:       var_8C.CellFontSize = CVar(CDbl(&H12))
  loc_FFC9CF:       var_8C.CellForeColor = &HFF0000
  loc_FFC9D8:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_FFC9E1:       var_F4 = CVar(CLng(var_88)) 'Long
  loc_FFC9E6:       var_114 = vbNullString
  loc_FFC9EF:       LateIdCallSt
  loc_FFC9F7:     End If
  loc_FFC9FA:   Next var_C4 'Integer
  loc_FFCA02: Next var_A0 'Integer
  loc_FFCA0B: var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFCA13: var_F4 = CVar(CLng(3)) 'Long
  loc_FFCA34: If (CStr(var_8C.TextMatrix)) = vbNullString) Then
  loc_FFCA43:   var_8C.Col = CVar(CLng(arg_10))
  loc_FFCA51:   var_8C.CellFontName = "wingdings"
  loc_FFCA61:   var_8C.CellFontSize = CVar(CDbl(&H12))
  loc_FFCA72:   var_8C.CellForeColor = &HFF
  loc_FFCA7B:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFCA84:   var_F4 = CVar(CLng(arg_10)) 'Long
  loc_FFCA89:   var_114 = "ü"
  loc_FFCA92:   LateIdCallSt
  loc_FFCA9E:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFCAA6:   var_F4 = CVar(CLng(1)) 'Long
  loc_FFCAAB:   var_114 = "ü"
  loc_FFCAB4:   LateIdCallSt
  loc_FFCABF: Else
  loc_FFCAC3:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFCACC:   var_F4 = CVar(CLng(arg_10)) 'Long
  loc_FFCAD1:   var_114 = vbNullString
  loc_FFCADA:   LateIdCallSt
  loc_FFCAEE:   var_8C.CellForeColor = &HFF0000
  loc_FFCAF3: End If
  loc_FFCAF5: Set var_8C = Nothing 
  loc_FFCAF9: Exit Sub
End Sub

Public Sub Proc_120_54_EC92D8(arg_C) 'EC92D8
  'Data Table: 504C54
  Dim var_98 As TextBox
  loc_EC923A: Set var_8C = Me.txt
  loc_EC9240: Call 0.Method_Proc_120_54_EC92D8C (var_8E, var_86)
  loc_EC9250: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC9266:   Set var_8C = Me.txt
  loc_EC926C:   Call 0.Method_Proc_120_54_EC92D80 (CInt(var_86), var_98)
  loc_EC9274:   var_98.Enabled = arg_C
  loc_EC9283: Next var_92 'Byte
  loc_EC9296: Set var_8C = Me.txt
  loc_EC929C: Call 0.Method_Proc_120_54_EC92D80 (CInt(&H12), var_98)
  loc_EC92A4: var_98.Enabled = False
  loc_EC92BD: Set var_8C = Me.txt
  loc_EC92C3: Call 0.Method_Proc_120_54_EC92D80 (CInt(0), var_98)
  loc_EC92CB: var_98.Enabled = False
  loc_EC92D7: Exit Sub
End Sub

Public Sub Proc_120_55_E9DC18
  'Data Table: 504C54
  Dim var_98 As TextBox
  loc_E9DB9E: Set var_8C = Me.txt
  loc_E9DBA4: Call 0.Method_Proc_120_55_E9DC18C (var_8E, var_86)
  loc_E9DBB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9DBCA:   Set var_8C = Me.txt
  loc_E9DBD0:   Call 0.Method_Proc_120_55_E9DC180 (CInt(var_86), var_98)
  loc_E9DBD8:   var_98.Text = vbNullString
  loc_E9DBF4:   Set var_8C = Me.txt
  loc_E9DBFA:   Call 0.Method_Proc_120_55_E9DC180 (CInt(var_86), var_98)
  loc_E9DC02:   var_98.Tag = vbNullString
  loc_E9DC11: Next var_92 'Byte
  loc_E9DC17: Exit Sub
End Sub

Public Sub Proc_120_56_14754F0
  'Data Table: 504C54
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_504C5F As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_1474908: On Error Goto loc_14754AD
  loc_147491E: Me.FGrid.FillStyle = 1
  loc_1474939: Me.FGrid.SelectionMode = 1
  loc_1474954: Me.FGrid.HighLight = 1
  loc_147496F: Me.FGrid.BackColorSel = &HFDEDEC
  loc_147498A: Me.FGrid2.FillStyle = 1
  loc_14749A5: Me.FGrid2.SelectionMode = 1
  loc_14749C0: Me.FGrid2.HighLight = 1
  loc_14749CE: Proc_183_45_E5C118(global_56)
  loc_14749EA: If (Me.RecordCount <= 0) Then
  loc_14749ED:   Call Proc_120_55_E9DC18()
  loc_14749F2:   Call Proc_120_57_1466A20()
  loc_14749FA: Else
  loc_1474A50:   unk_504C5F.Execute CStr("Select U_Name,U_AE,U_EntDt From BookingInquiry where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_1474A5B:   Set var_88 = var_11C
  loc_1474AAF:   var_11C = var_88.Fields
  loc_1474B18:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1474B5D:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_1474BD7:   var_120 = var_88.Fields.Item("U_AE")
  loc_1474BDF:   var_D4 = CVar(var_120) 'Address
  loc_1474BF0:   var_118 = "entdt :   "
  loc_1474BFB:   var_F4 = "Last Update :   "
  loc_1474C38:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(var_D4) = "E"), var_F4, var_118))
  loc_1474C7D:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1474CF1:   Set var_11C = Me.txt
  loc_1474CF7:   Call 0.Method_Proc_120_56_14754F00 (CInt(0), var_120)
  loc_1474CFF:   var_120.Text = CStr(Me.Fields.Item("CatType").Value)
  loc_1474D51:   Set var_11C = Me.txt
  loc_1474D57:   Call 0.Method_Proc_120_56_14754F00 (CInt(2), var_120)
  loc_1474D5F:   var_120.Text = CStr(Me.Fields.Item("PartyName").Value)
  loc_1474DAE:   Set var_11C = Me.txt
  loc_1474DB4:   Call 0.Method_Proc_120_56_14754F00 (CInt(3), var_120)
  loc_1474DBC:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")))
  loc_1474E09:   Set var_11C = Me.txt
  loc_1474E0F:   Call 0.Method_Proc_120_56_14754F00 (CInt(4), var_120)
  loc_1474E17:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add2")))
  loc_1474E64:   Set var_11C = Me.txt
  loc_1474E6A:   Call 0.Method_Proc_120_56_14754F00 (CInt(5), var_120)
  loc_1474E72:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("City")))
  loc_1474EBF:   Set var_11C = Me.txt
  loc_1474EC5:   Call 0.Method_Proc_120_56_14754F00 (CInt(6), var_120)
  loc_1474ECD:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PhoneR")))
  loc_1474F1A:   Set var_11C = Me.txt
  loc_1474F20:   Call 0.Method_Proc_120_56_14754F00 (CInt(7), var_120)
  loc_1474F28:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PhoneO")))
  loc_1474F75:   Set var_11C = Me.txt
  loc_1474F7B:   Call 0.Method_Proc_120_56_14754F00 (CInt(8), var_120)
  loc_1474F83:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MobileNo")))
  loc_1474FD0:   Set var_11C = Me.txt
  loc_1474FD6:   Call 0.Method_Proc_120_56_14754F00 (CInt(9), var_120)
  loc_1474FDE:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FaxNo")))
  loc_147502B:   Set var_11C = Me.txt
  loc_1475031:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HA), var_120)
  loc_1475039:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ConPerson")))
  loc_1475086:   Set var_11C = Me.txt
  loc_147508C:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HB), var_120)
  loc_1475094:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BookedBY")))
  loc_14750E1:   Set var_11C = Me.txt
  loc_14750E7:   Call 0.Method_Proc_120_56_14754F00 (CInt(1), var_120)
  loc_14750EF:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("FuncType")))
  loc_147513C:   Set var_11C = Me.txt
  loc_1475142:   Call 0.Method_Proc_120_56_14754F00 (CInt(1), var_120)
  loc_147514A:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FunctionType")))
  loc_1475197:   Set var_11C = Me.txt
  loc_147519D:   Call 0.Method_Proc_120_56_14754F00 (CInt(&H13), var_120)
  loc_14751A5:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Remark")))
  loc_14751F2:   Set var_11C = Me.txt
  loc_14751F8:   Call 0.Method_Proc_120_56_14754F00 (CInt(&H10), var_120)
  loc_1475200:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("HandledBy")))
  loc_147524D:   Set var_11C = Me.txt
  loc_1475253:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HF), var_120)
  loc_147525B:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BussinessName")))
  loc_14752A8:   Set var_11C = Me.txt
  loc_14752AE:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HF), var_120)
  loc_14752B6:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("BussSource")))
  loc_1475303:   Set var_11C = Me.txt
  loc_1475309:   Call 0.Method_Proc_120_56_14754F00 (CInt(&H11), var_120)
  loc_1475311:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))
  loc_147535E:   Set var_11C = Me.txt
  loc_1475364:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HE), var_120)
  loc_147536C:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MarketSegName")))
  loc_14753B9:   Set var_11C = Me.txt
  loc_14753BF:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HE), var_120)
  loc_14753C7:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MarketSeg")))
  loc_14753FD:   var_C4 = CVar(Me.Fields.Item("Pax")) 'Address
  loc_1475404:   Proc_6_39_E7C810(var_D4)
  loc_147541B:   Set var_11C = Me.txt
  loc_1475421:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HC), var_120)
  loc_1475429:   var_120.Text = CStr(var_D4)
  loc_1475463:   var_C4 = CVar(Me.Fields.Item("GurrPax")) 'Address
  loc_147546A:   Proc_6_39_E7C810(var_D4, var_C4)
  loc_1475472:   var_F8 = CStr(var_D4)
  loc_1475481:   Set var_11C = Me.txt
  loc_1475487:   Call 0.Method_Proc_120_56_14754F00 (CInt(&HD), var_120)
  loc_147548F:   var_120.Text = var_F8
  loc_14754A7:   Call Proc_120_57_1466A20(var_C4)
  loc_14754AC: End If
  loc_14754AC: Exit Sub
  loc_14754AD: ' Referenced from: 1474908
  loc_14754B5: Set var_AC = Err()
  loc_14754BB: Call 0.Method_arg_2C (var_F8)
  loc_14754DC: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_14754EF: Exit Sub
End Sub

Public Sub Proc_120_57_1466A20
  'Data Table: 504C54
  Dim Me As Recordset15
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_130 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_16C As Variant
  Dim var_C8 As Variant
  Dim var_18C As Variant
  Dim unk_504C5F As Connection15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_1E0 As Variant
  Dim var_1D4 As Fields15
  loc_1465E77: If (Me.RecordCount <= 0) Then
  loc_1465E7A:   Exit Sub
  loc_1465E7B: End If
  loc_1465E7F: Set var_94 = Me.FGrid2
  loc_1465E9D: For var_A8 = 1 To CInt((CLng(var_94.Rows) - 1)): var_8E = var_A8 'Integer
  loc_1465EAF:   var_94.Row = CVar(CLng(var_8E))
  loc_1465ECF:   For var_CC = 0 To CInt((CLng(var_94.Cols) - 1)): var_90 = var_CC 'Integer
  loc_1465EE1:     var_94.Col = CVar(CLng(var_90))
  loc_1465F21:     If (((CLng(var_94.Col) = CLng(1)) Or (CLng(var_94.Col) = CLng(3))) Or (CLng(var_94.Col) = CLng(5))) Then
  loc_1465F2D:       var_94.CellFontName = "wingdings"
  loc_1465F3D:       var_94.CellFontSize = CVar(CDbl(&H12))
  loc_1465F4E:       var_94.CellForeColor = &HFF0000
  loc_1465F57:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1465F60:       var_FC = CVar(CLng(var_90)) 'Long
  loc_1465F65:       var_11C = vbNullString
  loc_1465F6E:       LateIdCallSt
  loc_1465F76:     End If
  loc_1465F79:   Next var_CC 'Integer
  loc_1465F81: Next var_A8 'Integer
  loc_1465F88: Set var_94 = Nothing 
  loc_1465F90: Set var_130 = Me.FGrid
  loc_1465FAE: For var_134 = 1 To CInt((CLng(var_130.Rows) - 2)): var_8E = var_134 'Integer
  loc_1465FBF:   var_130.Col = CVar(CLng(2))
  loc_1465FD6:   var_B8 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1465FDE:   var_130.Row = CVar(CLng(2))
  loc_1465FEF:   var_130.CellFontName = "wingdings"
  loc_1465FFF:   var_130.CellFontSize = CVar(CDbl(&HE))
  loc_1466010:   var_130.CellForeColor = &HFF0000
  loc_1466043:   var_10C = CVar(CLng(var_8E)) 'Long
  loc_146604B:   var_12C = CVar(CLng(7)) 'Long
  loc_146608E:   var_18C = "Select * FROM BookingDetail Where Code='" & Me.Fields.Item("SearchCode").Value & "' AND VenueCode='" & Trim(CVar(CStr(var_130.TextMatrix)))) 
  loc_14660A5:   unk_504C5F.Execute CStr(var_18C & "'"), var_1D0, -1
  loc_14660B0:   Set var_8C = var_1D4
  loc_14660DC:   var_8C.Requery -1
  loc_14660F5:   If (var_8C.RecordCount > 0) Then
  loc_14660FC:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1466104:     var_FC = CVar(CLng(2)) 'Long
  loc_1466109:     var_11C = "ü"
  loc_1466112:     LateIdCallSt
  loc_1466126:     var_130.Row = CVar(CLng(var_8E))
  loc_146612F:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1466137:     var_10C = CVar(CLng(3)) 'Long
  loc_1466167:     var_DC = CVar(CStr(var_8C.Fields.Item("FuncDate").Value)) 'String
  loc_146616E:     LateIdCallSt
  loc_1466188:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1466190:     var_10C = CVar(CLng(5)) 'Long
  loc_14661C0:     var_DC = CVar(CStr(var_8C.Fields.Item("ToDate").Value)) 'String
  loc_14661C7:     LateIdCallSt
  loc_14661E1:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_14661E9:     var_10C = CVar(CLng(4)) 'Long
  loc_1466219:     var_DC = CVar(CStr(var_8C.Fields.Item("FuncTime").Value)) 'String
  loc_1466220:     LateIdCallSt
  loc_146623A:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1466242:     var_10C = CVar(CLng(6)) 'Long
  loc_1466272:     var_DC = CVar(CStr(var_8C.Fields.Item("ToTime").Value)) 'String
  loc_1466279:     LateIdCallSt
  loc_1466292:   Else
  loc_1466296:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_146629E:     var_FC = CVar(CLng(2)) 'Long
  loc_14662A3:     var_11C = vbNullString
  loc_14662AC:     LateIdCallSt
  loc_14662B8:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_14662C0:     var_FC = CVar(CLng(3)) 'Long
  loc_14662C5:     var_11C = vbNullString
  loc_14662CE:     LateIdCallSt
  loc_14662DA:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_14662E2:     var_FC = CVar(CLng(5)) 'Long
  loc_14662E7:     var_11C = vbNullString
  loc_14662F0:     LateIdCallSt
  loc_14662FC:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1466304:     var_FC = CVar(CLng(4)) 'Long
  loc_1466309:     var_11C = vbNullString
  loc_1466312:     LateIdCallSt
  loc_146631E:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1466326:     var_FC = CVar(CLng(6)) 'Long
  loc_146632B:     var_11C = vbNullString
  loc_1466334:     LateIdCallSt
  loc_146633C:   End If
  loc_146633F: Next var_134 'Integer
  loc_146635F: For var_1D8 = 1 To CInt((CLng(var_130.Rows) - 1)): var_8E = var_1D8 'Integer
  loc_1466369:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1466371:   var_FC = CVar(CLng(2)) 'Long
  loc_1466392:   If (CStr(var_130.TextMatrix)) <> vbNullString) Then
  loc_14663A1:     var_130.Row = CVar(CLng(var_8E))
  loc_14663A6:     Exit For
  loc_14663A9:   End If
  loc_14663AC: Next var_1D8 'Integer
  loc_14663B1: ' Referenced from: 14663A6
  loc_14663B3: Set var_130 = Nothing 
  loc_14663CA: var_B8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_14663D2: var_FC = CVar(CLng(7)) 'Long
  loc_146640C: var_16C = "Select VenueCode,Capacity,Seating,Floating,PicPath FROM VenueCapacity Where VenueCode='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1466423: unk_504C5F.Execute CStr(var_16C & "'"), var_18C, -1
  loc_146642E: Set var_8C = var_1D4
  loc_1466456: var_8C.Requery -1
  loc_146646F: If (var_8C.RecordCount > 0) Then
  loc_1466482:   Me.FGrid2.Tag = vbNullString
  loc_146648C:   var_8E = 0
  loc_146648F:   ' Referenced from: 1466893
  loc_146649E:   If Not(var_8C.EOF) Then
  loc_14664A7:     var_8E = (var_8E + 1)
  loc_14664AE:     Set var_1E0 = Me.FGrid2
  loc_14664BC:     var_1E0.Col = CVar(CLng(1))
  loc_14664CA:     var_1E0.CellFontName = "wingdings"
  loc_14664DA:     var_1E0.CellFontSize = CVar(CDbl(&H12))
  loc_14664EB:     var_1E0.CellForeColor = &HFF0000
  loc_14664F4:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_14664FC:     var_FC = CVar(CLng(1)) 'Long
  loc_1466501:     var_11C = vbNullString
  loc_146650A:     LateIdCallSt
  loc_1466516:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_146651E:     var_10C = CVar(CLng(0)) 'Long
  loc_146654E:     var_DC = CVar(CStr(var_8C.Fields.Item("Venuecode").Value)) 'String
  loc_1466555:     LateIdCallSt
  loc_14665A4:     var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Capacity")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1E0, var_DC, CVar(CLng(2)), CVar(CLng(var_8E)))) 'String
  loc_14665AB:     LateIdCallSt
  loc_14665F4:     Proc_6_48_EF4270(var_DC, CVar(var_8C.Fields.Item("Seating")), CVar(CLng(4)), CVar(CLng(var_8E)), var_1E0, var_DC)
  loc_1466604:     LateIdCallSt
  loc_146664F:     Proc_6_48_EF4270(var_DC, CVar(var_8C.Fields.Item("Floating")), CVar(CLng(6)), CVar(CLng(var_8E)), var_1E0, CVar(CStr(var_DC)))
  loc_1466658:     var_EC = CVar(CStr(var_DC)) 'String
  loc_146665F:     LateIdCallSt
  loc_1466677:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_146667F:     var_FC = CVar(CLng(2)) 'Long
  loc_14666E3:     If (Trim(CVar(CStr(var_1E0.TextMatrix)))) = Trim(CVar(Me.Fields.Item("Capacity")))) Then
  loc_14666EA:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_14666F2:       var_FC = CVar(CLng(1)) 'Long
  loc_1466700:       LateIdCallSt
  loc_146670B:       var_B8 = "PicPath"
  loc_146676E:       var_FC = vbNullString
  loc_1466792:       If CBool(Not(IsNull(Trim(CVar(var_8C.Fields.Item(var_B8))))) Or (Trim(CVar(var_8C.Fields.Item("PicPath"))) <> var_FC)) Then
  loc_14667A8:         Set var_13C = var_8C 
  loc_14667B8:         Proc_142_1_F33768(Me.Pic1, var_13C, "PicPath", var_1E0, "ü", var_FC, var_B8)
  loc_14667C3:         Set var_8C = var_13C
  loc_14667D5:       Else
  loc_14667E7:         Me.Pic1.Picture = Nothing
  loc_14667F3:       End If
  loc_14667FF:       var_1E0.Tag = CVar(CStr(var_8E))
  loc_146680A:     Else
  loc_146680E:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1466816:       var_FC = CVar(CLng(1)) 'Long
  loc_146681B:       var_11C = vbNullString
  loc_1466824:       LateIdCallSt
  loc_1466830:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1466838:       var_10C = CVar(CLng(0)) 'Long
  loc_1466868:       var_DC = CVar(CStr(var_8C.Fields.Item("Venuecode").Value)) 'String
  loc_146686F:       LateIdCallSt
  loc_1466885:     End If
  loc_1466887:     Set var_1E0 = Nothing 
  loc_146688E:     var_8C.MoveNext
  loc_1466893:     GoTo loc_146648F
  loc_1466896:   End If
  loc_14668BF:   For var_1E8 = (var_8E + 1) To CInt((CLng(Me.FGrid2.Rows) - 1)): var_90 = var_1E8 'Integer
  loc_14668C9:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_14668D1:     var_FC = CVar(CLng(1)) 'Long
  loc_14668D6:     var_11C = vbNullString
  loc_14668E0:     Set var_138 = Me.FGrid2
  loc_14668E6:     LateIdCallSt
  loc_14668F5:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_14668FD:     var_FC = CVar(CLng(0)) 'Long
  loc_1466902:     var_11C = vbNullString
  loc_146690C:     Set var_138 = Me.FGrid2
  loc_1466912:     LateIdCallSt
  loc_1466921:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_1466929:     var_FC = CVar(CLng(2)) 'Long
  loc_146692E:     var_11C = vbNullString
  loc_1466938:     Set var_138 = Me.FGrid2
  loc_146693E:     LateIdCallSt
  loc_146694D:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_1466955:     var_FC = CVar(CLng(4)) 'Long
  loc_146695A:     var_11C = vbNullString
  loc_1466964:     Set var_138 = Me.FGrid2
  loc_146696A:     LateIdCallSt
  loc_1466979:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_1466981:     var_FC = CVar(CLng(6)) 'Long
  loc_1466986:     var_11C = vbNullString
  loc_1466990:     Set var_138 = Me.FGrid2
  loc_1466996:     LateIdCallSt
  loc_14669A4:   Next var_1E8 'Integer
  loc_14669B9:   Me.FGrid2.Tag = vbNullString
  loc_14669C4: Else
  loc_14669D9:   Call Proc_120_49_135E324(Me.FGrid2.Text)
  loc_14669F0:   Me.Pic1.Picture = Nothing
  loc_14669FC: End If
  loc_1466A01: Set var_8C = Nothing
  loc_1466A17: Me.FGrid2.Row = 1
  loc_1466A1F: Exit Sub
End Sub

Public Sub Proc_120_58_F6A08C
  'Data Table: 504C54
  loc_F69F64: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_F69F76:   Me.DGVenue.Visible = False
  loc_F69F7E: End If
  loc_F69F9A: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_F69FAC:   Me.DGMarketSeg.Visible = False
  loc_F69FB4: End If
  loc_F69FCF: If (Me.FrmList.Visible = &HFF) Then
  loc_F69FDE:   Me.FrmList.Visible = False
  loc_F69FE6: End If
  loc_F6A002: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6A014:   Me.FGPoint.Visible = False
  loc_F6A01C: End If
  loc_F6A038: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_F6A04A:   Me.DGSource.Visible = False
  loc_F6A052: End If
  loc_F6A06E: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_F6A080:   Me.DGFuncType.Visible = False
  loc_F6A088: End If
  loc_F6A088: Exit Sub
End Sub

Public Sub Proc_120_59_E91C10(arg_C) 'E91C10
  'Data Table: 504C54
  Dim var_10C As TextBox
  loc_E91BA4: Call Proc_120_58_F6A08C()
  loc_E91BE0: If (MsgBox("Save Booking ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E91BE3:   Call TopCtrl1_UnknownEvent_16()
  loc_E91BEB: Else
  loc_E91BF5:   Set var_108 = Me.txt
  loc_E91BFB:   Call 0.Method_Proc_120_59_E91C100 (arg_C)
  loc_E91C03:   var_10C.SetFocus
  loc_E91C0F: End If
  loc_E91C0F: Exit Sub
End Sub
