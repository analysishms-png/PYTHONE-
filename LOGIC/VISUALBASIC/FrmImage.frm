VERSION 5.00
Begin VB.Form FrmImage
  Caption = "Image"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 390
  ClientWidth = 8820
  ClientHeight = 9000
  StartUpPosition = 3 'Windows Default
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8820
    Height = 450
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Image Image1
    Left = 0
    Top = 0
    Width = 8805
    Height = 8985
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
End

Attribute VB_Name = "FrmImage"


Private Sub Form_Load() 'DFEB1C
  'Data Table: 41E34C
  loc_DFEB14: Call Proc_330_4_1033738()
  loc_DFEB19: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A5DC
  'Data Table: 41E34C
  loc_E2A5B4: On Error Goto loc_E2A5D4
  loc_E2A5CB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A5D3: Exit Sub
  loc_E2A5D4: ' Referenced from: E2A5B4
  loc_E2A5D4: Proc_6_60_E62BC4(Shift)
  loc_E2A5D9: Exit Sub
  loc_E2A5DA: Exit Sub
End Sub

Public Property Let ImagePath(vNewValue) 'E0EF74
  'Data Table: 41E34C
  loc_E0EF6C: global_52 = vNewValue
  loc_E0EF70: Exit Sub
End Sub

Public Property Get ImagePath() 'E0EEE4
  'Data Table: 41E34C
  loc_E0EED8: var_88 = global_52
  loc_E0EEDB: ImagePath = 
End Sub

Public Sub Proc_330_4_1033738
  'Data Table: 41E34C
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_130 As Image
  loc_103352F: var_EC = IsNull(CVar(ImagePath))
  loc_1033567: If CBool(var_EC Or (Trim(CVar(ImagePath)) = vbNullString)) Then
  loc_1033588:   Me.Global.LoadPicture var_CC, var_EC, var_10C, var_11C, var_12C
  loc_103359D:   Me.Image1.Picture = var_130
  loc_10335B6:   Me.Image1.Tag = vbNullString
  loc_10335C1: Else
  loc_103360B:   var_CC = "DAT"
  loc_1033633:   var_EC = "AVI"
  loc_1033656:   If CBool((Ucase(Right(Trim(CVar(ImagePath)), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(ImagePath)), 3)) = var_EC)) Then
  loc_103365F:     Set var_130 = Me.Image1
  loc_1033665:     var_130.Visible = False
  loc_1033670:   Else
  loc_1033687:     Call 0.Method_Proc_330_4_10337384 (ImagePath, var_19A)
  loc_1033692:     If var_19A Then
  loc_10336BD:       Me.Global.LoadPicture CVar(ImagePath), var_CC, var_EC, var_10C, var_11C
  loc_10336D2:       Me.Image1.Picture = var_130
  loc_10336E5:       Set var_130 = Me.Image1
  loc_10336EB:       var_130.Refresh
  loc_10336F6:     Else
  loc_1033714:       Me.Global.LoadPicture var_CC, var_EC, var_10C, var_11C, var_12C
  loc_1033729:       Me.Image1.Picture = var_130
  loc_1033735:     End If
  loc_1033735:   End If
  loc_1033735: End If
  loc_1033735: Exit Sub
  loc_1033736: Exit Sub
End Sub
