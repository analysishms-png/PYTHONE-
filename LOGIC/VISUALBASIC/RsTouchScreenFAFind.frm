VERSION 5.00
Begin VB.Form RsTouchScreenFAFind
  BackColor = &HFFFFC0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 15
  ClientTop = 15
  ClientWidth = 11640
  ClientHeight = 6015
  LockControls = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin Frame FrameFgrid
    Caption = "Frame1"
    BackColor = &H404040&
    Left = 10470
    Top = 0
    Width = 1140
    Height = 4185
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton CmFgrid
      Caption = "Up"
      Index = 0
      Left = 75
      Top = 90
      Width = 1000
      Height = 1000
      TabIndex = 8
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":0
      DisabledPicture = "RsTouchScreenFAFind.frx":49D
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Down"
      Index = 1
      Left = 75
      Top = 1095
      Width = 1000
      Height = 1000
      TabIndex = 7
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":8A7
      DisabledPicture = "RsTouchScreenFAFind.frx":D36
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Select"
      Index = 2
      Left = 75
      Top = 2100
      Width = 1000
      Height = 1000
      TabIndex = 6
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":1144
      DisabledPicture = "RsTouchScreenFAFind.frx":1750
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Exit"
      Index = 3
      Left = 75
      Top = 3105
      Width = 1000
      Height = 1000
      TabIndex = 5
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenFAFind.frx":1C38
      DisabledPicture = "RsTouchScreenFAFind.frx":2119
      Style = 1
    End
  End
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "RsTouchScreenFAFind.frx":2556
    Left = 435
    Top = 2550
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 0
    Top = 5715
    Width = 885
    Height = 300
    TabIndex = 2
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 15
    Top = 0
    Width = 10965
    Height = 5685
    TabIndex = 0
  End
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu FSR
      Index = 0
      Caption = "Filter Same Records"
    End
    Begin Menu FNSR
      Index = 1
      Caption = "Filter Not Same Records"
    End
    Begin Menu RF
      Index = 2
      Caption = "Remove Filter"
    End
    Begin Menu SA
      Index = 3
      Caption = "Sort Ascending"
    End
    Begin Menu SD
      Index = 4
      Caption = "Sort Descending"
    End
  End
End

Attribute VB_Name = "RsTouchScreenFAFind"


Private Sub Command1_Click() 'E5E238
  'Data Table: 426590
  loc_E5E207: If (Me.Picture1.Visible = &HFF) Then
  loc_E5E216:   Me.Picture1.Visible = False
  loc_E5E221: Else
  loc_E5E22D:   Me.Picture1.Visible = True
  loc_E5E235: End If
  loc_E5E235: Exit Sub
End Sub

Private Sub Form_Load() '11CB6B4
  'Data Table: 426590
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim unk_42659C As Connection15
  Dim MemVar_1F923A8 As Integer
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8C As Double
  Dim var_160 As Variant
  Dim var_12C As Frame
  loc_11CB268: On Error Goto loc_11CB652
  loc_11CB26B: var_9C = vbNullString
  loc_11CB270: ImpAdStVarCopy
  loc_11CB27A: If (MemVar_1F923A8 = &HFF) Then
  loc_11CB287:   var_BC = var_AC.Execute
  loc_11CB299:   Set global_52 = var_BC
  loc_11CB2A6: Else
  loc_11CB2BC:   unk_42659C.Execute MemVar_1F920E4, var_BC, -1
  loc_11CB2CD:   Set global_52 = var_C0
  loc_11CB2DB: End If
  loc_11CB2DD: MemVar_1F923A8 = 0
  loc_11CB2E9: CVarUnk
  loc_11CB2EE: VerifyVarObj
  loc_11CB2F4: Set var_C0 = Me.GridSel
  loc_11CB2FA: LateIdStAd
  loc_11CB308: var_9C = 0
  loc_11CB311: var_E4 = 0
  loc_11CB31E: Set var_C0 = Me.GridSel
  loc_11CB324: LateIdCallSt
  loc_11CB346: If (Me.RecordCount > 0) Then
  loc_11CB356:   If (UBound(MemVar_1F92008, 1) = 0) Then
  loc_11CB359:     ' Referenced from: 11CB674
  loc_11CB383:     var_D4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11CB38A:     For var_128 = 1 To var_D4: var_108 = var_128 'Variant
  loc_11CB3C8:       If (Me.Fields.Item(var_108).ActualSize = 0) Then
  loc_11CB3D0:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB406:         var_E4 = CVar((Me.Fields.Item(var_108).DefinedSize * &H78)) 'Long
  loc_11CB40F:         Set var_12C = Me.GridSel
  loc_11CB415:         LateIdCallSt
  loc_11CB429:       Else
  loc_11CB42E:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB464:         var_E4 = CVar((Me.Fields.Item(var_108).ActualSize * &H78)) 'Long
  loc_11CB46D:         Set var_12C = Me.GridSel
  loc_11CB473:         LateIdCallSt
  loc_11CB484:       End If
  loc_11CB489:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB4AE:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11CB4BA:     Next var_128 'Variant
  loc_11CB4C3:   Else
  loc_11CB4D6:     For var_14C = 1 To CVar(UBound(MemVar_1F92008, 1)):   var_108 = var_14C 'Variant
  loc_11CB4E1:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11CB4FA:       Set var_C0 = Me.GridSel
  loc_11CB500:       LateIdCallSt
  loc_11CB51C:       var_8C = (var_8C + CDbl(MemVar_1F92008(CLng(var_108))))
  loc_11CB522:     Next var_14C 'Variant
  loc_11CB528:   End If
  loc_11CB528: End If
  loc_11CB530: If (var_8C > CDbl(11085)) Then
  loc_11CB546:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11CB556:   Call 0.Method_Me4 (CDbl(11085))
  loc_11CB55E: Else
  loc_11CB566:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11CB575:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11CB58A:   var_F8 = Me.FrameFgrid.Width
  loc_11CB59F:   Call 0.Method_Me4 (((var_8C + CDbl(450)) + var_F8))
  loc_11CB5A7: End If
  loc_11CB5B1: var_160 = Me.GridSel.Width
  loc_11CB5DE: Me.FrameFgrid.Left = (CDbl(Me.GridSel.Left) + CDbl(var_160))
  loc_11CB612: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11CB615:   var_9C = vbNullString
  loc_11CB61F:   Set var_C0 = Me.GridSel
  loc_11CB630: End If
  loc_11CB639: Call 0.Method_arg_160 (var_C0, GridSel.DispID_10000)
  loc_11CB645: Call 0.Method_arg_164 (var_C0, var_9C)
  loc_11CB651: Exit Sub
  loc_11CB652: ' Referenced from: 11CB268
  loc_11CB65A: Set var_C0 = Err()
  loc_11CB660: Call 0.Method_arg_1C (var_F8)
  loc_11CB671: If (var_F8 = 9) Then
  loc_11CB674:   GoTo loc_11CB359
  loc_11CB677: End If
  loc_11CB68D: Set var_C0 = Err()
  loc_11CB693: Call 0.Method_arg_2C (var_164, 0, var_160)
  loc_11CB69E: MsgBox(CVar(var_164), var_174, var_184, var_160, )
  loc_11CB6B1: Exit Sub
  loc_11CB6B2: BranchFVar 6399
End Sub

Private Sub GridSel_UnknownEvent_B 'F75204
  'Data Table: 426590
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F92110 As Variant
  loc_F750C8: var_94 = 1
  loc_F750D1: var_B4 = 0
  loc_F750EF: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F75100: If (var_DC <> vbNullString) Then
  loc_F75116:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F75143:   Call unk_4265AC.SEARCHBACK
  loc_F7515D:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F7516C:   var_94 = CVar(CLng(unk_4265AC.GridSel.Row)) 'Long
  loc_F75171:   var_B4 = 0
  loc_F75184:   var_F0 = Me.GridSel.TextMatrix)
  loc_F7518F:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F75192:   MemVar_1F92110 = var_100
  loc_F751A7: Else
  loc_F751A7:   var_94 = vbNullString
  loc_F751AC:   ImpAdStVarCopy
  loc_F751B0: End If
  loc_F751BD: Me.Global.Unload Me
  loc_F751C5: Exit Sub
  loc_F751CE: Set var_C8 = Err()
  loc_F751D4: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F92110, var_B4)
  loc_F751ED: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F75200: Exit Sub
End Sub

Private Sub CmFgrid_Click(Index As Integer) 'FF1178
  'Data Table: 426590
  Dim var_86 As Integer
  Dim var_AC As Variant
  loc_FF0F87: var_86 = Index
  loc_FF0F92: If (var_86 = CInt(0)) Then
  loc_FF0FB4:   If (CLng(Me.GridSel.Row) > 1) Then
  loc_FF0FD0:     var_AC = CVar((CLng(Me.GridSel.Row) - 1)) 'Long
  loc_FF0FDF:     Me.GridSel.Row = var_AC
  loc_FF1007:     var_AC = CVar((CLng(Me.GridSel.Cols) - 1)) 'Long
  loc_FF1016:     Me.GridSel.ColSel = var_AC
  loc_FF1047:     Me.GridSel.TopRow = CVar(CLng(Me.GridSel.Row))
  loc_FF1056:   End If
  loc_FF1059: Else
  loc_FF1061:   If (var_86 = CInt(1)) Then
  loc_FF109F:     If (CLng(Me.GridSel.Row) < (CLng(Me.GridSel.Rows) - 1)) Then
  loc_FF10BB:       var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_FF10CA:       Me.GridSel.Row = CVar(CLng(Me.GridSel.Row))
  loc_FF10F2:       var_AC = CVar((CLng(Me.GridSel.Cols) - 1)) 'Long
  loc_FF1101:       Me.GridSel.ColSel = CVar(CLng(Me.GridSel.Row))
  loc_FF1132:       Me.GridSel.TopRow = CVar(CLng(Me.GridSel.Row))
  loc_FF1141:     End If
  loc_FF1144:   Else
  loc_FF114C:     If (var_86 = CInt(2)) Then
  loc_FF114F:       Call GridSel_UnknownEvent_B()
  loc_FF1157:     Else
  loc_FF115F:       If (var_86 = CInt(3)) Then
  loc_FF116F:         Me.Global.Unload Me
  loc_FF1177:       End If
  loc_FF1177:     End If
  loc_FF1177:   End If
  loc_FF1177: End If
  loc_FF1177: Exit Sub
End Sub
