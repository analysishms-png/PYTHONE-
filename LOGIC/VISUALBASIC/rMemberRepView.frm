VERSION 5.00
Begin VB.Form rMemberRepView
  Caption = "Member Report"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin PictureBox PictPreview
    BackColor = &HC0FFFF&
    Left = 9825
    Top = 0
    Width = 11010
    Height = 3090
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Text2
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 660
      Width = 10935
      Height = 270
      TabIndex = 27
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 390
      Width = 10935
      Height = 270
      TabIndex = 26
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text3
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 930
      Width = 10935
      Height = 270
      TabIndex = 25
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text4
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1200
      Width = 10935
      Height = 270
      TabIndex = 24
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGrid1
      Left = 15
      Top = 1470
      Width = 14415
      Height = 7830
      Visible = 0   'False
      TabIndex = 28
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 2100
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 30
    End
    Begin BtnEnh LblRefresh
      Left = 0
      Top = 0
      Width = 1395
      Height = 465
      TabIndex = 31
    End
    Begin BtnEnh BtnPrint
      Index = 3
      Left = 1395
      Top = 0
      Width = 700
      Height = 465
      TabIndex = 32
    End
    Begin BtnEnh BTNEXIT
      Left = 2805
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 33
    End
    Begin BtnEnh LblRep
      Left = 3510
      Top = 0
      Width = 4470
      Height = 495
      TabIndex = 34
    End
  End
  Begin PictureBox PictParameter
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 9825
    Height = 3090
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton Command2
      Caption = "Text Printing"
      Left = 120
      Top = 1200
      Width = 1680
      Height = 615
      Visible = 0   'False
      TabIndex = 39
    End
    Begin DataGrid DGOutlet
      Left = 3675
      Top = 5700
      Width = 3375
      Height = 2295
      Visible = 0   'False
      TabIndex = 23
    End
    Begin DataGrid DGTax
      Left = 3225
      Top = 5445
      Width = 3705
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 37
    End
  End
End
Begin DataGrid DGMemType
  Left = 3180
  Top = 5175
  Width = 3705
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 38
End
Begin BtnEnh CmdDate1
  Left = 4305
  Top = 90
  Width = 360
  Height = 300
  TabIndex = 36
End
Begin MainCtrl TopCtrl1
  Left = 495
  Top = 10740
  Width = 975
  Height = 195
  Visible = 0   'False
  TabIndex = 29
End
Begin CheckBox Check1
  Caption = "All"
  Index = 1
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 1830
  Width = 915
  Height = 195
  Visible = 0   'False
  TabIndex = 17
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin CheckBox Check1
  Caption = "All"
  Index = 2
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 4920
  Top = 1830
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 16
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin CheckBox Check1
  Caption = "All"
  Index = 3
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 135
  Top = 3870
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 15
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin CheckBox Check1
  Caption = "All"
  Index = 4
  BackColor = &HFF9600&
  ForeColor = &HFFFFFF&
  Left = 4950
  Top = 3855
  Width = 870
  Height = 195
  Visible = 0   'False
  TabIndex = 14
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox TxtSearch
  BackColor = &HE0E0E0&
  Left = 0
  Top = 1470
  Width = 2055
  Height = 240
  Visible = 0   'False
  TabIndex = 13
  BorderStyle = 0 'None
  HideSelection = 0   'False
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox TxtGrid
  Index = 0
  BackColor = &HE0E0E0&
  ForeColor = &H80000012&
  Left = 510
  Top = 30
  Width = 690
  Height = 240
  Visible = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin PictureBox Pic
  BackColor = &H808080&
  Left = -75
  Top = 8715
  Width = 9825
  Height = 435
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 10
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  TabStop = 0   'False
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Label LblTitle
    Caption = "LblTitle"
    BackColor = &H0&
    ForeColor = &HFFFFFF&
    Left = 4740
    Top = 60
    Width = 4470
    Height = 315
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End
Begin Frame FrmList
  Left = 1155
  Top = 5055
  Width = 2520
  Height = 1875
  Visible = 0   'False
  TabIndex = 8
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
    Left = 0
    Top = 0
    Width = 2325
    Height = 1830
    TabStop = 0   'False
    TabIndex = 9
  End
End
Begin Frame Frame1
  Caption = "Site Selection"
  Left = 6975
  Top = 240
  Width = 4065
  Height = 3540
  Visible = 0   'False
  TabIndex = 3
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox txtSite
    Index = 0
    Left = 1095
    Top = 285
    Width = 2820
    Height = 360
    TabIndex = 5
  End
  Begin CommandButton Command1
    Caption = "&OK"
    Left = 1485
    Top = 3060
    Width = 1485
    Height = 390
    TabIndex = 4
  End
  Begin DataGrid DGSite
    Left = 1095
    Top = 660
    Width = 2835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin Label Label1
    Caption = "Site Name"
    Left = 120
    Top = 315
    Width = 900
    Height = 270
    TabIndex = 7
  End
End
Begin CommandButton BtnParam
  Caption = "&For Site"
  BackColor = &HC0C0C0&
  Left = 9255
  Top = 0
  Width = 1305
  Height = 375
  Visible = 0   'False
  TabIndex = 2
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DownPicture = "rMemberRepView.frx":0
  ToolTipText = "Works Only at Head Office"
End
Begin MSHFlexGrid GridSel
  Index = 1
  Left = 90
  Top = 1785
  Width = 4695
  Height = 1650
  Visible = 0   'False
  TabIndex = 18
End
Begin MSHFlexGrid GridSel
  Index = 2
  Left = 4860
  Top = 1785
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 19
End
Begin MSHFlexGrid GridSel
  Index = 4
  Left = 4875
  Top = 3810
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 20
End
Begin MSHFlexGrid GridSel
  Index = 3
  Left = 75
  Top = 3825
  Width = 4710
  Height = 1650
  Visible = 0   'False
  TabIndex = 21
End
Begin MSHFlexGrid FGrid
  Left = 240
  Top = 75
  Width = 4485
  Height = 1560
  TabIndex = 22
End
Begin Label LblProcess
  ForeColor = &HC0&
  Left = 15
  Top = 8340
  Width = 6060
  Height = 360
  TabIndex = 35
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Ä&U«a‚'DØ§)ñÅzäZÄ]1MúÄ+î~»:Ç:O≠3ôfœ∑ ™ `”ì                                    QÖ  ´    rInventRepView 
 ReportForm ¿¿ˇ ‡‡‡ 
 b #>  lt  6             Ë  &        (    (       @         Ä                        Ä  Ä   ÄÄ Ä   Ä Ä ÄÄ  ¿¿¿ ÄÄÄ   ˇ  ˇ   ˇˇ ˇ   ˇ ˇ ˇˇ  ˇˇˇ    ÃÃÃÃÃÃÃÃÃÃ      ÃÃÃÃÃÃÃÃÃÃ        ÃÃÃÃÃ           ÃÃÃÃÃ            ÃÃÃÃ            ÃÃÃÃ            ˇˇ              ˇˇ               ˇˇˇˇˇ           ˇˇˇˇˇ           ˇˇˇˇà           ˇˇˇˇà           ˇˇˇˇˇ           ˇˇˇˇˇ          ˇˇˇˇˇˇˇ         ˇˇˇˇˇˇˇ           ˇˇàˇ            ˇˇàˇ           ˇˇˇà            ˇˇˇà           ˇˇˇˇˇ           ˇˇˇˇˇ             ˇˇ              ˇˇ                                                                                                                                          ¸  ?¸  ?ˇ ˇˇ ˇˇ¿ ˇˇ¿ ˇˇ  ?ˇ  ?ˇ  ?ˇ  ?¸  ?¸  ?      ?  ?  ˇ  ˇ  ˇ  ˇ ˇ ˇ¸  ˇ¸  ˇˇ ˇˇ ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ(                ¿                         Ä  Ä   ÄÄ Ä   Ä Ä ÄÄ  ¿¿¿ ÄÄÄ   ˇ  ˇ   ˇˇ ˇ   ˇ ˇ ˇˇ  ˇˇˇ  ÃÃÃÃ¿   ÃÃ      ÃÃ      ˇ       ˇˇ     ˇ¯     ˇˇ     ˇˇˇ     ˇè     ˇÄ     ˇˇ      ˇ                                   ¿  ‡    ¯      ‡  ¿  ¿  ¿  ¿  ¿  ‡    ˇˇ  ˇˇ  $ Form3 ( 0ˇ1ˇ5•   Y  ˇ-  ¶  @   êDB Arialˇ5    PictPreview  ˇˇ¿ ,  F#¶#  B  #ˇ$ - 2ˇ<    Text1 ¿¿ˇ   ¿   Ü∑*&    .   º‹| Arial0 ˇı   LblRep ˇ BTNENHLib4.BtnEnh ∂ kÔ4 -LB	 º    ´  i  B   ˇ˛ˇ.  R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial <    ÄÄ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ    Z `       ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ   öôôôôôπ?        J      ˇˇˇ ˇˇˇˇ         ˇˇˇˇˇ        ¿¿¿                ˇˇˇˇˇˇˇˇˇˇˇ ˇ˛ˇ.                                       @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ     ˇ˛ˇ               ˇ/    Frame2  Frame1     m)w
 3 " ˇS   
 BTNRefresh  Para&meters gã)fJ	 2    ºDB Tahoma%
 Parameters )ˇJ  Ä   BTNEXITz  E&xit   Nã)HJ	 1    ºDB Tahoma% Exit )ˇF  Ä  	 BtnPrintz  P&review   †ã)fJ	 0    ºDB Tahoma)ˇG  Ä 	 BtnPrintz 	 &WinPrint  ˜ã)fJ	 /    ºDB Tahoma)ˇG  Ä 	 BtnPrintz 	 &DosPrint  á|)ÉJ	 *    ºDB Tahoma)ˇ<    Text2 ¿¿ˇ   ¿   î∑*'    .   º‹| Arial0 ˇ<    Text3 ¿¿ˇ   ¿   ì∑*%    .   º‹| Arial0 ˇ<   	 Text4 ¿¿ˇ   ¿   °∑*$    .   º‹| Arial0 ˇ∂   FGrid1 ˇ% MSHierarchicalFlexGridLib.MSHFlexGrid - ÕO8ñ ( -LB	 g  !C4   Rc  Û5  BooP   å                       ˇˇˇ   ¿ ˇˇˇ   ¿ ˇˇˇ     ‡‡‡ ‡‡‡ ‡‡‡ ‡‡‡ ÄÄÄ       Äø                              ˇˇ                      H   ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ  Äˇˇˇˇˇˇˇˇ¿¿¿   Äø  Äø           ˇˇˇˇ   ˇˇˇˇ           ˇˇˇˇ             R„ëèŒù„ ™ K∏Q   êê_ Tahoma R„ëèŒù„ ™ K∏Q   ºê_ Arial    R„ëèŒù„ ™ K∏Qlt      ˇ Ä  BtnPrint ˇ BTNENHLib4.BtnEnh  4  ¡—+ -LB	 ’    ”  4  B   ˇ˛ˇ   R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇ,E : \ A n a l y s i s   S e r v i c e s \ i m a g e _ t o p c t r l \ P r i n t . g i f ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        5  Ï  )  Ï  xús˜t≥∞LT`P`¯˛ü¡⁄∆“ﬁ¡÷—…ﬁÕ›≈›√’◊œ;0( 8$0<"4**<&6*.>611.9%1##5??∑∞0Ø®®∞¢¢¨≤≤≤¶¶™Æ∂6©=9goLcc]ccc[[[{wgGG[WWg__ﬂƒâ¶Nô8uÍ‘ô3¶œõ7wÓºÛ,òΩr—Ç˘s-ú∑p·¬ãñ,Z≤|˘™’ÀWØ_πbŸ ï+ó-ŸºbÈ÷µÎ6-€∂n„Üu€∂nﬁ∂uÎ¶m;∑Ô⁄Ωc˚ñù@∞cˇé=˚˜Ó›µÔ¿¡ΩáO<x‡ËëCGè=v¸ƒ°ìÁO?zÊÙ…≥gN9}Ò‹ÖãŒü‚´W.›∏~ıÊçk∑nﬁ∏sÎ∆Ωª∑>z¯‰—ÉgOΩ|˛ÙÌÎóﬁΩ˘Ù·›óO˛ˇˇœ0
F¯œ†¯ìÖëHÎÄ∏†<¡¿Òü·?ßå«Üõ9ÑµbNlXx∏]@|ŸE%gÕ»MÅã∑Ò…äqÓ;·a¥XT;t⁄éƒ@˜ì:Ík*©∂ªJ©˚Œ[‚˘¥SîO,≈î»•œ'´{˚π,ë>uf±˚ $úÿO-òm0ë…$©K5¢ﬂH2€òcÏÇ∂Lt‚^·>› 2Ë€—ÓVÎ†?MGN/ˆ¶π(Öìk3◊Âw?>^,†Ë6≈e≠““S¬≤ä-%èéÒ…Î∏ı8<lr„ÎrÌ—±‘b]:AP1Hƒßp±a7èàA…'ÆK¶~ŒfI*≠EDÿÓUaÁ„‚3©`pdjÂŸS=π.0Ÿ•ÏŒ…ˇΩ'7lptÎbb`—(H`dfPÚ8–`Î¬qÁÜÊãı◊õ •(Ò0øå „äráj^ã,ª≈YeW®»	ª	46ÒÂk:≥Û-`o``Ÿ0›Å]≥bπ<´æÑaìÉÈVaùáÖ‹y∂âG∏%tha`Ê¸ï™‡¬[.h‚‘%‹*‡X™∏EbÜÄÊÉ√|¶ ö∫˘?˛8¿,‘–,®≥¿ô]≤F%⁄É≈Œ·¢ÄfG@å´"Ø…≈à˛ΩÀı%ÿ/Õk`”z±†ÅçÖ¡ d[                                          @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ      ˇ˛ˇE : \ B I \ I C O \ P r i n t D i s a b l e . G I F ú           ˇˇˇˇñ   Ñ   6  xúsÚ5„a 3 ÷ b(fdêÄH@ÂëÅ•çı(ràv1àôB®eVì)¥Ö†ôDZA™9ƒ[AéˇI∞Ö3â0”
¬∆R pZAô±hÊS7~±öO#[ËúV©h-2/©ÊShçJπn˛àÚ¬†"¸Vêm&VÛ©b⁄(¢ s˛ú?              J Print ˇI  
 LblRefresh ˇ BTNENHLib4.BtnEnh     s—, -LB	 ˜    ù	  4  B   ˇ˛ˇR e f r e s h  R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   º‹| Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ s y n c . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ   ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        ï          ˇˇˇˇ    }  6	  xú•ñPT◊∆/Ø]VQ,æxÉÄ∫»a$è"5$c«Ã‘ÛíZ•RMåöà—Ñ1’&
ËòBP— `Çèbå¨%F|/ë èeóeÒÅ¨ãÀ˛z¿Ëdv2”ˇÃ7ÁŒ=s˜;ﬂ˘ﬂ3wÍÃ(Ö‘_QBJ!˜üe'˘ﬂü¯y˛∑TDÆ§Õí6ÜeJï¡i ≠ÅªÌò∞Ÿeö=!ü;îÖe;&¸/F‹È!n›WÌêÚ¬3$TﬂJåΩ"·Æì]/1¢FbTç=^5éå´î°,ñû·DXÆlÎ£å–"Ái <èxˆQnë∑_¬∑N¬KpΩµblo!ﬂk¯÷:TÎÃ∏˙¡åopAU7î‡CŒÑÏíYT˘Œû}øLß<ﬂ›r∆ÙêØﬁ+˘Ñà|O	ø>ÇÎ#Fo°1Z{¥é7:¶sA≠w%RÔFd„H‘⁄ëÑG£:ÔäøXÀ»Z<äD∑´Qùty»W}.|ä<F÷ﬁ˜⁄«ˆ
–:†‘Àò†Wf¬ƒ&W&7è`Jã”Ø˚◊@å1êh1™~E¿Ÿﬂ°nû¿Ùˆﬂ£,øœWeIyA˘˜ÛuˇI¬Sd„ßµ#HÁà“† ÙíúßœcJÈ0Êkûa©nÈwsx£m3[CxÈv$/∂F1£u"SnN‚˘€±¸…ÚO¸‡∆ª$Ep™}Ib∏FåU¬≠»£—âOí±€…¨ﬁ„ÙAT°<<¢HûyHæ3‚∞Ç?ˇ¯Ÿ÷"^3O%·ŒyÂŒ,Ê›ôÕÀ|ñv/g≤fT_ﬂm(í&∏√≈;<™Ï	“ DÆÉòQ™`zâ"q†S ◊yg;Úæ)Ö%sXﬁπÄ∑;ÛNW´ªí˘»˙	±◊º	N≥Ø-ˆ‘Mcá˚èå©ï°jra∆©¡<|⁄Åÿcv…J√JFê‘ëÃ\Û≥,µº…ªwì|Ô}>Í^œÜÓMl∂e2•¡á–{EO≥«O#c¨≠=W¨0˝Í{˘~®wËA>9Œ$6Ø¶Ñsú¥ùgØ≠òTk6ÀªVí‹≥éè≠õŸ‘ªÉ)zˇ˛˝çˇR>¸©˝≤¯ß
‰—áDoU0˘Ä< Ô}TËÔS‡î>ráC]`©+1UœêlN„,5•íBNê≈A¢u^Ï˚Édﬁ˜ú4Ìq¨ﬂR˛%Œsºé»v∫ó…M™À~ÃmI`øÌ—ıJ˛Ω" ˝Å◊˚uaÉ∫_ﬂºÏº≥ÏÕas˛üwVª,{Õ’\<O‚Ê·L?ºEWc‚≥Ê3RïE˘¬!uÀFßü[Ìˇ8ñ6kbæÒ´©¥ƒ–¸Â§ä_ŒïΩÊÄnõ⁄m2ÙôC0‰z”v˙U:´”ËΩy[kñö/∏ö™ÊrJW>Ô˝(ø1+‹‘]˜!∂Êœ∞Í7sØÍ:.æK€—g9ˆÜ]F€ï¶å{1ÊO‡Fa∑®±T≠•aÔ,.ÆÒ+»ª.{“Zca∂¶t¨B6√∏q kK)mﬂƒT~õ†@ó•@üÂÜaó∆ºÒ\ˇ*ÇõEQò/$Sπ ìÛ´}÷úã:Qü£¶ªf÷∆Tzı[∞ÈS¡|âNM≤ªÒªøl¡ˇbÕª}1ÓÊ∆◊ë¬B˜vq˝¯JëK öˇù’ˇõt-=$ºn[Ëı€√ÕMπ—‹Ω˙Ωçõ∞j7”´K≈÷R ˆ∞ä∂‚hL%”ÂãDÊY."wå{π^®‚Üﬁz8Ü÷#±tT.·^SæXK*∑N≠¿P0ì€«ÁsÁÃ¨ıÎÈ©ˇá`"Ù©»fXË8ü‘ó}^ﬂO%∫b»*r˜¢1”O‰…≠√O“ZÀÌ“xL«_ƒT>õˆäW±T˛ïªóñ—UµÇÓÍ5"óuÙ‘≠«⁄∞Åﬁ&¡6_°G_@€ëßû˚ßˇÓFÀ7Æn‚ªDœñ≥´Ç0‰«—V«Ìc/`:9ÛÈóÈ8ÛñsãÈº,¯öï‹ÎÁØ¸zçπ¬w==MrÒy¿ØX6úÔﬂvß|âgˇzŒ¨Ùı<ª ◊“∞3éˆ≥K0ˇÁÃsˇuë’B·?âª¢ˇ∫ÆÆ¢Gª⁄Œa3iÓg"|ˇí›W'	ˆﬂ<~u>\N	‹™I√ı≤≈¥_\OWC=Ü|¨ÜBl7èA{5›˙":.ºG€ø¢Ê˝hï'z¯Ò†jRÉj”ïeı€T4n°µdû¯>¢i…üƒ≠Ø£+≈>mÏÎì«=ˇ_Ï√;ñV      ˇˇˇ ˇˇˇˇ        ˇˇˇˇˇ        ¿¿¿                ˇˇˇˇˇˇˇˇˇˇˇ ˇ˛ˇR e f r e s h                                       @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ     ˇ˛ˇE : \ B I \ g i f \ 2 4 x 2 4 \ S t o p   s i g n . g i f (          ˇˇˇˇñ     ˆ  xúÖî}le«Ø,tÎÀÆw◊óµ[eå¯á[√¢√ÕUùlsVYL∞€∫9…Ü≤ ∞∫çΩ°11bLÄ®q√ê`» ˛'—¯té–1 æl´•Ñ∂◊Î=Ωˆ≤ê˘{ÓZÈ`Ã'ü{ÚΩÁ˘›Á˘]ì^ızAIH£Æá‡2'/Ö4ƒ∑…˝•áÇxπ‚xÜ‚‰‚£PøíeƒF˝yã1Aj¢§6ägµDO™ÑÃåÛP∂Ñ$É¯ƒd¯:7W µ!]ˆ‡£I°E†Ç‚˚HFM∆ °Ë0≈ÑÒLat∫d#ô)íœZ˛ÕΩ*¯A@b]£ı,cÀ–˙Üb¯)
©î?¿Éií1KŒè arXΩ9Ã 9¶∆§¸,£Á%’XRbæ∏¢1÷∞å>/ãÑ9|?´œ·’Íüîg)Ì˜kjÃ
NgÂ»<ŒêœWF C~·÷ kÄ-sDkå–Ê»ô<c·Ùfìã_POO<\…ÎËÒ∂-^ ‰–iö±Zø≥Ÿ&!
xÇ∏Ë¨ı™®Y ¯l—‘W -úOò…B{Ãiˇ|jy ?~˝ÖÖÅP^ªàŒß€£”xÜSÚxË‹TU´&Ù•“ıB±Ì≤≈zU´˘
∫Æ⁄Ÿ©Òà‰ôŸ‡º
·Ωw˝–Ãêuö	ŸCW4Ê[¶yçÍ£Ûñ◊Y¶õ•è\ìè€÷6≥åÙÀ"”7⁄,Ñl˙zvÔÈòñ“€ï&ÎÚìÂ:;ÑäÚiyÒ‡˛†íˆÅvjú«u`∞' ø U››urGÓ™œ ≠ˆ≠Ãˇ›Q5ªc_‚‰Q|:©ô…‘¯‡]‚ÔÒˆ9*n@hoÑoj2yï˜Ûƒ„ ¬ŒŒà˝±iGµﬂ≥_|˚uÏI$n√¸·>ΩÌ—a~n.}aæÂ\ãﬂñoü™âÿÀˇOÔA±‚yÓùΩ±+ﬁπ√Òó\‹©œ‚«é Ñv7gØf?`˜°xYÁﬁ √:T¬ºÆñs∂#TVú_†˙NT˜*⁄∞mÙ†∫]8À‘ÔBõ:ës;zn+_∑’Ô@∑£⁄óì@ﬁÏÏe7Jl˛M.ˆ–¢´5t£∆ÆÆªŸ,Œ$íûZ[,-¿_¨§( ™èNãÓ^‘‘ã‹}Çúõz0ç=ã˘ªQS¨ÍiVñ»£ƒrπ∏√câÊ~‘<ÄZQ3–üõ˚¯›ª°K äÉw}Çd’«g≈÷=BÎîhˇ˚PÎõ±™g"•´Cã~◊ÿ"—#Áƒ-oÄ$LÚ‚ ¶eêU€ê,aó¯DÉ™±âˇÙKÒ≠qËËˆé`ÜFƒ}«D,)Êñê»jj÷rÎ—{©}6Í®‰ï¸øR˝i              J Refresh/Parameter ˇ^ Ä   BtnPrint ˇ BTNENHLib4.BtnEnh   s  º—- -LB	     ”  4  B   ˇ˛ˇ   R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ t e x t   p r e v i e w . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        »          ˇˇˇˇ    ∞  6	  xú•îyLTWáÈfıè˛—-5Möö6MçM⁄∆Vm⁄‘¶¶*¶°⁄*äFÎFMIÏ"#Z¢∏†TAEYã *Ç2¨ÇÄtX*¢≤≤¬¿√¨ oøﬁ˜™£’Qi{^~yÛrÔ˘Ê,˜ûOÁMü‡£ÿt°…BoÈ1üI/‹ZêmÙ{Y™y„	˝ó⁄8˜i~ˆØh¬¥|ﬁ ∆∑ôªˇó∆ΩA5∞˛t>o©≤ÓÊoˆs_'ˇ’üGëx7M<>æ˚Ìﬁ¯›⁄‘À¶	ΩÔUIK¶í¥x*…SIøSóº«∏è»Ö:¡ˆâöµ¯ﬁ˙ÏY;≈ø”>Ä”fˆ¢AÜbÕ—è≈÷èÕ2Äœ‚|≤%∏"¸û⁄)ÚS„≠ø˜ÛÔ®8'õ† Ç˝ødÌú9OL¿aÎÂ≥-≈|S&·Ûd4<±Ë,[>˚Pæ.OMÊ™=Ú{˝UÇóbh;…M©ä€%.UU6ˇˆÆdﬁ	˜6âq¡ZÙÕ⁄Ú6Ãº/˛ïüA„—0î :*≈ªY®◊””¯Â˛§Æ˛ÜI˚ïo}ÛcÊú8IVH†H>óé¸ÏÌ\ˆ$€5ëá…Ûáf„4õ…Oùıè˙¨üı√ÖQtkbÈ©Hb§_ã€^èÀvïQ∑\C
≥∂¨Ñ_}'ãO˙ñj¡Ó°¸€Ò´¯C≈NÙÂIÙWß1ÿòR/.gª»C«®S/v∫io¨'=fó‚w]˜'[ø~ﬁ+ˇ‡&?ÿa"zY ˆ‹_0‘§`ΩVÄS_ã•I4”eƒmΩÇdΩ,vDM »à€£¯u5î≥m—ã^˘G"yÓW∆ ÿ@w¸å⁄d·ŸÆ¯€teÿ;ãê,ZF˙‰~∑q•Ú(·æoãÙ”¢=√ˆÄóºÚ’ªWy‚wãß"_√y’BL˘—]◊¿h´»CÉ£≥Ñæ™4.eâù’ƒ¨[Å∂0õ¡ûÍK‘D.}Ÿ+ˇTÏ˜w¯nó∏õ&ˆ}∑›ûÂÙÁGaÆWcºöMá&éﬁíﬂ¿xä¬à	Q—Z[Ñ^W√Ö3qDæ‚ïüó¯ìß>ôﬂŒ5öA ⁄π⁄∞éR’W4Ô]∆@VC·Ùùç /‚6/X¿¡ÖÔ7
∫⁄J≥bÿ±bíW~AÍ&O¸#n7í$)≤Xlîk
8®⁄»·MaPÖêIn“.*N«QûI±Z•(uÀlvØz”+ø0-¸Œ˘πÕwπê‹7F¨8¨=Xç]ò˚ªïXãíBîΩv´Eô˝-ï‰˙yŒxÂ´∑zÍsÏV}‰:•ã≥î&Êuäò√…Ú\⁄Ó˚öá/≥[Îä∂|áº±e+˛=‚Æ˛ä¯]nF≈u⁄Õ◊1¥7—€XC◊ÂJÍÚ…å]£∞ÕÜNrˆ=î≠3¢<|Ir3$Ÿ±Ù·0t`ËjÁ„"mãD¨yh≥c~”≈Rr„É…æó/€MÒ‹p:pÙbÍn¶£±öñöÀOp˛xÒÇYò:&∂lÁ≤v*|YVs&}+]∫:⁄ hÆ9K]©öÍúX*2w(±À|yÊéÖ}õ_*|K“∑#˜¢$]V$ÁéEq.c≈…°ßÜë{(ò£ªñåâ˝ex                                          @ÄÄ           ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ          ˇˇˇˇ      ˇ˛ˇ!E : \ B I \ I C O \ t e x t   p r e v i e w d i s a b l e . b m p ]          ˇˇˇˇñ   E  ˆ  xúsÚ˝∆∆ f@¨ƒPÃ&@Âë¡h›¯	àö7}o!µn˛—π„;};’˛ˇ÷‘ˇH hØ†4IËÁ˘JÜ…>™ˇØ4√ÕiXÛZPL”¡∏¿ﬂ£YN:œ„˛ÔHG3G⁄‘%j¡©®ß—P‹‚≥qKœ∆.9≥¯lÙ‚3?¶∫31É•å·ˇætdÂOø
qèØ *‡‡‚‚ÂÁÂÂ˙ø‘’óïAãÅ·W1√ﬂçQˇQ™9P‰ËÌ[;uÍÑ5Î¶oŸîò Õ+±ªﬁqπ9É0√ÔRÜ?À<™Wæ√jéä{T¨#¥ÒŒÉ‘	ãƒ˝YÕŸxuuÕÕ7Ïœõ≥pS √Ø*÷üLe‘L1ÕIÌ=äÏû9ª∂jD42 √Ä€íÅAçöt“ÊØâûπ¸~Ü ê-£fÜﬂó ˇ¿ˆÖ¬^ÚÆ©<
n,<:¨ºJå¨¬£ñlÁ∆eNbÀ>∏ø&Ô;ƒ·\&Ìñ-i«&j Ã£«¬´…ƒ,¬¿¬	‘ndÎêª„:'∑å™Iı ∑XÕÅ∏ßy’´bÎ8QìH_V	.&.fΩ∞Ç"†J)ÉÍo–ÃIn⁄1áÉ[∏t¡BØ:q„>%.#~ı f>-V>mq5€ê¨|†JYÎ™eØ–ÃâØ\Iá!sN‘/Y"ù6Cƒ4ñÅA®ûW≈ñGŒâïﬂîMÊäZñµ;.r	ä™özV,yÅfNT·,à{òò≠\›löW
ªñrJπ10)Û)πqÀ9àôG
È20òLõkÍÏ+ )ØÁUæË)ö9~Ÿ°Ê0≥ÚgLô©í?_‘µLP/JD”Wﬁ-K¬!ìAƒœ"•±†ΩYŸ»IF≈ÿ¬3´t·#4s‹ª ˛
û},dŒ±òÈõìzßŸ5ØVÀ[ ÿŒÈR+ÊQÈ^Ÿ”∞jUÚ YÆ™πÿîÃΩèféKtƒ=lÃÃ¨`¿œœkÌÊí‹‹ö–‘ò“‹[YÓWdÂìeYÓ’D—ı€g›@3«9≤_sXXXôYŸŸ¯∏˘$˘DdE•Åpäk*‡·„>™:ñÓI›¿‹ÑnNT5ƒ_°`}6ÁD‰ÇS1ãœƒKå•g+v‹Öò4DŸ–	h0…˝« é·ï∞pffeafb·‰‚óWPó–0ñ’∂4tOŒû4DP\Œ;}*VC@ÊÑîAÃaeeÊdÂa„„óóUóQ—W‘wR6t7ı- ö£ÆoÁï6ó!»ÊÄ+Fv.n.!	ai5yUcoÎ õ† ¥ñ}Œq-x˚¿b†9@ƒ'(),£,´b®®c´fÏahe‚ùm\t–`±Ä«à9v¡%a¿Är¢r˚–2˚ê«ÿ«ËFØ§	EãÒ —”N              J Preview ˇ∆   BTNEXIT ˇ BTNENHLib4.BtnEnh ı
  ¡—. -LB	 Ñ    ”  4  B   ˇ˛ˇ  R„ëèŒù„ ™ K∏Q   º¿‘ Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial R„ëèŒù„ ™ K∏Q   êDB Arial  <    ÄÄ ˇ˛ˇE : \ B I \ I C O \ e x i t . i c o ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ     ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ ˇ˛ˇ    ˇˇˇˇ ˇˇˇˇˇˇˇˇ ˇ˛ˇ    ˇ˛ˇ     Z `      ˇ˛ˇ  ( ˇˇˇˇ2  ÄÄÄ    öôôôôôπ?        Ü          ˇˇˇˇ    n  6	  xú•‘}Le «q$‹‹∂a[Z^JÅåe¿x[õÚôdô3»"XBïŸÄ∫LBY(§–∞¢8¬[xÕ %∫92+ä¿(FT¨l§ctº˝±üOŒ†©Ÿ%ü‹s˜‰æ˜¥πªc|Æ•ôa„Æƒ·-œô16'∂Êüe˚Ã◊LÆ(ßc∏Ñ÷3,¢	ÜETªgØ˛ΩâBÃ~RTêæà˙_›D:¡¯øÕ˙$ÍÖëîÀ˝‘Or˝Ã~óÏÿˇßÂ11ı+ŸIjÆ)˝∆”Ù—"÷˚)»5á“–ßuGLCm¶Ù[ﬁwî_àb¿Íe
≤¸Õ1!a`Ddo‘XuINªˆ≠,j^¸k‹y÷Y^ÎK“œ4«§ƒ£•t£b{4º«‹µo˚Í‡”π˙@q<”–Üí~•F/1å“?
  RightToLeft = -1  'True
End

Attribute VB_Name = "rMemberRepView"

Private global_160 As Integer
Private global_226 As Integer
Private global_156 As Integer
Private global_158 As Integer
Private global_164 As Variant
Private global_196 As Integer
Private global_198 As Integer
Private global_152 As Long
Private global_134 As Integer
Private global_132 As Integer
Private global_136 As Variant

Private Sub DGSite_UnknownEvent_9 'F44204
  'Data Table: 563038
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F440FB: Me.DGSite.Visible = False
  loc_F4411A: If (Me.RecordCount > 0) Then
  loc_F44159:   Set var_B4 = Me.txtSite
  loc_F4415F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44167:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4419A:   var_B0 = Me.Fields.Item("Name")
  loc_F441B9:   Set var_B4 = Me.txtSite
  loc_F441BF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F441C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F441DD: End If
  loc_F441E8: Set var_A8 = Me.txtSite
  loc_F441EE: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F441F6: var_B0.SetFocus
  loc_F44202: Exit Sub
End Sub

Private Sub Command1_Click() 'E9DA94
  'Data Table: 563038
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9DA1C: Me.Frame1.Visible = False
  loc_E9DA32: Set var_88 = Me.txtSite
  loc_E9DA38: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9DA4B: global_88 = var_8C.Tag
  loc_E9DA67: Set var_88 = Me.txtSite
  loc_E9DA6D: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9DA80: global_92 = var_8C.Text
  loc_E9DA8E: Call Proc_292_90_154EAE0()
  loc_E9DA93: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FFAD98
  'Data Table: 563038
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFABA9: Set var_88 = Me.Check1
  loc_FFABAF: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFABCD: If (CLng(var_8C.Value) = 0) Then
  loc_FFABDE:   Set var_88 = Me.GridSel
  loc_FFABE4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFABEC:   var_8C.Enabled = True
  loc_FFAC02:   Set var_88 = Me.GridSel
  loc_FFAC08:   Call 0.Method_Check1_Click0 (Index)
  loc_FFAC29:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFAC3F:     Set var_88 = Me.GridSel
  loc_FFAC45:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAC4D:     var_8C.Row = 1
  loc_FFAC6C:     Set var_88 = Me.GridSel
  loc_FFAC72:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAC7A:     var_8C.Col = 0
  loc_FFAC86:   End If
  loc_FFAC89: Else
  loc_FFAC98:   Set var_88 = Me.GridSel
  loc_FFAC9E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFACA6:   var_8C.Enabled = False
  loc_FFACBC:   Set var_88 = Me.GridSel
  loc_FFACC2:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFACE3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFACF9:     Set var_88 = Me.GridSel
  loc_FFACFF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAD26:     Set var_88 = Me.GridSel
  loc_FFAD2C:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAD34:     var_8C.Col = 0
  loc_FFAD4A:     Set var_88 = Me.GridSel
  loc_FFAD50:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAD67:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFAD76:     Set var_C4 = Me.GridSel
  loc_FFAD7C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFAD84:     var_C8.RowSel = 0
  loc_FFAD97:   End If
  loc_FFAD97: End If
  loc_FFAD97: Exit Sub
End Sub

Private Sub Check1_GotFocus() 'DFBAC4
  'Data Table: 563038
  loc_DFBAC0: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23EF4
  'Data Table: 563038
  loc_E23EDA: If (Shift = &HD) Then
  loc_E23EEB:   Proc_303_0_FB9B68("	")
  loc_E23EF3: End If
  loc_E23EF3: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'DFB478
  'Data Table: 563038
  loc_DFB474: Exit Sub
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FCB1D8
  'Data Table: 563038
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCB038: On Error Goto loc_FCB1AD
  loc_FCB03E: var_8A = Index
  loc_FCB049: If (var_8A = CInt(0)) Then
  loc_FCB09A:   Set var_98 = Me.txtSite
  loc_FCB0A0:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCB0A8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCB0C0:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCB0C3:     Exit Sub
  loc_FCB0C4:   End If
  loc_FCB0D1:   Set var_98 = Me.txtSite
  loc_FCB0D7:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCB0DF:   var_A0 = var_9C.Text
  loc_FCB0E7:   var_D8 = CVar(var_A0) 'String
  loc_FCB12C:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCB135:     Me.MoveFirst
  loc_FCB15A:     Set var_98 = Me.txtSite
  loc_FCB160:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCB168:     0 = var_9C.Text
  loc_FCB176:     Proc_6_17_EAA2B0(var_D8, CVar(var_A0))
  loc_FCB18C:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCB1A4:   End If
  loc_FCB1A4: End If
  loc_FCB1A9: Set var_88 = Nothing
  loc_FCB1AC: Exit Sub
  loc_FCB1AD: ' Referenced from: FCB038
  loc_FCB1B3: Call 0.Method_arg_50 (var_A0)
  loc_FCB1BB: var_100 = "txtSite_GotFocus"
  loc_FCB1C8: Proc_6_152_1077F50(var_A0)
  loc_FCB1D4: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFD7B4
  'Data Table: 563038
  loc_EFD6F0: On Error Goto loc_EFD789
  loc_EFD6F9: If (Shift = &HD) Then
  loc_EFD704:   var_88 = "	"
  loc_EFD70A:   Proc_303_0_FB9B68(var_88)
  loc_EFD712: End If
  loc_EFD720: If (KeyCode = CInt(0)) Then
  loc_EFD73B:   Set var_A0 = Nothing
  loc_EFD746:   Set var_9C = Nothing
  loc_EFD774:   Proc_6_69_134A198(Me.DGSite, Me.txtSite, KeyCode, global_204, Shift, &HFF)
  loc_EFD788: End If
  loc_EFD788: Exit Sub
  loc_EFD789: ' Referenced from: EFD6F0
  loc_EFD78F: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFD7A4: Proc_6_152_1077F50(var_88, "txtSite_KeyDown", 0)
  loc_EFD7B0: Exit Sub
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC680C
  'Data Table: 563038
  loc_EC6774: On Error Goto loc_EC67E1
  loc_EC6785: If (KeyAscii = CInt(0)) Then
  loc_EC67A4:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC67B6:     var_A0 = "Name"
  loc_EC67D1:     Proc_6_89_146F1AC(Me.txtSite, KeyAscii, global_204, arg_10)
  loc_EC67E0:   End If
  loc_EC67E0: End If
  loc_EC67E0: Exit Sub
  loc_EC67E1: ' Referenced from: EC6774
  loc_EC67E7: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC67FC: Proc_6_152_1077F50(var_A0, "txtSite_KeyPress")
  loc_EC6808: Exit Sub
  loc_EC6809: StAryRecCopy
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDEFB0
  'Data Table: 563038
  loc_EDEF00: On Error Goto loc_EDEF87
  loc_EDEF11: If (KeyCode = CInt(0)) Then
  loc_EDEF37:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDEF48:     Call txtSite_KeyDown(KeyCode, global_156)
  loc_EDEF5C:     var_A4 = "Name"
  loc_EDEF77:     Proc_6_89_146F1AC(Me.txtSite, KeyCode, global_204, Shift)
  loc_EDEF86:   End If
  loc_EDEF86: End If
  loc_EDEF86: Exit Sub
  loc_EDEF87: ' Referenced from: EDEF00
  loc_EDEF8D: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDEFA2: Proc_6_152_1077F50(var_A4, "txtSite_KeyUp")
  loc_EDEFAE: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E88D34
  'Data Table: 563038
  loc_E88CC8: On Error Goto loc_E88D0B
  loc_E88CD3: Call txtSite_Validate(Index)
  loc_E88CF3: If (Me.FrmList.Visible = &HFF) Then
  loc_E88D02:   Me.FrmList.Visible = False
  loc_E88D0A: End If
  loc_E88D0A: Exit Sub
  loc_E88D0B: ' Referenced from: E88CC8
  loc_E88D11: Call 0.Method_arg_50 (var_90)
  loc_E88D26: Proc_6_152_1077F50(var_90, "txtSite_LostFocus")
  loc_E88D32: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD93A4
  'Data Table: 563038
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD91DC: On Error Goto loc_FD937B
  loc_FD91E2: var_86 = Cancel
  loc_FD91ED: If (var_86 = CInt(0)) Then
  loc_FD923E:   Set var_94 = Me.txtSite
  loc_FD9244:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD924C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD9264:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD9275:     Set var_94 = Me.txtSite
  loc_FD927B:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD9283:     var_98.Tag = vbNullString
  loc_FD929D:     Set var_94 = Me.txtSite
  loc_FD92A3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD92AB:     var_98.Text = vbNullString
  loc_FD92BA:   Else
  loc_FD92F6:     Set var_B0 = Me.txtSite
  loc_FD92FC:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9304:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD9348:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD9356:     Set var_B0 = Me.txtSite
  loc_FD935C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9364:     var_B4.Tag = var_9C
  loc_FD937A:   End If
  loc_FD937A: End If
  loc_FD937A: Exit Sub
  loc_FD937B: ' Referenced from: FD91DC
  loc_FD9381: Call 0.Method_arg_50 (var_9C)
  loc_FD9389: var_CC = "txtSite_Validate"
  loc_FD9396: Proc_6_152_1077F50(var_9C)
  loc_FD93A2: Exit Sub
End Sub

Private Sub LblRefresh_UnknownEvent_9 'F1AF24
  'Data Table: 563038
  Dim var_A8 As Variant
  loc_F1AE32: Me.FGrid1.Visible = True
  loc_F1AE47: Set var_A8 = Me.BtnPrint
  loc_F1AE4D: Call 0.Method_LblRefresh_UnknownEvent_90 (3, var_AC)
  loc_F1AE55: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1AE6E: Set var_A8 = Me.BtnPrint
  loc_F1AE74: Call 0.Method_LblRefresh_UnknownEvent_90 (2, var_AC)
  loc_F1AE7C: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1AE8C: Set var_A8 = Me.LblRefresh
  loc_F1AE92: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_69()
  loc_F1AEA7: If (CLng(CInt()) = 1) Then
  loc_F1AEB4:   Set var_A8 = Me.LblRefresh
  loc_F1AEBA:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA("Paramater")
  loc_F1AECF:   Me.LblProcess.Caption = "Please Wait..."
  loc_F1AEE1:   Me.LblProcess.Refresh
  loc_F1AEE9:   Call Proc_292_83_1688A70()
  loc_F1AEF1: Else
  loc_F1AEFB:   Set var_A8 = Me.LblRefresh
  loc_F1AF01:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA("Refresh")
  loc_F1AF16:   Me.LblProcess.Caption = " "
  loc_F1AF1E:   Call Proc_292_93_E235C4()
  loc_F1AF23: End If
  loc_F1AF23: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '16D6018
  'Data Table: 563038
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_56303E As Connection15
  Dim var_BC As Variant
  Dim var_94 As Recordset15
  Dim var_D4 As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_13C As String
  Dim var_118 As Variant
  loc_16D45DC: On Error Goto loc_16D6012
  loc_16D45E4: global_160 = &HFF
  loc_16D45EB: Set var_98 = Me.FGrid1
  loc_16D45F1: var_A8 = var_98.DataSource
  loc_16D460D: If (var_A8 Is Nothing) Then
  loc_16D4610:   Exit Sub
  loc_16D4611: End If
  loc_16D4627: unk_56303E.Execute "Select * From FAEnviro", var_A8, -1
  loc_16D4632: Set var_94 = var_98
  loc_16D464A: var_98 = var_94.Fields
  loc_16D46AE: var_138 = IIf((Proc_6_38_E68A98(CVar(var_98.Item("daterfill")), var_98) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_16D46B7: MemVar_1F923C0 = CStr(var_138)
  loc_16D474B: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_16D4754: MemVar_1F923C4 = CStr(var_138)
  loc_16D47E8: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_16D4815: var_BC = "linefiller"
  loc_16D4829: var_AC = var_94.Fields.Item(var_BC)
  loc_16D4840: var_D4 = "linefiller"
  loc_16D4868: var_108 = "-"
  loc_16D4885: var_138 = IIf((Proc_6_38_E68A98(CVar(var_AC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_D4)))))
  loc_16D488E: MemVar_1F923CC = CStr(var_138)
  loc_16D48C1: var_140 = CStr(Me.FGrid1.Tag)
  loc_16D48D2: If (var_140 = "MemVisitDetail") Then
  loc_16D48D8:   var_88 = "MemVisitDetail"
  loc_16D48E1:   global_120 = "Member Visit Detail"
  loc_16D48E8: Else
  loc_16D48F0:   If (var_140 = "MemMalingLabels") Then
  loc_16D48F6:     var_88 = "MemMalingLabels"
  loc_16D48FF:     global_120 = "Members Mailing Labels Report"
  loc_16D4906:   Else
  loc_16D490E:     If (var_140 = "MemSalesRegister") Then
  loc_16D4914:       var_88 = "MemSalesRegister"
  loc_16D491D:       global_120 = "Member Sales Register"
  loc_16D4924:     Else
  loc_16D492C:       If (var_140 = "MemTaxReport") Then
  loc_16D4932:         var_88 = "MemTaxReport"
  loc_16D493B:         global_120 = "Member Tax Report"
  loc_16D4942:       Else
  loc_16D494A:         If (var_140 = "PaymentDueLetterReport") Then
  loc_16D4950:           var_88 = "PaymentDueLetterReport"
  loc_16D4959:           global_120 = "Payment Due Letter Report"
  loc_16D4960:         Else
  loc_16D4968:           If (var_140 = "MemBirthAnnvDtls") Then
  loc_16D496E:             var_88 = "MemBirthAnnvDtls"
  loc_16D4977:             global_120 = "Member Birthday/Anniversary Details"
  loc_16D497E:           Else
  loc_16D4986:             If (var_140 = "MemBirthMailLabel") Then
  loc_16D498C:               var_88 = "MemBirthMailLabel"
  loc_16D4995:               global_120 = "Member Birthday/Anniversary Details"
  loc_16D4999:             End If
  loc_16D4999:           End If
  loc_16D4999:         End If
  loc_16D4999:       End If
  loc_16D4999:     End If
  loc_16D4999:   End If
  loc_16D4999: End If
  loc_16D49A2: If (global_160 = 0) Then
  loc_16D49A5:   Exit Sub
  loc_16D49A6: End If
  loc_16D49AA: Set var_98 = Me.FGrid1
  loc_16D49E7: Set var_C4 = var_98.DataSource
  loc_16D49ED: CreateFieldDefFile(var_C4, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_16D4A1B: var_C0 = "\" & var_88
  loc_16D4A2F: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C0 & ".RPT", var_BC, var_98)
  loc_16D4A3A: MemVar_1F921E4 = var_98
  loc_16D4A56: Set var_98 = Me.FGrid1
  loc_16D4A5C: var_A8 = var_98.DataSource
  loc_16D4A67: CVarUnk
  loc_16D4A75: Call 0.Method_arg_64 (var_AC, var_A8, var_BC, var_D4)
  loc_16D4A7D: Call 0.Method_arg_2C (var_A8, MemVar_1F923CC)
  loc_16D4A96: Call 0.Method_arg_150 (global_160)
  loc_16D4AAC: Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D4AB4: Call 0.Method_arg_24 (var_8A)
  loc_16D4AC0: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_16D4AD9:   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4AE1:   Call 0.Method_arg_20 (var_AC)
  loc_16D4AE9:   Call 0.Method_arg_30 (var_C0)
  loc_16D4AFF:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_16D4B2F:   If (var_160 = Ucase("comp_name")) Then
  loc_16D4B53:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4B5B:     Call 0.Method_arg_20 (var_AC)
  loc_16D4B63:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_16D4B79:   Else
  loc_16D4B9B:     If (var_160 = Ucase("comp_add1")) Then
  loc_16D4BBF:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4BC7:       Call 0.Method_arg_20 (var_AC)
  loc_16D4BCF:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_16D4BE5:     Else
  loc_16D4C07:       If (var_160 = Ucase("comp_pin")) Then
  loc_16D4C2B:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4C33:         Call 0.Method_arg_20 (var_AC)
  loc_16D4C3B:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_16D4C51:       Else
  loc_16D4C73:         If (var_160 = Ucase("comp_GSTIN")) Then
  loc_16D4C7D:           var_C0 = "'" & MemVar_1F92154
  loc_16D4C97:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4C9F:           Call 0.Method_arg_20 (var_AC)
  loc_16D4CA7:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_16D4CBD:         Else
  loc_16D4CDF:           If (var_160 = Ucase("Title")) Then
  loc_16D4CEB:             Call 0.Method_arg_50 (var_C0)
  loc_16D4D0E:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4D16:             Call 0.Method_arg_20 (var_AC)
  loc_16D4D1E:             Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_16D4D36:           Else
  loc_16D4D58:             If (var_160 = Ucase("BetweenDate")) Then
  loc_16D4D65:               Set var_98 = Me.Text1
  loc_16D4D8E:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D4D96:               Call 0.Method_arg_20 (var_C4)
  loc_16D4D9E:               Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_16D4DB8:             Else
  loc_16D4DDA:               If (var_160 = Ucase("Dater")) Then
  loc_16D4DFE:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4E06:                 Call 0.Method_arg_20 (var_AC)
  loc_16D4E0E:                 Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_16D4E24:               Else
  loc_16D4E46:                 If (var_160 = Ucase("Pager")) Then
  loc_16D4E50:                   var_C0 = "'" & MemVar_1F923C4
  loc_16D4E6A:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4E72:                   Call 0.Method_arg_20 (var_AC)
  loc_16D4E7A:                   Call 0.Method_arg_38 (var_C0 & "'")
  loc_16D4E8D:                 End If
  loc_16D4E8D:               End If
  loc_16D4E8D:             End If
  loc_16D4E8D:           End If
  loc_16D4E8D:         End If
  loc_16D4E8D:       End If
  loc_16D4E8D:     End If
  loc_16D4E8D:   End If
  loc_16D4E90: Next var_150 'Integer
  loc_16D4E99: Set var_98 = Me.FGrid1
  loc_16D4EA7: var_168 = CStr(var_98.Tag)
  loc_16D4EB8: If (var_168 = "MemSalesRegister") Then
  loc_16D4ECC:   Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D4ED4:   Call 0.Method_arg_24 (var_8A)
  loc_16D4EE0:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_16D4EF9:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D4F01:     Call 0.Method_arg_20 (var_AC)
  loc_16D4F09:     Call 0.Method_arg_30 (var_C0)
  loc_16D4F1F:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_16D4F4F:     If (var_17C = Ucase("ForCategory")) Then
  loc_16D4F59:       Set var_98 = Me.Text2
  loc_16D4F88:       var_128 = "'" & Left(CVar(var_98.Text), &H96) & "'" 
  loc_16D4FA0:       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D4FA8:       Call 0.Method_arg_20 (var_C4)
  loc_16D4FB0:       Call 0.Method_arg_38 (CStr(var_128))
  loc_16D4FCF:     Else
  loc_16D4FF1:       If (var_17C = Ucase("ShortNameDetail")) Then
  loc_16D5035:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D503D:         Call 0.Method_arg_20 (var_AC)
  loc_16D5045:         Call 0.Method_arg_38 (CStr("'" & Left(global_220, &HFE) & "'"))
  loc_16D5060:       Else
  loc_16D5082:         If (var_17C = Ucase("Tax1")) Then
  loc_16D50CD:           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D50D5:           Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D50DD:           Call 0.Method_arg_38 ("'")
  loc_16D50FA:         Else
  loc_16D511C:           If (var_17C = Ucase("Tax2")) Then
  loc_16D5167:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D516F:             Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5177:             Call 0.Method_arg_38 ("'")
  loc_16D5194:           Else
  loc_16D51B6:             If (var_17C = Ucase("Tax3")) Then
  loc_16D5201:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5209:               Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5211:               Call 0.Method_arg_38 ("'")
  loc_16D522E:             Else
  loc_16D5250:               If (var_17C = Ucase("Tax4")) Then
  loc_16D529B:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D52A3:                 Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D52AB:                 Call 0.Method_arg_38 ("'")
  loc_16D52C8:               Else
  loc_16D52EA:                 If (var_17C = Ucase("Tax5")) Then
  loc_16D5335:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D533D:                   Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5345:                   Call 0.Method_arg_38 ("'")
  loc_16D5362:                 Else
  loc_16D5384:                   If (var_17C = Ucase("Tax6")) Then
  loc_16D53CF:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D53D7:                     Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D53DF:                     Call 0.Method_arg_38 ("'")
  loc_16D53FC:                   Else
  loc_16D541E:                     If (var_17C = Ucase("Tax7")) Then
  loc_16D5469:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5471:                       Call 0.Method_arg_20 (&HF & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5479:                       Call 0.Method_arg_38 ("'")
  loc_16D5496:                     Else
  loc_16D54B8:                       If (var_17C = Ucase("Tax8")) Then
  loc_16D5503:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D550B:                         Call 0.Method_arg_20 (&H10 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5513:                         Call 0.Method_arg_38 ("'")
  loc_16D552D:                       End If
  loc_16D552D:                     End If
  loc_16D552D:                   End If
  loc_16D552D:                 End If
  loc_16D552D:               End If
  loc_16D552D:             End If
  loc_16D552D:           End If
  loc_16D552D:         End If
  loc_16D552D:       End If
  loc_16D552D:     End If
  loc_16D5530:   Next var_16C 'Integer
  loc_16D553B:   If (Cancel = 1) Then
  loc_16D554B:     ReDim Preserve var_90(0 To 1)
  loc_16D5580:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_16D5597:     Set var_98 = Me.Text2
  loc_16D559D:     var_C0 = var_98.Text
  loc_16D55B8:     var_90(1) = vbNullString & var_C0 & vbNullString
  loc_16D55C5:   End If
  loc_16D55C8: Else
  loc_16D55D0:   If (var_168 = "MemTaxReport") Then
  loc_16D55E4:     Call 0.Method_arg_90 (var_98, var_14C)
  loc_16D55EC:     Call 0.Method_arg_24 (var_8A)
  loc_16D55F8:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_16D5611:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5619:       Call 0.Method_arg_20 (var_AC)
  loc_16D5621:       Call 0.Method_arg_30 (var_C0)
  loc_16D5637:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_16D5667:       If (var_190 = Ucase("ForTax")) Then
  loc_16D5674:         Set var_98 = Me.Text2
  loc_16D569D:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_16D56A5:         Call 0.Method_arg_20 (var_C4)
  loc_16D56AD:         Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_16D56C7:       Else
  loc_16D56E9:         If (var_190 = Ucase("ShortNameDetail")) Then
  loc_16D5715:           var_118 = "'" & Left(global_220, &HFE) & "'" 
  loc_16D572D:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_16D5735:           Call 0.Method_arg_20 (var_AC)
  loc_16D573D:           Call 0.Method_arg_38 (CStr(var_118))
  loc_16D5758:         Else
  loc_16D577A:           If (var_190 = Ucase("Chrg1")) Then
  loc_16D57C5:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D57CD:             Call 0.Method_arg_20 (4 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D57D5:             Call 0.Method_arg_38 ("'")
  loc_16D57F2:           Else
  loc_16D5814:             If (var_190 = Ucase("Chrg2")) Then
  loc_16D585F:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5867:               Call 0.Method_arg_20 (5 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D586F:               Call 0.Method_arg_38 ("'")
  loc_16D588C:             Else
  loc_16D58AE:               If (var_190 = Ucase("Chrg3")) Then
  loc_16D58F9:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5901:                 Call 0.Method_arg_20 (6 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5909:                 Call 0.Method_arg_38 ("'")
  loc_16D5926:               Else
  loc_16D5948:                 If (var_190 = Ucase("Chrg4")) Then
  loc_16D5993:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D599B:                   Call 0.Method_arg_20 (7 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D59A3:                   Call 0.Method_arg_38 ("'")
  loc_16D59C0:                 Else
  loc_16D59E2:                   If (var_190 = Ucase("Chrg5")) Then
  loc_16D5A2D:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5A35:                     Call 0.Method_arg_20 (8 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5A3D:                     Call 0.Method_arg_38 ("'")
  loc_16D5A5A:                   Else
  loc_16D5A7C:                     If (var_190 = Ucase("Chrg6")) Then
  loc_16D5AC7:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5ACF:                       Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5AD7:                       Call 0.Method_arg_38 ("'")
  loc_16D5AF4:                     Else
  loc_16D5B16:                       If (var_190 = Ucase("Chrg7")) Then
  loc_16D5B61:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5B69:                         Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5B71:                         Call 0.Method_arg_38 ("'")
  loc_16D5B8E:                       Else
  loc_16D5BB0:                         If (var_190 = Ucase("Chrg8")) Then
  loc_16D5BFB:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5C03:                           Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5C0B:                           Call 0.Method_arg_38 ("'")
  loc_16D5C28:                         Else
  loc_16D5C4A:                           If (var_190 = Ucase("Chrg9")) Then
  loc_16D5C95:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5C9D:                             Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5CA5:                             Call 0.Method_arg_38 ("'")
  loc_16D5CC2:                           Else
  loc_16D5CE4:                             If (var_190 = Ucase("Chrg10")) Then
  loc_16D5D2F:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5D37:                               Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5D3F:                               Call 0.Method_arg_38 ("'")
  loc_16D5D5C:                             Else
  loc_16D5D7E:                               If (var_190 = Ucase("ChrgOther")) Then
  loc_16D5DC9:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_16D5DD1:                                 Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_16D5DD9:                                 Call 0.Method_arg_38 ("'")
  loc_16D5DF3:                               End If
  loc_16D5DF3:                             End If
  loc_16D5DF3:                           End If
  loc_16D5DF3:                         End If
  loc_16D5DF3:                       End If
  loc_16D5DF3:                     End If
  loc_16D5DF3:                   End If
  loc_16D5DF3:                 End If
  loc_16D5DF3:               End If
  loc_16D5DF3:             End If
  loc_16D5DF3:           End If
  loc_16D5DF3:         End If
  loc_16D5DF3:       End If
  loc_16D5DF6:     Next var_180 'Integer
  loc_16D5E01:     If (Cancel = 1) Then
  loc_16D5E11:       ReDim Preserve var_90(0 To 1)
  loc_16D5E46:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_16D5E7E:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_16D5E8B:     End If
  loc_16D5E8B:   End If
  loc_16D5E8B: End If
  loc_16D5E91: If (Cancel = 1) Then
  loc_16D5EB7:   If (CStr(Me.FGrid1.Tag) = "MemSalesRegister") Then
  loc_16D5ED5:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_16D5EF1:     If (MsgBox(var_A8, &H41, "Paper Setting", var_118, var_128) = 2) Then
  loc_16D5EF4:       Exit Sub
  loc_16D5EF5:     End If
  loc_16D5F01:     var_13C = 0
  loc_16D5F0A:     var_C0 = "C"
  loc_16D5F25:     Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_120)
  loc_16D5F3E:   Else
  loc_16D5F59:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_16D5F75:     If (MsgBox(var_A8, &H41, "Paper Setting", var_118, var_128) = 2) Then
  loc_16D5F78:       Exit Sub
  loc_16D5F79:     End If
  loc_16D5F85:     var_13C = 0
  loc_16D5FA9:     Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_120, var_90, "N")
  loc_16D5FBF:   End If
  loc_16D5FC2: Else
  loc_16D5FDE:   Set var_98 = MemVar_1F921E4 
  loc_16D5FEA:   Proc_6_99_1483714(var_98, Cancel, global_120, &HFF, Nothing)
  loc_16D5FF5:   MemVar_1F921E4 = var_98
  loc_16D6000: End If
  loc_16D6005: global_226 = 0
  loc_16D600D: MemVar_1F921E4 = Nothing
  loc_16D6011: Exit Sub
  loc_16D6012: ' Referenced from: 16D45DC
  loc_16D6012: Proc_6_60_E62BC4(global_226, var_13C, var_90)
  loc_16D6017: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9D9D8
  'Data Table: 563038
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9D95A: Set global_204 = New 
  loc_E9D96C: Me.Recordset15.CursorLocation = 3
  loc_E9D994: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F92044), 0
  loc_E9D9A2: CVarUnk
  loc_E9D9A7: VerifyVarObj
  loc_E9D9AD: Set var_88 = Me.DGSite
  loc_E9D9B3: LateIdStAd
  loc_E9D9CD: Me.Frame1.Visible = True
  loc_E9D9D5: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E1ACE4
  'Data Table: 563038
  loc_E1ACD9: Me.Global.Unload Me
  loc_E1ACE1: Exit Sub
  loc_E1ACE2: Loop Until  'do at: E16D1C
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F26690
  'Data Table: 563038
  loc_F26593: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F265BE:   Set var_90 = Me.GridSel
  loc_F265C4:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F265EC:   Me.TxtSearch.Visible = False
  loc_F265F4: End If
  loc_F265FE: If (CLng(KeyCode) = &H2E) Then
  loc_F2660E:   Me.TxtSearch.Text = vbNullString
  loc_F26616: End If
  loc_F2662B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F26656:   Set var_90 = Me.GridSel
  loc_F2665C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F26684:   Me.TxtSearch.Visible = False
  loc_F2668C: End If
  loc_F2668C: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11D0BE0
  'Data Table: 563038
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11D07A9: var_90 = Me.TxtSearch.Tag
  loc_11D07BE: If (var_90 = CStr(1)) Then
  loc_11D0814:   Set var_A0 = Me.GridSel
  loc_11D081A:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11D0890:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D08BB: Else
  loc_11D08CA:   If (var_90 = CStr(2)) Then
  loc_11D08F5:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D0920:     Set var_A0 = Me.GridSel
  loc_11D0926:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D099C:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D09C7:   Else
  loc_11D09D6:     If (var_90 = CStr(3)) Then
  loc_11D0A01:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D0A2C:       Set var_A0 = Me.GridSel
  loc_11D0A32:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D0A3A:       var_B4 = var_A4.Col
  loc_11D0AA8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_112, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D0AD3:     Else
  loc_11D0AE2:       If (var_90 = CStr(4)) Then
  loc_11D0B0D:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D0B38:         Set var_A0 = Me.GridSel
  loc_11D0B3E:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11D0BB4:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_116, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D0BDC:       End If
  loc_11D0BDC:     End If
  loc_11D0BDC:   End If
  loc_11D0BDC: End If
  loc_11D0BDC: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'DFC520
  'Data Table: 563038
  Dim arg_7FFF As Double
  loc_DFC51C: Exit Sub
  loc_DFC51D: arg_7FFF = 
End Sub

Private Sub TxtSearch_Click() 'E90E08
  'Data Table: 563038
  loc_E90DA1: Me.TxtSearch.Text = vbNullString
  loc_E90DD1: Set var_90 = Me.GridSel
  loc_E90DD7: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E90DFF: Me.TxtSearch.Visible = False
  loc_E90E07: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E456FC
  'Data Table: 563038
  Dim var_8C As TextBox
  loc_E456D0: Call Proc_292_86_EB69BC()
  loc_E456E0: Set var_88 = Me.TxtGrid
  loc_E456E6: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E456EE: var_8C.Visible = False
  loc_E456FA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'DFD1B8
  'Data Table: 563038
  loc_DFD1B4: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1070A30
  'Data Table: 563038
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10707DB: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_134))) Then
  loc_10707E6:   var_9C = "+{Tab}"
  loc_10707EC:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_10707F6:   arg_C = 0
  loc_10707FC: Else
  loc_1070833:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_132))) Then
  loc_1070844:     Proc_303_0_FB9B68("	", 0)
  loc_107084E:     arg_C = 0
  loc_1070851:   End If
  loc_1070851: End If
  loc_1070857: global_156 = arg_C
  loc_107087D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10708A1: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10708B7:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10708CF:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10708D4:   var_104 = vbNullString
  loc_10708DE:   Set var_118 = Me.FGrid
  loc_10708E4:   LateIdCallSt
  loc_107090F:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1070914:   var_E4 = 2
  loc_107091D:   var_104 = vbNullString
  loc_1070927:   Set var_C4 = Me.FGrid
  loc_107092D:   LateIdCallSt
  loc_107093F: End If
  loc_1070949: If (CLng(arg_C) = &HD) Then
  loc_107095F:   var_11C = CLng(Me.FGrid.Row)
  loc_107096F:   If Not (var_11C = CLng(0)) Then
  loc_1070979:     If Not (var_11C = CLng(1)) Then
  loc_1070983:       If Not (var_11C = CLng(2)) Then
  loc_107098D:         If Not (var_11C = CLng(3)) Then
  loc_1070997:           If Not (var_11C = CLng(4)) Then
  loc_10709A1:             If Not (var_11C = CLng(5)) Then
  loc_10709AB:               If Not (var_11C = CLng(6)) Then
  loc_10709B5:                 If Not (var_11C = CLng(7)) Then
  loc_10709BF:                   If Not (var_11C = CLng(8)) Then
  loc_10709C9:                     If (var_11C = CLng(9)) Then
  loc_10709CC:                     End If
  loc_10709CC:                   End If
  loc_10709CC:                 End If
  loc_10709CC:               End If
  loc_10709CC:             End If
  loc_10709CC:           End If
  loc_10709CC:         End If
  loc_10709CC:       End If
  loc_10709CC:     End If
  loc_1070A0D:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_1070A27:     global_158 = 0
  loc_1070A2A:   End If
  loc_1070A2A: End If
  loc_1070A2C: arg_C = 0
  loc_1070A2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F09C94
  'Data Table: 563038
  Dim var_9C As Long
  loc_F09BC7: var_9C = CLng(Me.FGrid.Row)
  loc_F09BD7: If Not (var_9C = CLng(0)) Then
  loc_F09BE1:   If Not (var_9C = CLng(1)) Then
  loc_F09BEB:     If Not (var_9C = CLng(2)) Then
  loc_F09BF5:       If Not (var_9C = CLng(3)) Then
  loc_F09BFF:         If Not (var_9C = CLng(4)) Then
  loc_F09C09:           If Not (var_9C = CLng(5)) Then
  loc_F09C13:             If Not (var_9C = CLng(6)) Then
  loc_F09C1D:               If Not (var_9C = CLng(7)) Then
  loc_F09C27:                 If Not (var_9C = CLng(8)) Then
  loc_F09C31:                   If (var_9C = CLng(9)) Then
  loc_F09C34:                   End If
  loc_F09C34:                 End If
  loc_F09C34:               End If
  loc_F09C34:             End If
  loc_F09C34:           End If
  loc_F09C34:         End If
  loc_F09C34:       End If
  loc_F09C34:     End If
  loc_F09C34:   End If
  loc_F09C4C:   var_AC = 0
  loc_F09C75:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F09C8A: End If
  loc_F09C8F: global_158 = 0
  loc_F09C92: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F7184C
  'Data Table: 563038
  Dim var_9C As Long
  loc_F71723: var_9C = CLng(Me.FGrid.Row)
  loc_F71733: If Not (var_9C = CLng(5)) Then
  loc_F7173D:   If Not (var_9C = CLng(6)) Then
  loc_F71747:     If Not (var_9C = CLng(7)) Then
  loc_F71751:       If Not (var_9C = CLng(8)) Then
  loc_F7175B:         If (var_9C = CLng(9)) Then
  loc_F7175E:         End If
  loc_F7175E:       End If
  loc_F7175E:     End If
  loc_F7175E:   End If
  loc_F7179C:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F717B1: Else
  loc_F717B8:   If Not (var_9C = CLng(0)) Then
  loc_F717C2:     If Not (var_9C = CLng(1)) Then
  loc_F717CC:       If Not (var_9C = CLng(2)) Then
  loc_F717D6:         If Not (var_9C = CLng(3)) Then
  loc_F717E0:           If (var_9C = CLng(4)) Then
  loc_F717E3:           End If
  loc_F717E3:         End If
  loc_F717E3:       End If
  loc_F717E3:     End If
  loc_F71821:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F71833:   End If
  loc_F71833: End If
  loc_F7183D: If (CLng(Index) <> &HD) Then
  loc_F71845:   global_158 = &HFF
  loc_F71848: End If
  loc_F71848: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'DFD150
  'Data Table: 563038
  loc_DFD14C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'DFCA00
  'Data Table: 563038
  loc_DFC9FC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E425C4
  'Data Table: 563038
  Dim var_8C As TextBox
  loc_E425A3: Set var_88 = Me.TxtGrid
  loc_E425A9: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E425B1: var_8C.Visible = False
  loc_E425BD: Call Proc_292_86_EB69BC()
  loc_E425C2: Exit Sub
End Sub

Private Sub Form_Load() '1296388
  'Data Table: 563038
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1295D90: On Error Goto loc_1296380
  loc_1295DA1: Me.PictParameter.BackColor = CLng(MemVar_1F921B0)
  loc_1295DB7: Me.PictPreview.BackColor = CLng(MemVar_1F921B0)
  loc_1295DD2: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295DED: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295DFC: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1295E13: Set var_88 = Me.GridSel
  loc_1295E19: Call 0.Method_Form_Load0 (1, var_AC)
  loc_1295E21: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295E3F: Set var_88 = Me.GridSel
  loc_1295E45: Call 0.Method_Form_Load0 (2, var_AC)
  loc_1295E4D: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295E6B: Set var_88 = Me.GridSel
  loc_1295E71: Call 0.Method_Form_Load0 (3, var_AC)
  loc_1295E79: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295E97: Set var_88 = Me.GridSel
  loc_1295E9D: Call 0.Method_Form_Load0 (4, var_AC)
  loc_1295EA5: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1295EBF: Me.Text1.BackColor = CLng(MemVar_1F921B0)
  loc_1295ED5: Me.Text2.BackColor = CLng(MemVar_1F921B0)
  loc_1295EEB: Me.Text3.BackColor = CLng(MemVar_1F921B0)
  loc_1295EFB: Set var_88 = Me.Text4
  loc_1295F01: var_88.BackColor = CLng(MemVar_1F921B0)
  loc_1295F12: Call 0.Method_arg_160 (var_88)
  loc_1295F20: Call 0.Method_arg_164 (var_88)
  loc_1295F28: var_98 = "Add"
  loc_1295F32: Set var_88 = Me.POSMas
  loc_1295F48: Set var_88 = Me.LblCompany
  loc_1295F4E: MDIForm1.LblCompany.Left = CDbl(0)
  loc_1295F64: Me.Text2.Left = CDbl(0)
  loc_1295F7A: Me.Text3.Left = CDbl(0)
  loc_1295F90: Me.Text4.Left = CDbl(0)
  loc_1295F9B: var_98 = CVar(CDbl(0)) 'Single
  loc_1295FAA: Me.FGrid1.Left = var_98
  loc_1295FB6: Set var_AC = Me.LblRefresh
  loc_1295FBC: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(POSMas.DispID_68030005)
  loc_1295FC9: Set var_88 = Me.LblRefresh
  loc_1295FCF: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_98)
  loc_1295FE9: Me.Text1.Top = (CDbl() + CDbl(var_CC))
  loc_1296034: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_1296078: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_12960BC: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_12960D1: Set var_AC = Me.Text4
  loc_12960E9: var_D4 = Me.Text4.Top
  loc_12960F5: var_98 = CVar((var_D4 + var_AC.Height)) 'Single
  loc_1296104: Me.FGrid1.Top = var_98
  loc_1296118: Call 0.Method_Me0 (var_D4)
  loc_129612F: Me.Text1.Width = (var_D4 - CDbl(&H32))
  loc_129613D: Call 0.Method_Me0 (var_D4)
  loc_1296154: Me.Text2.Width = (var_D4 - CDbl(&H32))
  loc_1296162: Call 0.Method_Me0 (var_D4)
  loc_1296179: Me.Text3.Width = (var_D4 - CDbl(&H32))
  loc_1296187: Call 0.Method_Me0 (var_D4)
  loc_129619E: Me.Text4.Width = (var_D4 - CDbl(&H32))
  loc_12961AC: Call 0.Method_Me0 (var_D4)
  loc_12961B8: var_98 = CVar((var_D4 - CDbl(&H32))) 'Single
  loc_12961C7: Me.FGrid1.Width = var_98
  loc_12961D5: Call 0.Method_Me8 (var_D4)
  loc_12961EC: Me.FGrid1.Height = CVar(var_D4)
  loc_12961FA: var_DC = global_52
  loc_1296205: If (var_DC = "MemVisitDetail") Then
  loc_129620E:   Call 0.Method_arg_54 ("Member Visit Detail")
  loc_1296216: Else
  loc_129621E:   If (var_DC = "MemMalingLabels") Then
  loc_1296227:     Call 0.Method_arg_54 ("Member Mailing Labels")
  loc_129622F:   Else
  loc_1296237:     If (var_DC = "MemSalesRegister") Then
  loc_1296240:       Call 0.Method_arg_54 ("Member Sales Register")
  loc_1296248:     Else
  loc_1296250:       If (var_DC = "MemTaxReport") Then
  loc_1296259:         Call 0.Method_arg_54 ("Member Tax Report")
  loc_1296261:       Else
  loc_1296269:         If (var_DC = "PaymentDueLetterReport") Then
  loc_1296272:           Call 0.Method_arg_54 ("Payment Due Letter Report")
  loc_129627A:         Else
  loc_1296282:           If (var_DC = "MemBirthAnnvDtls") Then
  loc_129628B:             Call 0.Method_arg_54 ("Member Birthday/Anniversary Details")
  loc_1296290:           End If
  loc_1296290:         End If
  loc_1296290:       End If
  loc_1296290:     End If
  loc_1296290:   End If
  loc_1296290: End If
  loc_1296296: Call rMemberRepView.global_88Put(MemVar_1F92078)
  loc_12962A1: Call rMemberRepView.global_92Put(MemVar_1F923D4)
  loc_12962AC: Call 0.Method_arg_50 (var_E0)
  loc_12962B7: Call 0.Method_arg_54 (var_E0)
  loc_12962CD: Set var_88 = Me.txtSite
  loc_12962D3: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12962DB: var_AC.Tag = MemVar_1F92078
  loc_12962F5: Set var_88 = Me.txtSite
  loc_12962FB: Call 0.Method_Form_Load0 (0, var_AC)
  loc_1296303: var_AC.Text = MemVar_1F923D4
  loc_1296315: Call 0.Method_arg_50 (var_E0)
  loc_1296329: Me.LblTitle.Caption = var_E0
  loc_129633A: Call 0.Method_arg_50 (var_E0)
  loc_129634A: Set var_88 = Me.LblRep
  loc_1296350: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_E0))
  loc_1296363: If (MemVar_1F92070 = "HO") Then
  loc_1296372:   Me.BtnParam.Visible = True
  loc_129637A: End If
  loc_129637A: Call Proc_292_85_15C1680()
  loc_129637F: Exit Sub
  loc_1296380: ' Referenced from: 1295D90
  loc_1296380: Proc_6_60_E62BC4()
  loc_1296385: Exit Sub
End Sub

Private Sub Form_Resize() 'F834EC
  'Data Table: 563038
  Dim var_AC As Variant
  loc_F83398: On Error Resume Next
  loc_F833A3: Call 0.Method_arg_98 (var_86)
  loc_F833B2: If (CLng(var_86) <> 1) Then
  loc_F833CD:   Proc_6_23_DFBA28(Me, 0)
  loc_F833DF:   Call 0.Method_arg_7C (CDbl(590))
  loc_F833ED:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_F833F2: End If
  loc_F833FC: Call 0.Method_arg_100 (var_94)
  loc_F83408: If (var_94 > CDbl(0)) Then
  loc_F83425:   Call 0.Method_arg_100 (var_94)
  loc_F8343C:   Me.PictPreview.Width = (var_94 - Me.PictParameter.ScaleWidth)
  loc_F83463:   var_AC = CVar((Me.PictPreview.ScaleWidth - CDbl(&H4B))) 'Single
  loc_F83472:   Me.FGrid1.Width = var_AC
  loc_F834C5:   var_AC = CVar(((Me.PictPreview.ScaleHeight - (Me.Text4.Top + Me.Text4.Height)) - CDbl(&H4B))) 'Single
  loc_F834D4:   Me.FGrid1.Height = var_AC
  loc_F834E4: End If
  loc_F834E8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7BCD0
  'Data Table: 563038
  loc_E7BC77: Set global_104 = Nothing
  loc_E7BC89: Set global_108 = Nothing
  loc_E7BC9B: Set global_112 = Nothing
  loc_E7BCAD: Set global_116 = Nothing
  loc_E7BCBF: Set global_200 = Nothing
  loc_E7BCCB: MemVar_1F921E4 = Nothing
  loc_E7BCCF: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '124EC08
  'Data Table: 563038
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  loc_124E6E3: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124E721: Set var_108 = Me.TxtGrid
  loc_124E727: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_124E72F: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_124E770: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_124E779:   var_118 = global_52
  loc_124E784:   If (var_118 = "MemMalingLabels") Then
  loc_124E794:     ReDim var_11C(0 To 2)
  loc_124E7AB:     var_11C(0) = "Residential Address"
  loc_124E7BA:     var_11C(1) = "Workplace Address"
  loc_124E7C9:     var_11C(2) = "Abroad Address"
  loc_124E820:     Set global_200 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_124E834:   Else
  loc_124E83C:     If Not (var_118 = "MemSalesRegister") Then
  loc_124E847:       If (var_118 = "MemVisitDetail") Then
  loc_124E84A:       End If
  loc_124E857:       ReDim var_11C(0 To 1)
  loc_124E86E:       var_11C(0) = "Yes"
  loc_124E87D:       var_11C(1) = "No"
  loc_124E8D4:       Set global_200 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_124E8E8:     Else
  loc_124E8F0:       If (var_118 = "PaymentDueLetterReport") Then
  loc_124E900:         ReDim var_11C(0 To 2)
  loc_124E917:         var_11C(0) = "Article_26(a)"
  loc_124E926:         var_11C(1) = "Article_26(b)"
  loc_124E935:         var_11C(2) = "Article_23"
  loc_124E98C:         Set global_200 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 3, Array(var_11C))
  loc_124E9A0:       Else
  loc_124E9A8:         If (var_118 = "MemBirthAnnvDtls") Then
  loc_124E9B8:           ReDim var_11C(0 To 1)
  loc_124E9CF:           var_11C(0) = "Report"
  loc_124E9DE:           var_11C(1) = "Mailing Label"
  loc_124E9F5:           global_164 = Array(var_11C)
  loc_124EA00:           Set var_108 = Me.ListView
  loc_124EA1B:           Set var_A0 = Me.TxtGrid
  loc_124EA35:           Set global_200 = Proc_6_66_EFF8FC(var_108, var_A0, Index, global_164, 2, global_164)
  loc_124EA49:         Else
  loc_124EA51:           If (var_118 = "MemTaxReport") Then
  loc_124EA60:             Set var_8C = Me.TxtGrid
  loc_124EA66:             Call 0.Method_TxtGrid_GotFocus0 (0, var_A0, var_124, global_164)
  loc_124EA6E:             3 = var_A0.Left
  loc_124EA85:             Me.DGTax.Left = CVar(var_124)
  loc_124EA9F:             Set var_F4 = Me.TxtGrid
  loc_124EAA5:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_128)
  loc_124EAAD:             global_164 = var_108.Height
  loc_124EABE:             Set var_8C = Me.TxtGrid
  loc_124EAC4:             Call 0.Method_TxtGrid_GotFocus0 (0, var_A0, var_124)
  loc_124EACC:             var_114 = var_A0.Top
  loc_124EAD8:             var_C0 = CVar((var_124 + var_128)) 'Single
  loc_124EAE7:             Me.DGTax.Top = CVar(var_124)
  loc_124EB07:             Me.DGTax.Visible = True
  loc_124EB0F:           End If
  loc_124EB0F:         End If
  loc_124EB0F:       End If
  loc_124EB0F:     End If
  loc_124EB0F:   End If
  loc_124EB12: Else
  loc_124EB19:   If (var_114 = CLng(3)) Then
  loc_124EB2D:     If (global_52 = "MemMalingLabels") Then
  loc_124EB3D:       ReDim var_11C(0 To 3)
  loc_124EB54:       var_11C(0) = "ConPerson"
  loc_124EB63:       var_11C(1) = "City"
  loc_124EB72:       var_11C(2) = "Name"
  loc_124EB81:       var_11C(3) = "Pincode"
  loc_124EBD8:       Set global_200 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_124EBE9:     End If
  loc_124EBEC:   Else
  loc_124EBF3:     If (var_114 = CLng(4)) Then
  loc_124EBFC:       var_130 = global_52
  loc_124EBFF:     End If
  loc_124EBFF:   End If
  loc_124EBFF: End If
  loc_124EC04: Set var_88 = Nothing
  loc_124EC07: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '124F1A4
  'Data Table: 563038
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_124EC82: If (CLng(Shift) = &H1B) Then
  loc_124EC91:   Set var_8C = Me.TxtGrid
  loc_124EC97:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_124ECB0:   Set var_98 = Me.TxtGrid
  loc_124ECB6:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124ECBE:   var_9C.Text = var_90.Tag
  loc_124ECDA:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_124ECE3:   Set var_8C = Me.FGrid
  loc_124ECFF:   Set var_8C = Me.TxtGrid
  loc_124ED05:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_124ED0D:   var_90.Visible = FGrid.DispID_8001
  loc_124ED19:   Call Proc_292_86_EB69BC(arg_14)
  loc_124ED1E:   Exit Sub
  loc_124ED1F: End If
  loc_124ED32: var_B0 = CLng(Me.FGrid.Row)
  loc_124ED42: If (var_B0 = CLng(2)) Then
  loc_124ED4B:   var_B4 = global_52
  loc_124ED56:   If (var_B4 = "MemTaxReport") Then
  loc_124ED62:     var_B8 = Me.RecordCount
  loc_124ED70:     If (var_B8 > 0) Then
  loc_124ED7D:       If (CLng(Shift) = &H1B) Then
  loc_124ED9C:         If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_124EDAE:           Me.DGTax.Visible = False
  loc_124EDB6:         End If
  loc_124EDB6:         Exit Sub
  loc_124EDB7:       End If
  loc_124EDC2:       Set var_E8 = Me.TxtGrid
  loc_124EDCF:       Set var_9C = Nothing
  loc_124EDFB:       Set var_90 = var_E8
  loc_124EE0A:       Proc_6_69_134A198(Me.DGTax, var_90, 0, global_216, Shift, &HFF)
  loc_124EE41:       If ((Shift = &HD) And (CBool(Me.DGTax.Visible) = 0)) Then
  loc_124EE51:         Call Proc_292_84_125C528(0, 0, var_DE, 1)
  loc_124EE5C:         If (var_DE = &HFF) Then
  loc_124EE5F:           Call Proc_292_88_F001EC(Nothing, var_9C)
  loc_124EE64:         End If
  loc_124EE64:       End If
  loc_124EE64:     End If
  loc_124EE67:   Else
  loc_124EE6F:     If Not (var_B4 = "MemSalesRegister") Then
  loc_124EE7A:       If Not (var_B4 = "MemVisitDetail") Then
  loc_124EE85:         If Not (var_B4 = "MemMalingLabels") Then
  loc_124EE90:           If Not (var_B4 = "PaymentDueLetterReport") Then
  loc_124EE9B:             If (var_B4 = "MemBirthAnnvDtls") Then
  loc_124EE9E:             End If
  loc_124EE9E:           End If
  loc_124EE9E:         End If
  loc_124EE9E:       End If
  loc_124EEBF:       Set var_8C = Me.TxtGrid
  loc_124EEC5:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_124EECD:       0 = var_90.Left
  loc_124EEDE:       Set var_98 = Me.TxtGrid
  loc_124EEE4:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124EEFD:       Set var_E4 = Me.TxtGrid
  loc_124EF03:       Call 0.Method_TxtGrid_KeyDown0 (0, var_E8)
  loc_124EF1C:       Set var_F4 = Me.TxtGrid
  loc_124EF22:       Call 0.Method_TxtGrid_KeyDown0 (0, var_F8)
  loc_124EF77:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_124EFA5:       If (CLng(Shift) = &HD) Then
  loc_124EFB5:         Call Proc_292_84_125C528(0, 0, var_DE, CInt(var_B8))
  loc_124EFC0:         If (var_DE = &HFF) Then
  loc_124EFC3:           Call Proc_292_88_F001EC(CInt(((var_9C.Top + var_E8.Height) + CDbl(&H19))), CInt(var_F8.Width))
  loc_124EFC8:         End If
  loc_124EFC8:       End If
  loc_124EFC8:     End If
  loc_124EFC8:   End If
  loc_124EFCB: Else
  loc_124EFD2:   If (var_B0 = CLng(3)) Then
  loc_124EFE6:     If (global_52 = "MemMalingLabels") Then
  loc_124F00A:       Set var_8C = Me.TxtGrid
  loc_124F010:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_124F018:       0 = var_90.Left
  loc_124F029:       Set var_98 = Me.TxtGrid
  loc_124F02F:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_124F048:       Set var_E4 = Me.TxtGrid
  loc_124F04E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_E8)
  loc_124F067:       Set var_F4 = Me.TxtGrid
  loc_124F06D:       Call 0.Method_TxtGrid_KeyDown0 (0, var_F8)
  loc_124F0C2:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_124F0F0:       If (CLng(Shift) = &HD) Then
  loc_124F100:         Call Proc_292_84_125C528(0, 0, var_DE, CInt(var_B8))
  loc_124F10B:         If (var_DE = &HFF) Then
  loc_124F10E:           Call Proc_292_88_F001EC(CInt(((var_9C.Top + var_E8.Height) + CDbl(&H19))), CInt(var_F8.Width))
  loc_124F113:         End If
  loc_124F113:       End If
  loc_124F113:     End If
  loc_124F116:   Else
  loc_124F11D:     If (var_B0 = CLng(4)) Then
  loc_124F126:       var_120 = global_52
  loc_124F12C:     Else
  loc_124F133:       If Not (var_B0 = CLng(0)) Then
  loc_124F13D:         If (var_B0 = CLng(1)) Then
  loc_124F140:         End If
  loc_124F180:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_124F190:           Call Proc_292_84_125C528(0, 0, var_DE)
  loc_124F19B:           If (var_DE = &HFF) Then
  loc_124F19E:             Call Proc_292_88_F001EC(0)
  loc_124F1A3:           End If
  loc_124F1A3:         End If
  loc_124F1A3:       End If
  loc_124F1A3:     End If
  loc_124F1A3:   End If
  loc_124F1A3: End If
  loc_124F1A3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F267D4
  'Data Table: 563038
  loc_F266D3: Proc_6_58_E054C0(arg_10)
  loc_F266FB: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_F26704:   var_A0 = global_52
  loc_F2670F:   If (var_A0 = "MemMalingLabels") Then
  loc_F2672E:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F26740:       var_A4 = "Name"
  loc_F2675B:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_212, arg_10)
  loc_F2676A:     End If
  loc_F2676D:   Else
  loc_F26775:     If (var_A0 = "MemTaxReport") Then
  loc_F26794:       If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_F267C1:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_216, arg_10, "Name")
  loc_F267D0:       End If
  loc_F267D0:     End If
  loc_F267D0:   End If
  loc_F267D0: End If
  loc_F267D0: Exit Sub
  loc_F267D1: ThisVCallR8
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F932BC
  'Data Table: 563038
  loc_F9317F: If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_F93188:   var_A0 = global_52
  loc_F93193:   If Not (var_A0 = "MemSalesRegister") Then
  loc_F9319E:     If Not (var_A0 = "MemVisitDetail") Then
  loc_F931A9:       If Not (var_A0 = "MemMalingLabels") Then
  loc_F931B4:         If Not (var_A0 = "PaymentDueLetterReport") Then
  loc_F931BF:           If (var_A0 = "MemBirthAnnvDtls") Then
  loc_F931C2:           End If
  loc_F931C2:         End If
  loc_F931C2:       End If
  loc_F931C2:     End If
  loc_F931F0:     Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0)
  loc_F93222:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F93233:       Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F93238:     End If
  loc_F9323B:   Else
  loc_F93243:     If (var_A0 = "MemTaxReport") Then
  loc_F93269:       If ((Shift <> &HD) And (CBool(Me.DGTax.Visible) = 0)) Then
  loc_F9327A:         Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F932A9:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_216, Shift, "Name", &HFF)
  loc_F932B8:       End If
  loc_F932B8:     End If
  loc_F932B8:   End If
  loc_F932B8: End If
  loc_F932B8: Exit Sub
  loc_F932B9: 0 = 0
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23C58
  'Data Table: 563038
  Dim arg_10 As Integer
  loc_E23C34: On Error Goto loc_E23C4F
  loc_E23C42: Call Proc_292_84_125C528(Cancel, &HFF)
  loc_E23C4B: arg_10 = Not(var_88)
  loc_E23C4E: Exit Sub
  loc_E23C4F: ' Referenced from: E23C34
  loc_E23C4F: Proc_6_60_E62BC4(arg_10)
  loc_E23C54: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB3058
  'Data Table: 563038
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB2FE4: Set var_9C = Me.ListView.SelectedItem
  loc_EB2FFB: Set var_A4 = Me.TxtGrid
  loc_EB3001: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3009: var_A8.Text = var_9C.Text
  loc_EB302B: Me.FrmList.Visible = False
  loc_EB303C: Set var_88 = Me.TxtGrid
  loc_EB3042: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB304A: var_9C.SetFocus
  loc_EB3056: Exit Sub
End Sub

Private Sub Command2_Click() '12EED2C
  'Data Table: 563038
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_9C As Double
  Dim var_130 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1DC As String
  Dim var_BC As String
  Dim var_120 As Variant
  Dim var_1C4 As Variant
  Dim unk_56303E As Connection15
  Dim var_88 As Recordset15
  Dim var_200 As Variant
  Dim var_218 As String
  Dim var_250 As String
  Dim var_94 As Integer
  Dim var_92 As Integer
  loc_12EE6FB: var_AC = CVar(CLng(1)) 'Long
  loc_12EE700: var_CC = 1
  loc_12EE72E: var_120 = "dd/MMM/yyyy"
  loc_12EE748: var_9C = CDate(Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120))
  loc_12EE78A: Proc_6_7_F25D88(var_120, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), " M.Vdate Between ", var_9C)
  loc_12EE7B4: Set var_194 = Me.FGrid
  loc_12EE7CB: Proc_6_7_F25D88(var_1C4, CVar(CStr(var_194.TextMatrix))), 1, CVar(CLng(1)), 1 & var_120 & " And ")
  loc_12EE7D8: var_8C = CStr(1 & var_1C4)
  loc_12EE803: Set var_E0 = Me.Check1
  loc_12EE809: Call 0.Method_Command2_Click0 (1, var_194, var_1D6)
  loc_12EE811: var_F0 = var_194.Value
  loc_12EE827: If (CLng(var_1D6) = 0) Then
  loc_12EE842:   var_90 = var_8C & " And M.MemCatCode In (" & global_56 & ") "
  loc_12EE84C: End If
  loc_12EE852: var_AC = CVar(CLng(0)) 'Long
  loc_12EE898: Set var_194 = Me.FGrid
  loc_12EE8BA: Me.Text1.Text = 1 & CStr(var_194.TextMatrix))
  loc_12EE8E8: Set var_E0 = Me.Check1
  loc_12EE8EE: Call 0.Method_Command2_Click0 (1, var_194, var_1D6, CVar(CLng(1)), 1 & CStr(Me.FGrid.TextMatrix)) & " To : ")
  loc_12EE8F6: var_AC = var_194.Value
  loc_12EE90C: If (CLng(var_1D6) = 0) Then
  loc_12EE927:   var_F0 = Left(global_72, &H73)
  loc_12EE94A:   Me.Text2.Text = CStr("For Category : " & var_F0 & vbNullString)
  loc_12EE961: Else
  loc_12EE968:   Set var_E0 = Me.Text2
  loc_12EE96E:   var_E0.Text = "For Category :   All"
  loc_12EE976: End If
  loc_12EE983: var_BC = "Select M.cardno,S.Name As MemName,M.vno as BillNo,mthyear,L.bal as NetAmount From membill M Inner Join  SubGroup S On M.MemCode=S.SubCode  left Join (select subcode,sum(amtdr)-sum(amtcr) Bal from ledger  where v_date<= "
  loc_12EE993: Proc_6_7_F25D88(var_F0, var_9C, "For Category : ", var_200, -1)
  loc_12EE99F: var_CC = " group by subcode) L on L.subcode=M.Memcode Where  L.bal<>0 and"
  loc_12EE9A4: var_120 = var_E0 & var_F0 & var_CC 
  loc_12EE9C1: var_1A4 = var_120 & CVar(var_8C) & " And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_12EE9E1: var_1DC = CStr(var_1A4 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO')")
  loc_12EE9EB: unk_56303E.Execute var_1DC, "From : ", var_CC
  loc_12EE9F6: Set var_88 = var_E0
  loc_12EEA18: Close 1
  loc_12EEA21: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_12EEA39: If (var_88.RecordCount > 0) Then
  loc_12EEA3C:   ' Referenced from: 12EECB3
  loc_12EEA4B:   If Not(var_88.EOF) Then
  loc_12EEABD:     var_130 = Format(CVar(var_88.Fields.Item("MemName")), var_120)
  loc_12EEAFD:     Proc_6_39_E7C810(var_1A4, CVar(var_88.Fields.Item("BillNo")))
  loc_12EEB9C:     Proc_6_39_E7C810(var_268, CVar(var_88.Fields.Item("NetAmount")))
  loc_12EEBF8:     var_218 = "ICM" & "|" & Proc_6_45_EAD428(CStr(var_88.Fields.Item("CardNo").Value), 5) & "|" & Proc_6_52_EAD4F4(CStr(var_130), &H24, 1)
  loc_12EEC1A:     var_250 = var_218 & "|" & Proc_6_52_EAD4F4(CStr(Format(var_1A4, "000")), 5, 1) & "|" & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), 1), 8)
  loc_12EEC30:     Print 1, var_250 & "|" & Proc_6_52_EAD4F4(CStr(Format(var_268, "0.00")), 9, 1)
  loc_12EEC9C:     var_88.MoveNext
  loc_12EECA7:     var_94 = (var_94 + 1)
  loc_12EECB0:     var_92 = (var_92 + 1)
  loc_12EECB3:     GoTo loc_12EEA3C
  loc_12EECB6:   End If
  loc_12EECB8:   Close 1
  loc_12EECC0:   Call 0.Method_arg_50 (var_1DC, var_92, var_94)
  loc_12EECE1:   MsgBox("Printing Completed.", &H40, CVar(var_1DC), var_120, var_130)
  loc_12EECF4: Else
  loc_12EECFA:   Call 0.Method_arg_50 (var_1DC, 1)
  loc_12EED1B:   MsgBox("No Record found to Print.", &H40, CVar(var_1DC), var_120, var_130)
  loc_12EED2B: End If
  loc_12EED2B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E1B664
  'Data Table: 563038
  loc_E1B650: Set var_88 = Me.FGrid1
  loc_E1B661: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFB410
  'Data Table: 563038
  loc_DFB40C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'DFC930
  'Data Table: 563038
  loc_DFC92C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'DFB3DC
  'Data Table: 563038
  Dim arg_7FFF As Double
  loc_DFB3D8: Exit Sub
  loc_DFB3D9: arg_7FFF = 
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '118E43C
  'Data Table: 563038
  Dim var_98 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_118E072: If (arg_10 = &HD) Then
  loc_118E083:   Proc_303_0_FB9B68("	")
  loc_118E08B: End If
  loc_118E095: Set var_94 = Me.GridSel
  loc_118E09B: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_118E0BC: If (CLng(var_98.Rows) < 1) Then
  loc_118E0BF:   Exit Sub
  loc_118E0C0: End If
  loc_118E0D4: Set var_94 = Me.GridSel
  loc_118E0DA: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_118E0FC: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_118E10F:   Set var_94 = Me.GridSel
  loc_118E115:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_118E11D:   var_98.CellFontName = "WINGDINGS"
  loc_118E13B:   Set var_94 = Me.GridSel
  loc_118E141:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_118E149:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_118E15F:   Set var_94 = Me.GridSel
  loc_118E165:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_118E176:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_118E18E:   Set var_CC = Me.GridSel
  loc_118E194:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_118E19C:   var_100 = var_D0.TextMatrix)
  loc_118E1B2:   Set var_164 = Me.GridSel
  loc_118E1B8:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_118E1C9:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_118E217:   Set var_17C = Me.GridSel
  loc_118E21D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "¸"), " ", "¸"))), 0)
  loc_118E225:   LateIdCallSt
  loc_118E259:   var_1E2 = arg_C
  loc_118E262:   If (var_1E2 = 1) Then
  loc_118E276:     var_86 = CInt((UBound(global_180, 1) + 1))
  loc_118E288:     ReDim Preserve global_180(0 To CLng(var_86))
  loc_118E29C:     Set var_94 = Me.GridSel
  loc_118E2A2:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_118E2BE:     global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118E2CC:   Else
  loc_118E2D2:     If (var_1E2 = 2) Then
  loc_118E2E6:       var_86 = CInt((UBound(global_184, 1) + 1))
  loc_118E2F8:       ReDim Preserve global_184(0 To CLng(var_86))
  loc_118E30C:       Set var_94 = Me.GridSel
  loc_118E312:       Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_180)
  loc_118E32E:       global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118E33C:     Else
  loc_118E342:       If (var_1E2 = 3) Then
  loc_118E356:         var_86 = CInt((UBound(global_188, 1) + 1))
  loc_118E368:         ReDim Preserve global_188(0 To CLng(var_86))
  loc_118E37C:         Set var_94 = Me.GridSel
  loc_118E382:         Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_118E39E:         global_188(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_118E3AC:       Else
  loc_118E3B2:         If (var_1E2 = 4) Then
  loc_118E3C6:           var_86 = CInt((UBound(global_192, 1) + 1))
  loc_118E3D8:           ReDim Preserve global_192(0 To CLng(var_86))
  loc_118E3EC:           Set var_94 = Me.GridSel
  loc_118E3F2:           Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_118E3FA:           var_A8 = var_98.Row
  loc_118E40E:           global_192(CLng(var_86)) = CInt(CLng(var_A8))
  loc_118E419:         End If
  loc_118E419:       End If
  loc_118E419:     End If
  loc_118E419:   End If
  loc_118E424:   If (global_52 = "MemBirthAnnvDtls") Then
  loc_118E42D:     If (arg_C = 1) Then
  loc_118E433:       Call Proc_292_99_1157908(var_A8, var_190)
  loc_118E43B:     End If
  loc_118E43B:   End If
  loc_118E43B: End If
  loc_118E43B: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(arg_C, arg_10) '1137AF0
  'Data Table: 563038
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_113778A: Set var_88 = Me.GridSel
  loc_1137790: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C)
  loc_11377B1: Set var_A0 = Me.GridSel
  loc_11377B7: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_A4)
  loc_11377E1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_11377E4:   Exit Sub
  loc_11377E5: End If
  loc_11377E8: var_B6 = arg_C
  loc_11377F1: If (var_B6 = 1) Then
  loc_113780C:   Set var_88 = Me.GridSel
  loc_1137812:   Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C)
  loc_113781A:   var_9C = var_8C.Col
  loc_1137884:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_11378A5: Else
  loc_11378AB:   If (var_B6 = 2) Then
  loc_11378C6:     Set var_88 = Me.GridSel
  loc_11378CC:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_11378D4:     var_9C = var_8C.Col
  loc_113793E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113795F:   Else
  loc_1137965:     If (var_B6 = 3) Then
  loc_1137980:       Set var_88 = Me.GridSel
  loc_1137986:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_113798E:       var_9C = var_8C.Col
  loc_11379F8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_112, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137A19:     Else
  loc_1137A1F:       If (var_B6 = 4) Then
  loc_1137A3A:         Set var_88 = Me.GridSel
  loc_1137A40:         Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1137AB2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_116, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137AD0:       End If
  loc_1137AD0:     End If
  loc_1137AD0:   End If
  loc_1137AD0: End If
  loc_1137AE2: Me.TxtSearch.Tag = CStr(arg_C)
  loc_1137AED: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E80CF8
  'Data Table: 563038
  Dim var_8C As MSHFlexGrid
  loc_E80C9A: Set var_88 = Me.GridSel
  loc_E80CA0: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E80CC1: If (CLng(var_8C.Col) <> 0) Then
  loc_E80CC4:   Exit Sub
  loc_E80CC5: End If
  loc_E80CCF: Set var_88 = Me.GridSel
  loc_E80CD5: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E80CEA: global_196 = CInt(CLng(var_8C.Row))
  loc_E80CF7: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '1190214
  'Data Table: 563038
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_118FE36: Set var_8C = Me.GridSel
  loc_118FE3C: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_118FE67: If ((CLng(var_90.Col) <> 0) Or (global_196 = 0)) Then
  loc_118FE6A:   Exit Sub
  loc_118FE6B: End If
  loc_118FE75: Set var_8C = Me.GridSel
  loc_118FE7B: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_118FE90: global_198 = CInt(CLng(var_90.RowSel))
  loc_118FEAC: For var_A4 = global_196 To global_198: var_88 = var_A4 'Integer
  loc_118FEC5:   Set var_8C = Me.GridSel
  loc_118FECB:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_118FED3:   var_90.Row = global_196
  loc_118FEF2:   Set var_8C = Me.GridSel
  loc_118FEF8:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_118FF00:   var_90.Col = global_198
  loc_118FF1C:   Set var_8C = Me.GridSel
  loc_118FF22:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_118FF2A:   var_90.CellFontName = "WINGDINGS"
  loc_118FF48:   Set var_8C = Me.GridSel
  loc_118FF4E:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_118FF56:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_118FF66:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_118FF7E:   Set var_8C = Me.GridSel
  loc_118FF84:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_118FF9C:   var_160 = CVar(CLng(var_88)) 'Long
  loc_118FFEA:   Set var_14C = Me.GridSel
  loc_118FFF0:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "¸"), " ", "¸"))), 0)
  loc_118FFF8:   LateIdCallSt
  loc_1190020:   var_1B2 = Index
  loc_1190029:   If (var_1B2 = 1) Then
  loc_119003D:     var_86 = CInt((UBound(global_180, 1) + 1))
  loc_119004F:     ReDim Preserve global_180(0 To CLng(var_86))
  loc_1190063:     Set var_8C = Me.GridSel
  loc_1190069:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1B2, var_150)
  loc_1190085:     global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1190093:   Else
  loc_1190099:     If (var_1B2 = 2) Then
  loc_11900AD:       var_86 = CInt((UBound(global_184, 1) + 1))
  loc_11900BF:       ReDim Preserve global_184(0 To CLng(var_86))
  loc_11900D3:       Set var_8C = Me.GridSel
  loc_11900D9:       Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_160)
  loc_11900F5:       global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1190103:     Else
  loc_1190109:       If (var_1B2 = 3) Then
  loc_119011D:         var_86 = CInt((UBound(global_188, 1) + 1))
  loc_119012F:         ReDim Preserve global_188(0 To CLng(var_86))
  loc_1190143:         Set var_8C = Me.GridSel
  loc_1190149:         Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_1190165:         global_188(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1190173:       Else
  loc_1190179:         If (var_1B2 = 4) Then
  loc_119018D:           var_86 = CInt((UBound(global_192, 1) + 1))
  loc_119019F:           ReDim Preserve global_192(0 To CLng(var_86))
  loc_11901B3:           Set var_8C = Me.GridSel
  loc_11901B9:           Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_11901C1:           var_A0 = var_90.Row
  loc_11901D5:           global_192(CLng(var_86)) = CInt(CLng(var_A0))
  loc_11901E0:         End If
  loc_11901E0:       End If
  loc_11901E0:     End If
  loc_11901E0:   End If
  loc_11901E3: Next var_A4 'Integer
  loc_11901F3: If (global_52 = "MemBirthAnnvDtls") Then
  loc_11901FC:   If (Index = 1) Then
  loc_1190202:     Call Proc_292_99_1157908(var_A0)
  loc_119020A:   End If
  loc_119020A: End If
  loc_119020F: global_196 = 0
  loc_1190212: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'DFC790
  'Data Table: 563038
  loc_DFC78C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'DFC7F8
  'Data Table: 563038
  loc_DFC7F4: Exit Sub
End Sub

Public Function global_52Get() '5650A8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5650B7
  global_52 = Value
End Sub

Public Function global_56Get() '5650C6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5650D5
  global_56 = Value
End Sub

Public Function global_60Get() '5650E4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5650F3
  global_60 = Value
End Sub

Public Function global_64Get() '565102
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '565111
  global_64 = Value
End Sub

Public Function global_68Get() '565120
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '56512F
  global_68 = Value
End Sub

Public Function global_72Get() '56513E
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '56514D
  global_72 = Value
End Sub

Public Function global_76Get() '56515C
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '56516B
  global_76 = Value
End Sub

Public Function global_80Get() '56517A
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '565189
  global_80 = Value
End Sub

Public Function global_84Get() '5651AC
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '5651BB
  global_84 = Value
End Sub

Public Function global_88Get() '5651CA
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '5651D9
  global_88 = Value
End Sub

Public Function global_92Get() '5651E8
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '5651F7
  global_92 = Value
End Sub

Public Function global_96Get() '565206
  global_96Get = global_96
End Function

Public Sub global_96Put(Value) '565215
  global_96 = Value
End Sub

Public Function global_100Get() '565224
  global_100Get = global_100
End Function

Public Sub global_100Put(Value) '565233
  global_100 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11882E4
  'Data Table: 563038
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_1187F39: If (Me.GridSel.Text).rows < 1) Then
  loc_1187F3C:   Exit Sub
  loc_1187F3D: End If
  loc_1187F51: If (Me.RecordCount <= 0) Then
  loc_1187F5D:   Me.TEXT = vbNullString
  loc_1187F61:   Exit Sub
  loc_1187F62: End If
  loc_1187F77: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_1187F7A:   Exit Sub
  loc_1187F7B: End If
  loc_1187F85: If (CLng(KeyAscii) = 8) Then
  loc_1187F9F:   If (Len(Me.SelText) > 1) Then
  loc_1187FB3:     var_DC = (Len(Me.SelText) - 1)
  loc_1187FBB:     Me.SelLength = var_DC
  loc_1187FCB:     var_88 = CStr(Me.SelText)
  loc_1187FD4:   Else
  loc_1187FDD:     Me.TEXT = vbNullString
  loc_1187FF7:     Call Me.GridSel.Text).SetFocus
  loc_1188008:     Me.Visible = False
  loc_118800C:     Exit Sub
  loc_118800D:   End If
  loc_1188010: Else
  loc_1188027:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_118802C:   var_88 = CStr(var_DC)
  loc_1188038: End If
  loc_118803B: Me.Recordset15.MoveFirst
  loc_1188078: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11880BB:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11880D0: Else
  loc_1188100:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_1188110: End If
  loc_1188112: KeyAscii = 0
  loc_118813E: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_118814F:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_1188168:   Me.GridSel.Text).Row = index
  loc_118819E:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11881B8:   Me.SelLength = CVar(Len(var_88))
  loc_11881D0:   var_DC = Me.GridSel.Text).CellLeft
  loc_11881F0:   var_138 = (index + Me.GridSel.Text).left)
  loc_11881F8:   Me.left = var_138
  loc_118821D:   var_DC = Me.GridSel.Text).CellTop
  loc_118823D:   var_138 = (index + Me.GridSel.Text).top)
  loc_1188245:   Me.top = var_138
  loc_1188268:   If (Me.Visible = False) Then
  loc_1188272:     Me.Visible = True
  loc_1188276:     var_9C = 0
  loc_118827F:     Call Me.ZOrder
  loc_1188288:     Call Me.SetFocus
  loc_11882AC:     Me.width = Me.GridSel.Text).CellWidth
  loc_11882D5:     Me.height = Me.GridSel.Text).CellHeight
  loc_11882E0:   End If
  loc_11882E0: End If
  loc_11882E0: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF5618
  'Data Table: 563038
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF5438: Call Me.ListItems.Clear
  loc_FF5455: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF5458:   ListView_Items_RecordSet_Local = 
  loc_FF545E: End If
  loc_FF5469: If (global_52 <> "HundiPrint") Then
  loc_FF5474:   var_104 = "All"
  loc_FF547D:   var_A0 = Me.ListItems
  loc_FF548E:   Set var_8C = var_A0.add
  loc_FF54A0:   var_A0.ListItem.SubItems = 1
  loc_FF54A5:   ' Referenced from: FF55A0
  loc_FF54A5: End If
  loc_FF54AB: var_116 = Me.EOF
  loc_FF54B4: If Not(var_116) Then
  loc_FF54E1:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF554B:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF557A:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF5582:     Me.ListItems.add.SubItems = 1
  loc_FF5598:   End If
  loc_FF559B:   Me.MoveNext
  loc_FF55A0:   GoTo loc_FF54A5
  loc_FF55A3: End If
  loc_FF55AD: var_A0 = Me.Text)
  loc_FF55B8: var_E4 = 0
  loc_FF55D7: Set var_8C = Me.FindItem
  loc_FF55E8: If (var_8C Is Nothing) Then
  loc_FF55EB:   ListView_Items_RecordSet_Local = 1
  loc_FF55F4: Else
  loc_FF55FA:   var_8C.EnsureVisible var_116
  loc_FF5604:   var_8C.Selected = True
  loc_FF5609: End If
  loc_FF560C: Set var_88 = var_8C 
  loc_FF5610: ListView_Items_RecordSet_Local = var_104
  loc_FF5616: Set var_3FA0 = var_E4
End Function

Public Sub RetBack(mParamForm) 'F71FEC
  'Data Table: 563038
  loc_F71EB1: var_8C = global_52
  loc_F71EBC: If (var_8C = "MemVisitDetail") Then
  loc_F71ECC:   Set var_90 = mParamForm 
  loc_F71ED3:   Call MemVisitDetail(var_90, 0, 0)
  loc_F71EDE:   Set var_88 = var_90
  loc_F71EE7: Else
  loc_F71EEF:   If (var_8C = "MemMalingLabels") Then
  loc_F71EFF:     Set var_90 = var_88 
  loc_F71F06:     Call MemLabels(var_90, 0, 0)
  loc_F71F11:     Set var_88 = var_90
  loc_F71F1A:   Else
  loc_F71F22:     If (var_8C = "MemSalesRegister") Then
  loc_F71F32:       Set var_90 = var_88 
  loc_F71F39:       Call MemSalesReg(var_90, 0, 0)
  loc_F71F44:       Set var_88 = var_90
  loc_F71F4D:     Else
  loc_F71F55:       If (var_8C = "MemTaxReport") Then
  loc_F71F65:         Set var_90 = var_88 
  loc_F71F6C:         Call MemTaxReport(var_90, 0, 0)
  loc_F71F77:         Set var_88 = var_90
  loc_F71F80:       Else
  loc_F71F88:         If (var_8C = "PaymentDueLetterReport") Then
  loc_F71F98:           Set var_90 = var_88 
  loc_F71F9F:           Call PaymentDueLetterReport(var_90, 0, 0)
  loc_F71FAA:           Set var_88 = var_90
  loc_F71FB3:         Else
  loc_F71FBB:           If (var_8C = "MemBirthAnnvDtls") Then
  loc_F71FCB:             Set var_90 = var_88 
  loc_F71FD2:             Call MemBirthAnnvDtls(var_90, 0, 0)
  loc_F71FDD:             Set var_88 = var_90
  loc_F71FE3:           End If
  loc_F71FE3:         End If
  loc_F71FE3:       End If
  loc_F71FE3:     End If
  loc_F71FE3:   End If
  loc_F71FE3: End If
  loc_F71FE3: Exit Sub
  loc_F71FE4: Proc_6_60_E62BC4()
  loc_F71FE9: Exit Sub
End Sub

Public Sub MemLabels(formName, FRow, Fcol) '129D4E4
  'Data Table: 563038
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim var_BC As String
  loc_129CF08: Me.FGrid1.Tag = "MemMalingLabels"
  loc_129CF10: var_100 = " M.Name='"
  loc_129CF15: var_AC = 2
  loc_129CF4E: var_AC = 1
  loc_129CF77: If (Me.Check1.Value = 0) Then
  loc_129CF90:   var_AC = ") "
  loc_129CF9A:   var_90 = CStr(CVar(CStr(1 & Me.FGrid.TextMatrix & "'") & " And S.ActiveYN=1 And S.companyType In (") & Me.GridString1 & var_AC)
  loc_129CFA8: End If
  loc_129CFAE: Call 0.Method_arg_54 ("Members Mailing Labels Report", var_AC)
  loc_129CFC6: var_F0 = Me.FGrid
  loc_129CFE0: Set var_C0 = 2(1 & CStr(var_F0.TextMatrix))
  loc_129CFE6: var_F0.TextBox.Text = "Address Type : "
  loc_129CFFC: var_AC = 1
  loc_129D025: If (Me.Check1.Value = 0) Then
  loc_129D04E:   var_BC = vbNullString
  loc_129D05F:   Set var_C0 = Me.Text2
  loc_129D065:   Me.Text2.Text = CStr("For Category : " & Left(Me.FormulaString1, &H73) & var_BC)
  loc_129D07E: Else
  loc_129D085:   Set var_C0 = Me.Text2
  loc_129D08B:   var_C0.Text = "For Category :   All"
  loc_129D093: End If
  loc_129D096: var_94 = "MemMalingLabels"
  loc_129D09F: global_120 = "Members Mailing Labels Report"
  loc_129D0AA: var_144 = " SELECT S.Name AS Name, S.ConPrefix, RTrim(RTrim(LTrim(S.ConPerSon))+' '+RTrim(LTrim(S.ConPerSonMName))+' '+RTrim(LTrim(S.ConPerSonLName))) As ConPerSon,S.CardNo,MCat.Name as MemType, m.Add1, m.Add2, m.Add3, Ltrim(IsNull(m.PinCode,'')) As PinCode, c.CityName,ltrim(IsNull(S.Phone,'')) As Phone,ltrim(IsNull(S.Mobile,'')) As Mobile " & " FROM MemAddRWA m INNER JOIN  SubGroup s ON m.SubCode = s.SubCode INNER JOIN"
  loc_129D0B1: var_148 = CStr("For Category : " & Left(Me.FormulaString1, &H73) & var_BC) & " City c ON m.City = c.CityCode JOIN MemCatMast Mcat on s.companyType=Mcat.code"
  loc_129D0C9: var_AC = 3
  loc_129D0D0: var_D0 = 1
  loc_129D0D9: var_F0 = Me.FGrid
  loc_129D11A: var_F0.Connection15.Execute CStr(var_D0 & var_F0.TextMatrix), var_F0, -1
  loc_129D152: Set var_C0 = var_C0 
  loc_129D159: CreateFieldDefFile(var_C0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF, var_C0, var_AC)
  loc_129D187: var_144 = "\" & var_94
  loc_129D19B: Call 0.Method_arg_1C (MemVar_1F920B4 & var_144 & ".RPT", var_AC, var_C0, CVar(var_144 & ".RPT" & " Where " & var_90 & " Order By MCat.Name,"))
  loc_129D1A6: MemVar_1F921E4 = var_C0
  loc_129D1C1: var_AC = CVar(var_C0) 'Address
  loc_129D1CF: Call 0.Method_arg_64 (var_C0, var_AC, var_BC, var_D0)
  loc_129D1D7: Call 0.Method_arg_2C (var_F0, var_AC)
  loc_129D1E5: Call 0.Method_arg_150 (var_AC)
  loc_129D1FB: Call 0.Method_arg_90 (var_C0, var_154, var_9A)
  loc_129D203: Call 0.Method_arg_24 (1)
  loc_129D20F: For var_158 =  To CInt(var_154): var_100 = var_158 'Integer
  loc_129D228:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D230:   Call 0.Method_arg_20 (var_15C)
  loc_129D238:   Call 0.Method_arg_30 (var_144)
  loc_129D24E:   var_16C = Ucase(CVar(var_144)) 'Variant
  loc_129D27E:   If (var_16C = Ucase("comp_name")) Then
  loc_129D2A2:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D2AA:     Call 0.Method_arg_20 (var_15C)
  loc_129D2B2:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_129D2C8:   Else
  loc_129D2EA:     If (var_16C = Ucase("comp_add1")) Then
  loc_129D30E:       Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D316:       Call 0.Method_arg_20 (var_15C)
  loc_129D31E:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_129D334:     Else
  loc_129D356:       If (var_16C = Ucase("comp_pin")) Then
  loc_129D37A:         Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D382:         Call 0.Method_arg_20 (var_15C)
  loc_129D38A:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_129D3A0:       Else
  loc_129D3C2:         If (var_16C = Ucase("comp_GSTIN")) Then
  loc_129D3CC:           var_144 = "'" & MemVar_1F92154
  loc_129D3E6:           Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D3EE:           Call 0.Method_arg_20 (var_15C)
  loc_129D3F6:           Call 0.Method_arg_38 (var_144 & "'")
  loc_129D40C:         Else
  loc_129D42E:           If (var_16C = Ucase("Title")) Then
  loc_129D43A:             Call 0.Method_arg_50 (var_144)
  loc_129D45D:             Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_129D465:             Call 0.Method_arg_20 (var_15C)
  loc_129D46D:             Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_129D482:           End If
  loc_129D482:         End If
  loc_129D482:       End If
  loc_129D482:     End If
  loc_129D482:   End If
  loc_129D485: Next var_158 'Integer
  loc_129D48F: Set var_15C = Nothing
  loc_129D4A8: Set var_C0 = MemVar_1F921E4 
  loc_129D4B4: Proc_6_99_1483714(var_C0, 3, global_120)
  loc_129D4BF: MemVar_1F921E4 = var_C0
  loc_129D4CF: Set var_88 = Nothing
  loc_129D4D2: Exit Sub
  loc_129D4D3: Proc_6_60_E62BC4(&HFF)
  loc_129D4DD: global_160 = 0
  loc_129D4E0: Exit Sub
End Sub

Public Sub MemVisitDetail(formName, FRow, Fcol) '16029D0
  'Data Table: 563038
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_1E0 As String
  Dim var_1F0 As String
  Dim var_1F4 As Variant
  Dim var_1FC As String
  Dim var_200 As String
  Dim var_208 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_90 As Recordset15
  Dim var_22C As Recordset15
  Dim var_230 As Recordset15
  Dim unk_56303E As Connection15
  Dim var_24C As Recordset15
  Dim var_250 As Fields15
  Dim var_254 As Field20
  Dim var_260 As Recordset15
  Dim var_98 As Double
  Dim var_264 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_270 As MSHFlexGrid
  loc_16015E4: var_12C = " Between "
  loc_16015FE: VarLateMemCallLdRfVar
  loc_1601609: Proc_6_7_F25D88(var_11C, Me.FGrid, 1)
  loc_160161A: var_15C = 0 & var_11C & " And " 
  loc_1601633: VarLateMemCallLdRfVar
  loc_160163E: Proc_6_7_F25D88(var_1CC, Me.FGrid, 1)
  loc_160164B: var_A0 = CStr(1 & var_1CC)
  loc_1601663: var_BC = 1
  loc_160168C: If (Me.Check1.Value = 0) Then
  loc_16016AF:   var_A8 = CStr(CVar(var_A0 & " And M.RestCode In (") & Me.GridString1 & ") ")
  loc_16016BD: End If
  loc_16016BD: var_BC = 3
  loc_16016E6: If (Me.Check1.Value = 0) Then
  loc_1601709:   var_AC = CStr(CVar(var_A0 & " And M.FCCode In (") & Me.GridString3 & ") ")
  loc_1601717: End If
  loc_1601717: var_BC = 2
  loc_1601740: If (Me.Check1.Value = 0) Then
  loc_1601743:   var_BC = " And S.CompanyType In ("
  loc_160175E:   var_A4 = CStr(var_BC & Me.GridString2 & ") ")
  loc_160176A: End If
  loc_1601770: Call 0.Method_arg_54 ("Member Visit Detail", var_BC, var_BC)
  loc_1601778: var_BC = 0
  loc_16017A5: var_12C = 1
  loc_16017B5: var_11C = Me.FGrid
  loc_16017CF: Set var_1F4 = var_12C(1 & CStr(var_11C.TextMatrix))
  loc_16017D5: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_16017F5: var_BC = 2
  loc_160181E: If (Me.Check1.Value = 0) Then
  loc_1601824:   var_FC = Me.FormulaString2
  loc_160182B:   var_BC = "For Category : "
  loc_1601847:   var_CC = vbNullString
  loc_160184C:   var_13C = var_BC & Left(var_FC, &H73) & var_CC 
  loc_1601858:   Set var_1F4 = Me.Text2
  loc_160185E:   Me.Text2.Text = CStr(var_13C)
  loc_1601877: Else
  loc_160187E:   Set var_1F4 = Me.Text2
  loc_1601884:   var_1F4.Text = "For Category :   All"
  loc_160188C: End If
  loc_1601899: Call Proc_292_94_FBB4D4(New, var_1F4, var_FC, var_BC, var_BC)
  loc_16018A1: Set var_8C = var_1F4
  loc_16018B8: var_1E0 = "Select R.* From (Select M.EntryDate As Vdate,'' As Vno,MC.Name As MemCatName,S.CompanyType As MemCatCode,S.Name As MemName,S.CardNo,MF.Name As Discription,M.MemCode,M.Amount,M.U_Name From MemFacilityBilling M Left Join MemFacilityMast MF On MF.Code=M.FCCode Left Join SubGroup S On M.MemCode=S.SubCode Left Join MemCatMast MC On MC.Code=S.CompanyType Where M.EntryDate" & var_AC
  loc_16018E2: var_1FC = var_1E0 & var_A4 & " And M.Site_Code='" & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO') Union All "
  loc_16018E9: var_200 = var_1FC & "Select M.Vdate As Vdate,M.Vno As Vno,MC.Name As MemCatName,S.CompanyType As MemCatCode,S.Name As MemName,S.CardNo,M.Comments As Discription,M.CompCode As MemCode,M.AmtCr As Amount,M.U_Name From PayCharge M Left Join SubGroup S On M.CompCode=S.SubCode Left Join MemCatMast MC On MC.Code=S.CompanyType Where M.Vdate"
  loc_1601913: var_218 = var_200 & var_A8 & var_A4 & " And M.PayType='Member' And M.Site_Code='" & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078
  loc_1601923: Me.Connection15.Execute var_218 & "' Or M.LogSite_Code='HO')) R Order By R.MemCatName,R.MemName,R.Vdate,R.Vno", var_FC, -1
  loc_160192E: Set var_90 = var_1F4
  loc_160195B: var_88 = vbNullString
  loc_1601972: If (var_90.RecordCount > 0) Then
  loc_1601978:   var_90.MoveFirst
  loc_160197D:   ' Referenced from: 16022DF
  loc_160198C:   If Not(var_90.EOF) Then
  loc_1601995:     var_BC = "MemCatName"
  loc_16019A1:     var_1F4 = var_90.Fields
  loc_16019C8:     If (var_BC <> Proc_6_38_E68A98(CVar(var_1F4.Item(var_BC)), var_9C, var_1F4, "From : ")) Then
  loc_16019CE:       var_BC = "MemCatName"
  loc_16019FF:       Set var_22C = var_8C 
  loc_1601A0E:       var_22C.AddNew var_BC, var_CC
  loc_1601A38:       var_22C.Fields.Item("MLine").Value = "GF"
  loc_1601A6A:       var_22C.Fields.Item("Facility").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MLine")), var_15C))
  loc_1601A76:       var_CC = "*"
  loc_1601A7F:       var_BC = "Mark"
  loc_1601A9B:       var_22C.Fields.Item(var_BC).Value = var_CC
  loc_1601AB2:       var_22C.Update var_BC, var_CC
  loc_1601AB9:       Set var_22C = Nothing 
  loc_1601ABD:     End If
  loc_1601AF6:     If (var_12C <> Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCode")), var_88)) Then
  loc_1601AFC:       var_BC = "MemCode"
  loc_1601B21:       var_88 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_BC)))
  loc_1601B2D:       Set var_230 = var_8C 
  loc_1601B3C:       var_230.AddNew var_BC, var_CC
  loc_1601B41:       var_BC = 2
  loc_1601B48:       var_DC = 1
  loc_1601B51:       var_FC = Me.FGrid
  loc_1601B72:       If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_1601B9A:         var_FC.Recordset15.Fields.Item("MLine").Value = "GF"
  loc_1601BA9:       Else
  loc_1601BCE:         var_230.Fields.Item("MLine").Value = vbNullString
  loc_1601BDA:       End If
  loc_1601C13:       var_11C = Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CardNo")), var_DC)), &H19)
  loc_1601C3B:       var_230.Fields.Item("DATE").Value = var_11C
  loc_1601CA0:       var_230.Fields.Item("Code").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCode"))))
  loc_1601D11:       var_230.Fields.Item("Facility").Value = CVar(Proc_6_45_EAD428(CStr(var_90.Fields.Item("MemName").Value), &H32))
  loc_1601D76:       var_230.Fields.Item("CatCode").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCatcode"))))
  loc_1601DAD:       var_BC = "MemCode"
  loc_1601DD2:       var_1E0 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_BC)), "Select count(Distinct R.Vdate) From (Select M.EntryDate As Vdate From MemFacilityBilling M Where M.MemCode='", var_11C, -1, var_24C)
  loc_1601DEB:       var_1F0 = var_250 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("CardNo")), var_DC) & "' And M.EntryDate" & var_AC & " And M.Site_Code='"
  loc_1601E0E:       var_208 = var_1F0 & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO') Union All " & "Select M.Vdate As Vdate From PayCharge M Where M.CompCode='"
  loc_1601E52:       var_21C = var_254 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCode")), var_208, 0) & "' And M.Vdate" & var_A8 & " And M.PayType='Member' And M.Site_Code='"
  loc_1601E77:       unk_56303E.Execute var_21C & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO')) R", var_13C, var_BC
  loc_1601E7F:        = var_24C.Fields
  loc_1601E87:        = var_250.Item()
  loc_1601E8F:        = var_254.Value
  loc_1601E9A:       Proc_6_39_E7C810(var_15C)
  loc_1601EC2:       var_230.Fields.Item("Total").Value = var_15C
  loc_1601F0E:       var_CC = "*"
  loc_1601F17:       var_BC = "Mark"
  loc_1601F33:       var_230.Fields.Item(var_BC).Value = var_CC
  loc_1601F4A:       var_230.Update var_BC, var_CC
  loc_1601F51:       Set var_230 = Nothing 
  loc_1601F55:     End If
  loc_1601F5C:     var_DC = 1
  loc_1601F65:     var_FC = Me.FGrid
  loc_1601F86:     If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_1601F8C:       Set var_260 = var_8C 
  loc_1601F9B:       var_FC.Recordset15.AddNew 2, var_CC
  loc_1601FC5:       var_260.Fields.Item("MLine").Value = vbNullString
  loc_1602018:       var_DC = "DATE"
  loc_1602034:       var_260.Fields.Item(var_DC).Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_1602096:       var_260.Fields.Item("Code").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCode")), 1, 1))
  loc_16020E4:       var_10C = CVar(Proc_6_45_EAD428(CStr(var_90.Fields.Item("Discription").Value), &H4B, var_DC)) 'String
  loc_1602107:       var_260.Fields.Item("Facility").Value = var_10C
  loc_1602147:       Proc_6_47_EF59D0(var_10C, CVar(var_90.Fields.Item("Amount")))
  loc_160216F:       var_260.Fields.Item("Total").Value = var_10C
  loc_16021AA:       Proc_6_47_EF59D0(var_10C, CVar(var_90.Fields.Item("U_Name")))
  loc_16021D2:       var_260.Fields.Item("User").Value = var_10C
  loc_160220C:       var_260.Fields.Item("Mark").Value = "*"
  loc_160221B:       var_BC = "MemCatcode"
  loc_1602240:       var_10C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_BC)), var_BC)) 'String
  loc_1602247:       var_CC = "CatCode"
  loc_1602263:       var_260.Fields.Item(var_CC).Value = var_10C
  loc_1602283:       var_260.Update var_BC, var_CC
  loc_160228A:       Set var_260 = Nothing 
  loc_1602291:       var_CC = CVar(var_98) 'Double
  loc_16022BB:       Proc_6_39_E7C810(var_10C, CVar(var_90.Fields.Item("Amount")))
  loc_16022C3:       var_11C = (var_CC + var_10C)
  loc_16022C8:       var_98 = CSng(Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY"))
  loc_16022D7:     End If
  loc_16022DA:     var_90.MoveNext
  loc_16022DF:     GoTo loc_160197D
  loc_16022E2:   End If
  loc_16022F2:   var_FC = Me.FGrid
  loc_1602313:   If (CStr(var_FC.TextMatrix) = "Yes") Then
  loc_1602319:     Set var_264 = var_8C 
  loc_1602328:     var_FC.Recordset15.AddNew 2, var_CC
  loc_1602352:     var_264.Fields.Item("MLine").Value = "GF"
  loc_1602383:     var_264.Fields.Item("DATE").Value = vbNullString
  loc_16023B4:     var_264.Fields.Item("Code").Value = vbNullString
  loc_16023C0:     var_CC = "AMOUNT GRAND TOTAL :-"
  loc_16023E5:     var_264.Fields.Item("Facility").Value = vbNullString
  loc_16023FC:     Proc_6_47_EF59D0(var_FC, var_98, 1)
  loc_1602424:     var_264.Fields.Item("Total").Value = var_FC
  loc_1602458:     var_264.Fields.Item("User").Value = vbNullString
  loc_1602489:     var_264.Fields.Item("Mark").Value = "*"
  loc_1602495:     var_CC = vbNullString
  loc_160249E:     var_BC = "CatCode"
  loc_16024BA:     var_264.Fields.Item(var_BC).Value = var_CC
  loc_16024D1:     var_264.Update var_BC, var_CC
  loc_16024D8:     Set var_264 = Nothing 
  loc_16024DC:   End If
  loc_16024DC: End If
  loc_16024E6: arg_2C = Me.FGrid1.Text
  loc_1602504: Me.FGrid1.Rows = 2
  loc_1602520: If (var_8C.RecordCount > 0) Then
  loc_1602529:   CVarUnk
  loc_160252E:   VerifyVarObj
  loc_1602534:   Set var_1F4 = Me.FGrid1
  loc_160253A:   LateIdStAd
  loc_160256A:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_8C)
  loc_1602575: End If
  loc_1602579: Set var_270 = Me.FGrid1
  loc_1602585: var_270.Tag = "MemVisitDetail"
  loc_1602596: var_270.Cols = 8
  loc_160259B: var_BC = 0
  loc_16025A4: var_DC = 0
  loc_16025AD: var_12C = "mLine"
  loc_16025B6: LateIdCallSt
  loc_16025BE: var_BC = 0
  loc_16025C7: var_DC = 0
  loc_16025D3: LateIdCallSt
  loc_16025DB: var_BC = 0
  loc_16025E4: var_DC = 1
  loc_16025ED: var_12C = "CardNo/Date"
  loc_16025F6: LateIdCallSt
  loc_16025FE: var_BC = 1
  loc_1602607: var_DC = &H708
  loc_1602613: LateIdCallSt
  loc_160261B: var_BC = 0
  loc_1602624: var_DC = 2
  loc_160262D: var_12C = "Code"
  loc_1602636: LateIdCallSt
  loc_160263E: var_BC = 2
  loc_1602647: var_DC = 0
  loc_1602653: LateIdCallSt
  loc_160265B: var_BC = 0
  loc_1602664: var_DC = 3
  loc_160266D: var_12C = "Category/Member/Charges"
  loc_1602676: LateIdCallSt
  loc_160267E: var_BC = 3
  loc_160268D: var_DC = CVar(CInt(1)) 'Integer
  loc_1602694: LateIdCallSt
  loc_160269C: var_BC = 3
  loc_16026AB: var_DC = CVar(CInt(1)) 'Integer
  loc_16026B2: LateIdCallSt
  loc_16026BA: var_BC = 3
  loc_16026C3: var_DC = &H1068
  loc_16026CF: LateIdCallSt
  loc_16026D7: var_BC = 0
  loc_16026E0: var_DC = 4
  loc_16026E9: var_12C = "Visit/Amount"
  loc_16026F2: LateIdCallSt
  loc_16026FA: var_BC = 4
  loc_1602709: var_DC = CVar(CInt(7)) 'Integer
  loc_1602710: LateIdCallSt
  loc_1602718: var_BC = 4
  loc_1602727: var_DC = CVar(CInt(7)) 'Integer
  loc_160272E: LateIdCallSt
  loc_1602736: var_BC = 4
  loc_160273F: var_DC = &H640
  loc_160274B: LateIdCallSt
  loc_1602753: var_BC = 0
  loc_160275C: var_DC = 5
  loc_1602765: var_12C = "User"
  loc_160276E: LateIdCallSt
  loc_1602776: var_BC = 5
  loc_160277F: var_DC = &H640
  loc_160278B: LateIdCallSt
  loc_1602793: var_BC = 0
  loc_160279C: var_DC = 6
  loc_16027A5: var_12C = "MARK"
  loc_16027AE: LateIdCallSt
  loc_16027B6: var_BC = 6
  loc_16027BF: var_DC = 0
  loc_16027CB: LateIdCallSt
  loc_16027D3: var_BC = 0
  loc_16027DC: var_DC = 7
  loc_16027E5: var_12C = "CatCode"
  loc_16027EE: LateIdCallSt
  loc_16027F6: var_BC = 7
  loc_16027FF: var_DC = 0
  loc_160280B: LateIdCallSt
  loc_1602813: var_BC = 2
  loc_160281A: var_DC = 1
  loc_1602844: If (CStr(Me.FGrid.TextMatrix) <> "Yes") Then
  loc_1602847:   var_BC = 5
  loc_1602850:   var_DC = 0
  loc_160285C:   LateIdCallSt
  loc_1602864: End If
  loc_1602866: Set var_270 = Nothing 
  loc_160287E: If (var_90.RecordCount <= 0) Then
  loc_1602886:   global_160 = 0
  loc_1602889:   Exit Sub
  loc_160288A: End If
  loc_160288E: Set var_1F4 = Me.FGrid1
  loc_16028BE: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16028C1:   var_BC = vbNullString
  loc_16028CB:   Set var_1F4 = Me.FGrid1
  loc_16028DC: End If
  loc_1602913: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1602933: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_1602981: var_BC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_16029A1: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_16029BD: Set var_8C = Nothing
  loc_16029C5: Set var_90 = Nothing
  loc_16029CA: IStAd
  loc_16029CE: Exit Sub
End Sub

Public Sub MemBirthAnnvDtls(formName, FRow, Fcol) '17BCE98
  'Data Table: 563038
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C4 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim unk_56303E As Connection15
  Dim var_90 As Recordset15
  Dim var_1F8 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_20C As MSHFlexGrid
  Dim var_210 As Recordset15
  Dim var_214 As MSHFlexGrid
  loc_17BAF42: var_164 = IIf((Me.GridString1 = vbNullString), CVar(var_A4 & " And S.CompanyType In ('')"), CVar(var_A4 & " And S.CompanyType In (") & Me.GridString1 & ") ")
  loc_17BAFAB: var_164 = IIf((Me.GridString2 = vbNullString), CVar(var_A4 & " And S.Subcode In ('') "), CVar(var_A4 & " And S.Subcode In (") & Me.GridString2 & ") ")
  loc_17BAFB4: var_B0 = CStr(var_164)
  loc_17BAFD4: var_124 = " And MCG.Subcode+cast(MCG.SNo as Varchar)+'C' In ("
  loc_17BAFEE: var_184 = " And MCG.Subcode+cast(MCG.SNo as Varchar)+'C' In ('') "
  loc_17BB019: var_A8 = CStr(IIf((Me.GridString3 = vbNullString), var_184, ") " & Me.GridString3 & ") "))
  loc_17BB037: var_124 = " And MSG.Subcode+'S' In ("
  loc_17BB051: var_184 = " And MSG.Subcode+'S' In ('') "
  loc_17BB07C: var_B4 = CStr(IIf((Me.GridString4 = vbNullString), var_184, ") " & Me.GridString4 & ") "))
  loc_17BB098: If (CStr(var_164) = vbNullString) Then
  loc_17BB09E:   var_AC = "''"
  loc_17BB0A1: End If
  loc_17BB0A9: If (var_B0 = vbNullString) Then
  loc_17BB0AF:   var_B0 = "''"
  loc_17BB0B2: End If
  loc_17BB0BA: If (var_A8 = vbNullString) Then
  loc_17BB0C0:   var_A8 = "''"
  loc_17BB0C3: End If
  loc_17BB0CB: If (var_B4 = vbNullString) Then
  loc_17BB0D1:   var_B4 = "''"
  loc_17BB0D4: End If
  loc_17BB0E4: var_D4 = Me.FGrid
  loc_17BB100: If (var_D4.TextMatrix = "Report") Then
  loc_17BB109:   Call 0.Method_arg_54 ("Member Birthday/Anniversary Details", 1, 2, var_D4)
  loc_17BB111:   var_C4 = 0
  loc_17BB13B:   var_1D0 = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_17BB14E:   var_F4 = Me.FGrid
  loc_17BB168:   Set var_1DC = 1(1 & CStr(var_F4.TextMatrix))
  loc_17BB16E:   var_F4.TextBox.Text = var_1D0
  loc_17BB18E:   var_C4 = 2
  loc_17BB1B7:   If (Me.Check1.Value = 0) Then
  loc_17BB1BD:     var_D4 = Me.FormulaString2
  loc_17BB1C4:     var_C4 = "For Category : "
  loc_17BB1E0:     var_124 = vbNullString
  loc_17BB1F1:     Set var_1DC = Me.Text2
  loc_17BB1F7:     Me.Text2.Text = CStr(var_C4 & Left(var_D4, &H73) & var_124)
  loc_17BB210:   Else
  loc_17BB217:     Set var_1DC = Me.Text2
  loc_17BB21D:     var_1DC.Text = "For Category :   All"
  loc_17BB225:   End If
  loc_17BB232:   Call Proc_292_96_116315C(New, var_1DC, var_D4, var_C4, var_C4)
  loc_17BB23A:   Set var_8C = var_1DC
  loc_17BB240:   var_C4 = CVar(CLng(0)) 'Long
  loc_17BB245:   var_174 = 1
  loc_17BB258:   var_D4 = Me.FGrid.TextMatrix)
  loc_17BB29E:   Call Proc_292_100_113E1F4(CStr(var_D4), CStr(Me.FGrid.TextMatrix)), var_1D0, Me.FGrid.TextMatrix), 1, CVar(CLng(1)), var_D4)
  loc_17BB2D2:   var_198 = "Select Case When M.SNo<>1 Then M.ConPrefix + ' ' + M.Name + ' C/0 ' Else '' End + (S.ConPrefix + ' ' + S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Name, S.Name As AcName, S.CardNo as CardNo, Mcat.NAme as CompanyType,M.DOB As Birthday,M.WedDate As AnniversaryDay,S.Phone as Phone,S.Mobile as Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail as EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal as CurrBal,SCR.CurBalType as CurBalType, '1' as mType From " & " (((((Subgroup S Left Join MemberFamily M On S.Subcode=M.Subcode)Left Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_17BB2EE:   var_1D8 = CStr(var_C4 & Left(var_D4, &H73) & var_124) & CStr(var_C4 & Left(var_D4, &H73) & var_124) & var_1D0 & " ) " & " ) " & var_AC & " "
  loc_17BB30C:   unk_56303E.Execute var_1D8 & var_B0 & vbNullString & " Order By CardNo,mType", var_D4, -1
  loc_17BB317:   Set var_90 = Me.FGrid
  loc_17BB336:   var_88 = vbNullString
  loc_17BB34D:   If (var_90.RecordCount > 0) Then
  loc_17BB353:     var_90.MoveFirst
  loc_17BB358:     ' Referenced from: 17BBB26
  loc_17BB367:     If Not(var_90.EOF) Then
  loc_17BB36D:       Set var_1F8 = var_8C 
  loc_17BB37C:       var_1F8.AddNew var_C4, var_124
  loc_17BB3A6:       var_1F8.Fields.Item("mLine").Value = "GF"
  loc_17BB3B5:       var_C4 = "Name"
  loc_17BB3C1:       var_1DC = var_90.Fields
  loc_17BB413:       var_1F8.Fields.Item("Name").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_1DC.Item(var_C4)), var_1DC, var_174, var_C4)), &H4B)
  loc_17BB48E:       var_1F8.Fields.Item("AcName").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("AcName")), "From : ", CVar(var_90.Fields.Item("AcName")))), &H4B)
  loc_17BB4F3:       var_1F8.Fields.Item("CardNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CardNo")), CVar(var_90.Fields.Item("CardNo"))))
  loc_17BB553:       var_1F8.Fields.Item("CompanyType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CompanyType"))))
  loc_17BB5B3:       var_1F8.Fields.Item("Birthday").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Birthday"))))
  loc_17BB613:       var_1F8.Fields.Item("AnniversaryDay").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("AnniversaryDay"))))
  loc_17BB673:       var_1F8.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Phone"))))
  loc_17BB6D3:       var_1F8.Fields.Item("Mobile").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Mobile"))))
  loc_17BB733:       var_1F8.Fields.Item("Address").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Address"))))
  loc_17BB793:       var_1F8.Fields.Item("City").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("City"))))
  loc_17BB7F3:       var_1F8.Fields.Item("Country").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Country"))))
  loc_17BB853:       var_1F8.Fields.Item("State").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("State"))))
  loc_17BB8B3:       var_1F8.Fields.Item("PinCode").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PinCode"))))
  loc_17BB913:       var_1F8.Fields.Item("EMail").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Email"))))
  loc_17BB973:       var_1F8.Fields.Item("Father").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Father"))))
  loc_17BB9D3:       var_1F8.Fields.Item("Mother").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("mOther"))))
  loc_17BBA33:       var_1F8.Fields.Item("CurrBal").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CurrBal"))))
  loc_17BBA93:       var_1F8.Fields.Item("CurrBalType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CurBalType"))))
  loc_17BBAAB:       var_C4 = "mType"
  loc_17BBAD7:       var_124 = "mType"
  loc_17BBAF3:       var_1F8.Fields.Item(var_124).Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_C4))))
  loc_17BBB13:       var_1F8.Update var_C4, var_124
  loc_17BBB1A:       Set var_1F8 = Nothing 
  loc_17BBB21:       var_90.MoveNext
  loc_17BBB26:       GoTo loc_17BB358
  loc_17BBB29:     End If
  loc_17BBB29:   End If
  loc_17BBB33:   arg_2C = Me.FGrid1.Text
  loc_17BBB51:   Me.FGrid1.Rows = 2
  loc_17BBB6D:   If (var_8C.RecordCount > 0) Then
  loc_17BBB76:     CVarUnk
  loc_17BBB7B:     VerifyVarObj
  loc_17BBB81:     Set var_1DC = Me.FGrid1
  loc_17BBB87:     LateIdStAd
  loc_17BBBB7:     Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_17BBBC2:   End If
  loc_17BBBC6:   Set var_20C = Me.FGrid1
  loc_17BBBD2:   var_20C.Tag = "MemBirthAnnvDtls"
  loc_17BBBE3:   var_20C.Cols = &H14
  loc_17BBBE8:   var_C4 = 0
  loc_17BBBF1:   var_174 = 0
  loc_17BBBFA:   var_194 = "mLine"
  loc_17BBC03:   LateIdCallSt
  loc_17BBC0B:   var_C4 = 0
  loc_17BBC14:   var_174 = 0
  loc_17BBC20:   LateIdCallSt
  loc_17BBC28:   var_C4 = 0
  loc_17BBC31:   var_174 = 1
  loc_17BBC3A:   var_194 = "Name"
  loc_17BBC43:   LateIdCallSt
  loc_17BBC4B:   var_C4 = 1
  loc_17BBC54:   var_174 = &H1194
  loc_17BBC60:   LateIdCallSt
  loc_17BBC68:   var_C4 = 0
  loc_17BBC71:   var_174 = 2
  loc_17BBC7A:   var_194 = "AcName"
  loc_17BBC83:   LateIdCallSt
  loc_17BBC8B:   var_C4 = 2
  loc_17BBC94:   var_174 = &HBB8
  loc_17BBCA0:   LateIdCallSt
  loc_17BBCA8:   var_C4 = 0
  loc_17BBCB1:   var_174 = 3
  loc_17BBCBA:   var_194 = "Card No."
  loc_17BBCC3:   LateIdCallSt
  loc_17BBCCB:   var_C4 = 3
  loc_17BBCD4:   var_174 = &H3E8
  loc_17BBCE0:   LateIdCallSt
  loc_17BBCE8:   var_C4 = 0
  loc_17BBCF1:   var_174 = 4
  loc_17BBCFA:   var_194 = "Company Type"
  loc_17BBD03:   LateIdCallSt
  loc_17BBD0B:   var_C4 = 4
  loc_17BBD14:   var_174 = &H708
  loc_17BBD20:   LateIdCallSt
  loc_17BBD28:   var_C4 = 0
  loc_17BBD31:   var_174 = 5
  loc_17BBD3A:   var_194 = "Birthday"
  loc_17BBD43:   LateIdCallSt
  loc_17BBD4B:   var_C4 = 5
  loc_17BBD54:   var_174 = &H4B0
  loc_17BBD60:   LateIdCallSt
  loc_17BBD68:   var_C4 = 0
  loc_17BBD71:   var_174 = 6
  loc_17BBD7A:   var_194 = "Anniversary"
  loc_17BBD83:   LateIdCallSt
  loc_17BBD8B:   var_C4 = 6
  loc_17BBD94:   var_174 = &H4B0
  loc_17BBDA0:   LateIdCallSt
  loc_17BBDA8:   var_C4 = 0
  loc_17BBDB1:   var_174 = 7
  loc_17BBDBA:   var_194 = "Phone"
  loc_17BBDC3:   LateIdCallSt
  loc_17BBDCB:   var_C4 = 7
  loc_17BBDD4:   var_174 = &H4B0
  loc_17BBDE0:   LateIdCallSt
  loc_17BBDE8:   var_C4 = 0
  loc_17BBDF1:   var_174 = 8
  loc_17BBDFA:   var_194 = "Mobile"
  loc_17BBE03:   LateIdCallSt
  loc_17BBE0B:   var_C4 = 8
  loc_17BBE14:   var_174 = &H4B0
  loc_17BBE20:   LateIdCallSt
  loc_17BBE28:   var_C4 = 0
  loc_17BBE31:   var_174 = 9
  loc_17BBE3A:   var_194 = "Address"
  loc_17BBE43:   LateIdCallSt
  loc_17BBE4B:   var_C4 = 9
  loc_17BBE54:   var_174 = &HFA0
  loc_17BBE60:   LateIdCallSt
  loc_17BBE68:   var_C4 = 0
  loc_17BBE71:   var_174 = &HA
  loc_17BBE7A:   var_194 = "City"
  loc_17BBE83:   LateIdCallSt
  loc_17BBE8B:   var_C4 = &HA
  loc_17BBE94:   var_174 = &H708
  loc_17BBEA0:   LateIdCallSt
  loc_17BBEA8:   var_C4 = 0
  loc_17BBEB1:   var_174 = &HB
  loc_17BBEBA:   var_194 = "Country"
  loc_17BBEC3:   LateIdCallSt
  loc_17BBECB:   var_C4 = &HB
  loc_17BBED4:   var_174 = &H708
  loc_17BBEE0:   LateIdCallSt
  loc_17BBEE8:   var_C4 = 0
  loc_17BBEF1:   var_174 = &HC
  loc_17BBEFA:   var_194 = "State"
  loc_17BBF03:   LateIdCallSt
  loc_17BBF0B:   var_C4 = &HC
  loc_17BBF14:   var_174 = &H708
  loc_17BBF20:   LateIdCallSt
  loc_17BBF28:   var_C4 = 0
  loc_17BBF31:   var_174 = &HD
  loc_17BBF3A:   var_194 = "PinCode"
  loc_17BBF43:   LateIdCallSt
  loc_17BBF4B:   var_C4 = &HD
  loc_17BBF54:   var_174 = &H5DC
  loc_17BBF60:   LateIdCallSt
  loc_17BBF68:   var_C4 = 0
  loc_17BBF71:   var_174 = &HE
  loc_17BBF7A:   var_194 = "EMail"
  loc_17BBF83:   LateIdCallSt
  loc_17BBF8B:   var_C4 = &HE
  loc_17BBF94:   var_174 = &H5DC
  loc_17BBFA0:   LateIdCallSt
  loc_17BBFA8:   var_C4 = 0
  loc_17BBFB1:   var_174 = &HF
  loc_17BBFBA:   var_194 = "Father"
  loc_17BBFC3:   LateIdCallSt
  loc_17BBFCB:   var_C4 = &HF
  loc_17BBFD4:   var_174 = 0
  loc_17BBFE0:   LateIdCallSt
  loc_17BBFE8:   var_C4 = 0
  loc_17BBFF1:   var_174 = &H10
  loc_17BBFFA:   var_194 = "Mother"
  loc_17BC003:   LateIdCallSt
  loc_17BC00B:   var_C4 = &H10
  loc_17BC014:   var_174 = 0
  loc_17BC020:   LateIdCallSt
  loc_17BC028:   var_C4 = 0
  loc_17BC031:   var_174 = &H11
  loc_17BC03A:   var_194 = "CurrBal"
  loc_17BC043:   LateIdCallSt
  loc_17BC04B:   var_C4 = &H11
  loc_17BC05A:   var_174 = CVar(CInt(7)) 'Integer
  loc_17BC061:   LateIdCallSt
  loc_17BC069:   var_C4 = &H11
  loc_17BC072:   var_174 = 0
  loc_17BC07E:   LateIdCallSt
  loc_17BC086:   var_C4 = 0
  loc_17BC08F:   var_174 = &H12
  loc_17BC098:   var_194 = "CurrBalType"
  loc_17BC0A1:   LateIdCallSt
  loc_17BC0A9:   var_C4 = &H12
  loc_17BC0B2:   var_174 = 0
  loc_17BC0BE:   LateIdCallSt
  loc_17BC0C6:   var_C4 = 0
  loc_17BC0CF:   var_174 = &H13
  loc_17BC0D8:   var_194 = "mType"
  loc_17BC0E1:   LateIdCallSt
  loc_17BC0E9:   var_C4 = &H13
  loc_17BC0F2:   var_174 = 0
  loc_17BC0FE:   LateIdCallSt
  loc_17BC108:   Set var_20C = Nothing 
  loc_17BC10F: Else
  loc_17BC12C:   var_194 = "Mailing Label"
  loc_17BC13B:   If (Me.FGrid.TextMatrix = var_194) Then
  loc_17BC144:     Call 0.Method_arg_54 ("Member Birthday/Anniversary Details", 1, 2, var_20C, 1, 2, var_20C, var_194)
  loc_17BC14C:     var_C4 = 0
  loc_17BC176:     var_1D0 = 1 & CStr(Me.FGrid.TextMatrix) & " To :   "
  loc_17BC189:     var_F4 = Me.FGrid
  loc_17BC1A3:     Set var_1DC = 1(1 & CStr(var_F4.TextMatrix))
  loc_17BC1A9:     var_F4.TextBox.Text = var_1D0
  loc_17BC1C9:     var_C4 = 2
  loc_17BC1E0:     var_174 = 0
  loc_17BC1F2:     If (Me.Check1.Value = var_174) Then
  loc_17BC1F8:       var_D4 = Me.FormulaString2
  loc_17BC1FF:       var_C4 = "For Category :   "
  loc_17BC21B:       var_124 = vbNullString
  loc_17BC22C:       Set var_1DC = Me.Text2
  loc_17BC232:       Me.Text2.Text = CStr(var_C4 & Left(var_D4, &H73) & var_124)
  loc_17BC24B:     Else
  loc_17BC252:       Set var_1DC = Me.Text2
  loc_17BC258:       var_1DC.Text = "For Category :     All"
  loc_17BC260:     End If
  loc_17BC26D:     Call Proc_292_95_10915A0(New, var_1DC, var_D4, var_C4, var_C4, "From :   ", var_174)
  loc_17BC275:     Set var_8C = var_1DC
  loc_17BC27B:     var_C4 = CVar(CLng(0)) 'Long
  loc_17BC280:     var_174 = 1
  loc_17BC293:     var_D4 = Me.FGrid.TextMatrix)
  loc_17BC2D9:     Call Proc_292_100_113E1F4(CStr(var_D4), CStr(Me.FGrid.TextMatrix)), var_1D0, Me.FGrid.TextMatrix), 1, CVar(CLng(1)), var_D4, var_174)
  loc_17BC30D:     var_198 = "SELECT S.Name AS Name, S.ConPrefix, RTrim(RTrim(LTrim(S.ConPerSon))+' '+RTrim(LTrim(S.ConPerSonMName))+' '+RTrim(LTrim(S.ConPerSonLName))) As ConPerSon,S.CardNo as CardNo,MCat.Name as MemType, S.Add1, S.Add2, S.Add3, Ltrim(IsNull(S.Pin,'')) As PinCode, c.CityName,ltrim(IsNull(S.Phone,'')) As Phone,ltrim(IsNull(S.Mobile,'')) As Mobile, '1' as mType From " & " (((((Subgroup S Left Join MemberFamily M On S.Subcode=M.Subcode) Left Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) where ActiveYN=1 and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_17BC329:     var_1D8 = CStr(var_C4 & Left(var_D4, &H73) & var_124) & CStr(var_C4 & Left(var_D4, &H73) & var_124) & var_1D0 & " ) " & " ) " & var_AC & " "
  loc_17BC347:     unk_56303E.Execute var_1D8 & var_B0 & vbNullString & " Order By CardNo,mType ", var_D4, -1
  loc_17BC352:     Set var_90 = Me.FGrid
  loc_17BC371:     var_88 = vbNullString
  loc_17BC388:     If (var_90.RecordCount > 0) Then
  loc_17BC38E:       var_90.MoveFirst
  loc_17BC393:       ' Referenced from:   17BC8EB
  loc_17BC3A2:       If Not(var_90.EOF) Then
  loc_17BC3A8:         Set var_210 = var_8C 
  loc_17BC3B7:         var_210.AddNew var_C4, var_124
  loc_17BC3E1:         var_210.Fields.Item("mLine").Value = "GF"
  loc_17BC3F0:         var_C4 = "Name"
  loc_17BC3FC:         var_1DC = var_90.Fields
  loc_17BC438:         var_210.Fields.Item("Name").Value = CVar(Proc_6_38_E68A98(CVar(var_1DC.Item(var_C4)), var_1DC, var_C4, var_C4, var_20C))
  loc_17BC450:         var_C4 = "ConPrefix"
  loc_17BC498:         var_210.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_C4)), var_174, var_C4))
  loc_17BC4F8:         var_210.Fields.Item("ConPerSon").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ConPerson")), var_20C))
  loc_17BC558:         var_210.Fields.Item("CardNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CardNo"))))
  loc_17BC5B8:         var_210.Fields.Item("MemType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemType"))))
  loc_17BC618:         var_210.Fields.Item("Add1").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Add1"))))
  loc_17BC678:         var_210.Fields.Item("Add2").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Add2"))))
  loc_17BC6D8:         var_210.Fields.Item("Add3").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Add3"))))
  loc_17BC738:         var_210.Fields.Item("PinCode").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PinCode"))))
  loc_17BC798:         var_210.Fields.Item("CityName").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CityName"))))
  loc_17BC7F8:         var_210.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Phone"))))
  loc_17BC858:         var_210.Fields.Item("Mobile").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Mobile"))))
  loc_17BC870:         var_C4 = "mType"
  loc_17BC89C:         var_124 = "mType"
  loc_17BC8B8:         var_210.Fields.Item(var_124).Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_C4))))
  loc_17BC8D8:         var_210.Update var_C4, var_124
  loc_17BC8DF:         Set var_210 = Nothing 
  loc_17BC8E6:         var_90.MoveNext
  loc_17BC8EB:         GoTo loc_17BC393
  loc_17BC8EE:       End If
  loc_17BC8EE:     End If
  loc_17BC8F8:     arg_2C = Me.FGrid1.Text
  loc_17BC916:     Me.FGrid1.Rows = 2
  loc_17BC932:     If (var_8C.RecordCount > 0) Then
  loc_17BC93B:       CVarUnk
  loc_17BC940:       VerifyVarObj
  loc_17BC946:       Set var_1DC = Me.FGrid1
  loc_17BC94C:       LateIdStAd
  loc_17BC97C:       Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_17BC987:     End If
  loc_17BC98B:     Set var_214 = Me.FGrid1
  loc_17BC997:     var_214.Tag = "MemBirthMailLabel"
  loc_17BC9A8:     var_214.Cols = &HE
  loc_17BC9AD:     var_C4 = 0
  loc_17BC9B6:     var_174 = 0
  loc_17BC9BF:     var_194 = "mLine"
  loc_17BC9C8:     LateIdCallSt
  loc_17BC9D0:     var_C4 = 0
  loc_17BC9D9:     var_174 = 0
  loc_17BC9E5:     LateIdCallSt
  loc_17BC9ED:     var_C4 = 0
  loc_17BC9F6:     var_174 = 1
  loc_17BC9FF:     var_194 = "Name"
  loc_17BCA08:     LateIdCallSt
  loc_17BCA10:     var_C4 = 1
  loc_17BCA19:     var_174 = &HBB8
  loc_17BCA25:     LateIdCallSt
  loc_17BCA2D:     var_C4 = 0
  loc_17BCA36:     var_174 = 2
  loc_17BCA3F:     var_194 = "Con Prefix"
  loc_17BCA48:     LateIdCallSt
  loc_17BCA50:     var_C4 = 2
  loc_17BCA59:     var_174 = &H5DC
  loc_17BCA65:     LateIdCallSt
  loc_17BCA6D:     var_C4 = 0
  loc_17BCA76:     var_174 = 3
  loc_17BCA7F:     var_194 = "Con PerSon"
  loc_17BCA88:     LateIdCallSt
  loc_17BCA90:     var_C4 = 3
  loc_17BCA99:     var_174 = &H7D0
  loc_17BCAA5:     LateIdCallSt
  loc_17BCAAD:     var_C4 = 0
  loc_17BCAB6:     var_174 = 4
  loc_17BCABF:     var_194 = "Card No."
  loc_17BCAC8:     LateIdCallSt
  loc_17BCAD0:     var_C4 = 4
  loc_17BCAD9:     var_174 = &H708
  loc_17BCAE5:     LateIdCallSt
  loc_17BCAED:     var_C4 = 0
  loc_17BCAF6:     var_174 = 5
  loc_17BCAFF:     var_194 = "Mem Type"
  loc_17BCB08:     LateIdCallSt
  loc_17BCB10:     var_C4 = 5
  loc_17BCB19:     var_174 = &H7D0
  loc_17BCB25:     LateIdCallSt
  loc_17BCB2D:     var_C4 = 0
  loc_17BCB36:     var_174 = 6
  loc_17BCB3F:     var_194 = "Add1"
  loc_17BCB48:     LateIdCallSt
  loc_17BCB50:     var_C4 = 6
  loc_17BCB59:     var_174 = &H7D0
  loc_17BCB65:     LateIdCallSt
  loc_17BCB6D:     var_C4 = 0
  loc_17BCB76:     var_174 = 7
  loc_17BCB7F:     var_194 = "Add2"
  loc_17BCB88:     LateIdCallSt
  loc_17BCB90:     var_C4 = 7
  loc_17BCB99:     var_174 = &H7D0
  loc_17BCBA5:     LateIdCallSt
  loc_17BCBAD:     var_C4 = 0
  loc_17BCBB6:     var_174 = 8
  loc_17BCBBF:     var_194 = "Add3"
  loc_17BCBC8:     LateIdCallSt
  loc_17BCBD0:     var_C4 = 8
  loc_17BCBD9:     var_174 = &H7D0
  loc_17BCBE5:     LateIdCallSt
  loc_17BCBED:     var_C4 = 0
  loc_17BCBF6:     var_174 = 9
  loc_17BCBFF:     var_194 = "PinCode"
  loc_17BCC08:     LateIdCallSt
  loc_17BCC10:     var_C4 = 9
  loc_17BCC19:     var_174 = &HFA0
  loc_17BCC25:     LateIdCallSt
  loc_17BCC2D:     var_C4 = 0
  loc_17BCC36:     var_174 = &HA
  loc_17BCC3F:     var_194 = "City Name"
  loc_17BCC48:     LateIdCallSt
  loc_17BCC50:     var_C4 = &HA
  loc_17BCC59:     var_174 = &H708
  loc_17BCC65:     LateIdCallSt
  loc_17BCC6D:     var_C4 = 0
  loc_17BCC76:     var_174 = &HB
  loc_17BCC7F:     var_194 = "Phone"
  loc_17BCC88:     LateIdCallSt
  loc_17BCC90:     var_C4 = &HB
  loc_17BCC99:     var_174 = &H708
  loc_17BCCA5:     LateIdCallSt
  loc_17BCCAD:     var_C4 = 0
  loc_17BCCB6:     var_174 = &HC
  loc_17BCCBF:     var_194 = "Mobile"
  loc_17BCCC8:     LateIdCallSt
  loc_17BCCD0:     var_C4 = &HC
  loc_17BCCD9:     var_174 = &H708
  loc_17BCCE5:     LateIdCallSt
  loc_17BCCED:     var_C4 = 0
  loc_17BCCF6:     var_174 = &HD
  loc_17BCCFF:     var_194 = "mType"
  loc_17BCD08:     LateIdCallSt
  loc_17BCD10:     var_C4 = &HD
  loc_17BCD19:     var_174 = 0
  loc_17BCD25:     LateIdCallSt
  loc_17BCD2F:     Set var_214 = Nothing 
  loc_17BCD33:   End If
  loc_17BCD33: End If
  loc_17BCD47: If (var_90.RecordCount <= 0) Then
  loc_17BCD4F:   global_160 = 0
  loc_17BCD52:   Exit Sub
  loc_17BCD53: End If
  loc_17BCD57: Set var_1DC = Me.FGrid1
  loc_17BCD87: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_17BCD8A:   var_C4 = vbNullString
  loc_17BCD94:   Set var_1DC = Me.FGrid1
  loc_17BCDA5: End If
  loc_17BCDDC: var_C4 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_17BCDFC: Me.FGrid1.Row = CVar(CLng(IIf(var_C4, FRow, 1)))
  loc_17BCE4A: var_C4 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_17BCE6A: Me.FGrid1.Col = CVar(CLng(IIf(var_C4, Fcol, 1)))
  loc_17BCE86: Set var_8C = Nothing
  loc_17BCE8E: Set var_90 = Nothing
  loc_17BCE93: IStAd
  loc_17BCE97: Exit Sub
End Sub

Public Sub MemTaxReport(formName, FRow, Fcol) '19CBBB4
  'Data Table: 563038
  Dim var_1B4 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_1E4 As Variant
  Dim var_234 As Variant
  Dim var_264 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_154 As Variant
  Dim var_268 As String
  Dim var_270 As String
  Dim var_254 As Variant
  Dim var_29C As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_224 As String
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_134 As Double
  Dim var_AA As Integer
  Dim var_348 As Recordset15
  Dim var_27C As Variant
  Dim var_90 As Recordset15
  Dim var_B2 As Integer
  Dim unk_56303E As Connection15
  Dim var_98 As Recordset15
  Dim var_12C As Double
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_C4 As Double
  Dim var_37C As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_388 As MSHFlexGrid
  loc_19C8AD0: var_1B4 = " Between "
  loc_19C8AEA: VarLateMemCallLdRfVar
  loc_19C8AF5: Proc_6_7_F25D88(var_1A4, Me.FGrid, 1)
  loc_19C8B06: var_1E4 = 0 & var_1A4 & " And " 
  loc_19C8B1F: VarLateMemCallLdRfVar
  loc_19C8B2A: Proc_6_7_F25D88(var_254, Me.FGrid, 1)
  loc_19C8B37: var_9C = CStr(1 & var_254)
  loc_19C8B4F: var_144 = 1
  loc_19C8B78: If (Me.Check1.Value = 0) Then
  loc_19C8B82:   var_184 = CVar(var_9C & " And SubString(M1.Type,1,1) + M1.FacilityCode In (") 'String
  loc_19C8B9B:   var_A4 = CStr(Me.Check1 & Me.GridString1 & ") ")
  loc_19C8BA9: End If
  loc_19C8BA9: var_144 = 2
  loc_19C8BD2: If (Me.Check1.Value = 0) Then
  loc_19C8BD5:   var_144 = " And M.MemCatCode In ("
  loc_19C8BF0:   var_A0 = CStr(var_144 & Me.GridString2 & ") ")
  loc_19C8BFC: End If
  loc_19C8C0B: var_B0 = CStr(Me.FGrid.Tag)
  loc_19C8C1B: Call 0.Method_arg_54 ("Member Tax Report", var_144, var_144)
  loc_19C8C23: var_144 = 0
  loc_19C8C60: var_1A4 = Me.FGrid
  loc_19C8C7A: Set var_27C = 1(1 & CStr(var_1A4.TextMatrix))
  loc_19C8C80: var_1A4.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_19C8CA3: var_144 = 2
  loc_19C8CB3: var_184 = Me.FGrid
  loc_19C8CCD: Set var_27C = var_144(1 & CStr(var_184.TextMatrix))
  loc_19C8CD3: var_184.TextBox.Text = "Tax Name : "
  loc_19C8CF6: Call Proc_292_97_10FE234(New, var_27C, var_144)
  loc_19C8CFE: Set var_8C = var_27C
  loc_19C8D23: var_270 = "Select Name As MemCat, Code As MemCatCode From MemCatMast Where Site_Code='" & MemVar_1F92070 & "' And (LogSite_Code='" & MemVar_1F92078
  loc_19C8D4C: Me.Connection15.Execute CStr(CVar(var_270 & "' Or LogSite_Code='HO') And Code In (") & Me.GridString2 & ") Order By Name"), var_1E4, -1
  loc_19C8D57: Set var_94 = var_27C
  loc_19C8D89: var_268 = "SELECT Description,'R'+Code As ChrgCode,Substring(Description,1,5) As SName FROM MembershipRevMast where Site_Code='" & MemVar_1F92070
  loc_19C8D97: var_270 = "Select Name As MemCat, Code As MemCatCode From MemCatMast Where Site_Code='" & MemVar_1F92070 & "' And (LogSite_Code='" & MemVar_1F92078
  loc_19C8D9E: var_184 = CVar(var_270 & "' Or LogSite_Code='HO') And 'R'+Code In (") 'String
  loc_19C8DAD: var_144 = ") Union All Select Name As Description,'F'+Code As ChrgCode,SName From MemFacilityMast where Site_Code='"
  loc_19C8DB9: var_154 = CVar(MemVar_1F92070) 'String
  loc_19C8DC5: var_234 = CVar(var_270 & "' Or LogSite_Code='HO') And Code In (") & Me.GridString1 & ") Order By Name" & var_154 & "' And (LogSite_Code='" 
  loc_19C8DD3: var_1B4 = "' Or LogSite_Code='HO') And 'F'+Code In ("
  loc_19C8DE8: var_1D4 = ") Union All Select Name As Description,'O'+Code As ChrgCode,ShortName As SName From Depart where Site_Code='"
  loc_19C8DF7: var_2AC = var_234 & CVar(MemVar_1F92078) & 1 & Me.GridString1 & " And " & CVar(MemVar_1F92070) 
  loc_19C8E0E: var_224 = "' Or LogSite_Code='HO') And 'O'+Code In ("
  loc_19C8E1A: var_2EC = Me.GridString1
  loc_19C8E36: Me.Connection15.Execute CStr(var_2AC & "' And (LogSite_Code='" & CVar(MemVar_1F92078) & var_224 & var_2EC & ") Order By Description"), var_33C, -1
  loc_19C8E41: Set var_90 = var_27C
  loc_19C8E8F: If (var_94.RecordCount > 0) Then
  loc_19C8E95:   var_94.MoveFirst
  loc_19C8E9A:   ' Referenced from: 19CADF1
  loc_19C8EA9:   If Not(var_94.EOF) Then
  loc_19C8EAF:     var_BC = CDbl(0)
  loc_19C8EB5:     var_11C = CDbl(0)
  loc_19C8ECA:     var_AA = (var_AA + 1)
  loc_19C8ED0:     Set var_348 = var_8C 
  loc_19C8EDF:     var_348.AddNew ") Order By Name", var_154
  loc_19C8F09:     var_348.Fields.Item("MLine").Value = vbNullString
  loc_19C8F3D:     var_348.Fields.Item("Sno").Value = CVar(CStr(var_AA))
  loc_19C8F97:     var_348.Fields.Item("MemCat").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("MemCat")), var_AA, CDbl(0), CDbl(0), var_11C, var_BC))
  loc_19C8FBB:     var_27C = var_94.Fields
  loc_19C8FF7:     var_348.Fields.Item("MemCatCode").Value = CVar(Proc_6_38_E68A98(CVar(var_27C.Item("MemCatcode")), var_27C, var_27C))
  loc_19C900F:     var_90.MoveFirst
  loc_19C9014:     ' Referenced from: 19CACB8
  loc_19C9025:     If (var_90.EOF = 0) Then
  loc_19C9030:       If (MemVar_1F92078 = "LL") Then
  loc_19C9090:         If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")), 1) = "F") Then
  loc_19C90A7:           var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C90AE:           var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C90E4:           var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C912E:           var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" 
  loc_19C9141:           var_29C = var_264 & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C914F:           unk_56303E.Execute CStr(var_29C), var_2AC, -1
  loc_19C915A:           Set var_98 = var_358
  loc_19C91A0:           If (var_98.RecordCount > 0) Then
  loc_19C91CE:             var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C9201:             Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")), CVar(var_98.Fields.Item("TaxAmt")), var_B2)
  loc_19C920A:             var_134 = CSng(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")))
  loc_19C922B:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9232:             var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C925F:             var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), 0, "From : ")) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C92A9:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C92C5:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" 
  loc_19C92CF:             var_2AC = var_29C & CVar(var_B0) 
  loc_19C92F9:             unk_56303E.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode"), var_2EC, -1
  loc_19C9304:             Set var_98 = var_358
  loc_19C933E:           End If
  loc_19C9341:         Else
  loc_19C9399:           If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), 1) = "R") Then
  loc_19C93B0:             var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C93B7:             var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C93E4:             var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C942E:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C944A:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C9458:             unk_56303E.Execute CStr(var_29C), var_2AC, -1
  loc_19C9463:             Set var_98 = var_358
  loc_19C94A9:             If (var_98.RecordCount > 0) Then
  loc_19C94D7:               var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C950A:               Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), var_B2, var_358)
  loc_19C9513:               var_134 = CSng(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C9534:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C953B:               var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C9568:               var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C95B2:               var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C95CE:               var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" 
  loc_19C95D8:               var_2AC = var_29C & CVar(var_B0) 
  loc_19C9602:               unk_56303E.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode"), var_2EC, -1
  loc_19C960D:               Set var_98 = var_358
  loc_19C9647:             End If
  loc_19C964A:           Else
  loc_19C96A2:             If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), 1) = "O") Then
  loc_19C96B9:               var_268 = "Select IsNull(Max(M2.SNo1),0) SNo1,Sum(M2.TaxAmt) As TaxAmt From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Left Join RevMast R On R.Code=M2.TaxCode Where M.Vdate" & var_9C
  loc_19C96C0:               var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C96ED:               var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C9737:               var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C9753:               var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And R.ShortName='SWC' Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C9761:               unk_56303E.Execute CStr(var_29C), var_2AC, -1
  loc_19C976C:               Set var_98 = var_358
  loc_19C97B2:               If (var_98.RecordCount > 0) Then
  loc_19C97E0:                 var_B2 = CInt(var_98.Fields.Item("Sno1").Value)
  loc_19C9813:                 Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), var_B2, var_358)
  loc_19C981C:                 var_134 = CSng(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C983D:                 var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9844:                 var_194 = CVar(var_268 & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C9871:                 var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C98BB:                 var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C98D7:                 var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" 
  loc_19C98FD:                 var_2DC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0 And M2.Sno1>" & CVar(var_B2) & " Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C990B:                 unk_56303E.Execute CStr(var_2DC), var_2EC, -1
  loc_19C9916:                 Set var_98 = var_358
  loc_19C9950:               End If
  loc_19C9950:             End If
  loc_19C9950:           End If
  loc_19C9950:         End If
  loc_19C9964:         If (var_98.RecordCount > 0) Then
  loc_19C996E:           var_124 = (var_124 + var_134)
  loc_19C9978:           var_12C = (var_12C + var_134)
  loc_19C99A8:           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)), CVar(var_98.Fields.Item("TaxAmt")), CVar(var_BC), var_12C, CDbl(0))
  loc_19C99B0:           var_1A4 = (var_358 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_134)))
  loc_19C99B5:           var_BC = CSng(var_1A4)
  loc_19C99C4:         End If
  loc_19C9A1C:         If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134)), 1) = "F") Then
  loc_19C9AAD:           var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9AB4:           var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C9ABA:           var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_BC, var_134)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C9ADD:           var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C9AF9:           var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" 
  loc_19C9B13:           var_2FC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), vbNullString, CVar(" And M2.Sno1<=" & CStr(var_B2))) 
  loc_19C9B2A:           unk_56303E.Execute CStr(var_2FC & " Group By M.MemCatCode,M2.FacilityCode"), var_33C, -1
  loc_19C9B35:           Set var_98 = var_358
  loc_19C9B7C:         Else
  loc_19C9BD4:           If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358)), 1) = "R") Then
  loc_19C9C65:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9C6C:             var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C9C72:             var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358, var_358)) & var_90.Fields.Item("ChrgCode").Value 
  loc_19C9C95:             var_254 = var_1A4 & "') And M.MemCatCode In ('" & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) 
  loc_19C9CB1:             var_29C = var_254 & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" 
  loc_19C9CCB:             var_2FC = var_29C & CVar(var_B0) & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), vbNullString, CVar(" And M2.Sno1<=" & CStr(var_B2))) 
  loc_19C9CE2:             unk_56303E.Execute CStr(var_2FC & " Group By M.MemCatCode,M2.FacilityCode"), var_33C, -1
  loc_19C9CED:             Set var_98 = var_358
  loc_19C9D34:           Else
  loc_19C9D8C:             If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "O") Then
  loc_19C9DF1:               var_2CC = vbNullString
  loc_19C9E1D:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9E24:               var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19C9E33:               var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C9E56:               var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" 
  loc_19C9E73:               var_2AC = var_264 & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" & CVar(var_B0) 
  loc_19C9E8C:               var_31C = var_2AC & "' And M2.TaxAmt<>0" & IIf((var_B2 = 0), var_2CC, CVar(" And M2.Sno1<=" & CStr(var_B2))) & " Group By M.MemCatCode,M2.FacilityCode" 
  loc_19C9E9A:               unk_56303E.Execute CStr(var_31C), var_33C, -1
  loc_19C9EA5:               Set var_98 = var_358
  loc_19C9EE9:             End If
  loc_19C9EE9:           End If
  loc_19C9EE9:         End If
  loc_19C9EEC:       Else
  loc_19C9F44:         If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "F") Then
  loc_19C9F5B:           var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19C9F62:           var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19C9F98:           var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19C9FE2:           var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" 
  loc_19C9FFF:           var_2AC = var_264 & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Facility' And M2.TaxCode='" & CVar(var_B0) 
  loc_19CA016:           unk_56303E.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19CA021:           Set var_98 = var_358
  loc_19CA05A:         Else
  loc_19CA0B2:           If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "R") Then
  loc_19CA0C9:             var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.FacilityCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19CA0D0:             var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.FacilityCode In ('") 'String
  loc_19CA106:             var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19CA150:             var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" 
  loc_19CA16D:             var_2AC = var_264 & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Revenue' And M2.TaxCode='" & CVar(var_B0) 
  loc_19CA184:             unk_56303E.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19CA18F:             Set var_98 = var_358
  loc_19CA1C8:           Else
  loc_19CA220:             If (Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), 1) = "O") Then
  loc_19CA237:               var_268 = "Select Sum(M2.BaseAmt) As BaseAmt,Sum(M2.TaxAmt) As TaxAmt, Max(M.MemCatCode) As MemCatCode, Max(SubString(M1.Type,1,1) + M1.OutletCode) As FacilityCode From MemBill2 M2 Left Join MemBill1 M1 On M1.DocId=M2.DocId And M1.Sno=M2.Sno Left Join MemBill M On M2.DocId=M.DocId Where M.Vdate" & var_9C
  loc_19CA23E:               var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358) & " And SubString(M1.Type,1,1) + M1.OutletCode In ('") 'String
  loc_19CA274:               var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)) & var_90.Fields.Item("ChrgCode").Value & "') And M.MemCatCode In ('" 
  loc_19CA2BE:               var_264 = var_1C4 & var_94.Fields.Item("MemCatcode").Value & "') And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" 
  loc_19CA2DB:               var_2AC = var_264 & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') And M1.Type='Outlet' And M2.TaxCode='" & CVar(var_B0) 
  loc_19CA2F2:               unk_56303E.Execute CStr(var_2AC & "' And M2.TaxAmt<>0 Group By M.MemCatCode,M2.FacilityCode"), var_2CC, -1
  loc_19CA2FD:               Set var_98 = var_358
  loc_19CA333:             End If
  loc_19CA333:           End If
  loc_19CA333:         End If
  loc_19CA333:       End If
  loc_19CA347:       If (var_98.RecordCount > 0) Then
  loc_19CA35E:         If (var_90.AbsolutePosition = 1) Then
  loc_19CA387:           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_358)
  loc_19CA3D4:           var_348.Fields.Item("Chrg1").Value = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19CA41E:           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_CC), 1)
  loc_19CA426:           var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA42B:           var_CC = CSng("0.00")
  loc_19CA43D:         Else
  loc_19CA451:           If (var_90.AbsolutePosition = 2) Then
  loc_19CA47A:             Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_CC)
  loc_19CA4C7:             var_348.Fields.Item("Chrg2").Value = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19CA511:             Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_D4), 1)
  loc_19CA519:             var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA51E:             var_D4 = CSng("0.00")
  loc_19CA530:           Else
  loc_19CA544:             If (var_90.AbsolutePosition = 3) Then
  loc_19CA56D:               Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_D4)
  loc_19CA5BA:               var_348.Fields.Item("Chrg3").Value = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19CA604:               Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_DC), 1)
  loc_19CA60C:               var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA611:               var_DC = CSng("0.00")
  loc_19CA623:             Else
  loc_19CA637:               If (var_90.AbsolutePosition = 4) Then
  loc_19CA660:                 Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_DC)
  loc_19CA6AD:                 var_348.Fields.Item("Chrg4").Value = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19CA6F7:                 Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_E4), 1)
  loc_19CA6FF:                 var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA704:                 var_E4 = CSng("0.00")
  loc_19CA716:               Else
  loc_19CA72A:                 If (var_90.AbsolutePosition = 5) Then
  loc_19CA753:                   Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_E4)
  loc_19CA7A0:                   var_348.Fields.Item("Chrg5").Value = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00")))
  loc_19CA7EA:                   Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_EC), 1)
  loc_19CA7F2:                   var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA7F7:                   var_EC = CSng("0.00")
  loc_19CA809:                 Else
  loc_19CA81D:                   If (var_90.AbsolutePosition = 6) Then
  loc_19CA846:                     Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_EC)
  loc_19CA870:                     var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19CA893:                     var_348.Fields.Item("Chrg6").Value = var_1E4
  loc_19CA8DD:                     Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_F4), 1)
  loc_19CA8E5:                     var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA8EA:                     var_F4 = CSng("0.00")
  loc_19CA8FC:                   Else
  loc_19CA910:                     If (var_90.AbsolutePosition = 7) Then
  loc_19CA939:                       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_F4)
  loc_19CA963:                       var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19CA986:                       var_348.Fields.Item("Chrg7").Value = var_1E4
  loc_19CA9D0:                       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_FC), 1)
  loc_19CA9D8:                       var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CA9DD:                       var_FC = CSng("0.00")
  loc_19CA9EF:                     Else
  loc_19CAA03:                       If (var_90.AbsolutePosition = 8) Then
  loc_19CAA2C:                         Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_FC)
  loc_19CAA56:                         var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19CAA79:                         var_348.Fields.Item("Chrg8").Value = var_1E4
  loc_19CAAC3:                         Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_104), 1)
  loc_19CAACB:                         var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CAAD0:                         var_104 = CSng("0.00")
  loc_19CAAE2:                       Else
  loc_19CAAF6:                         If (var_90.AbsolutePosition = 9) Then
  loc_19CAB1F:                           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), var_104)
  loc_19CAB49:                           var_1E4 = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), "0.00"))) 'String
  loc_19CAB6C:                           var_348.Fields.Item("Chrg9").Value = var_1E4
  loc_19CABB6:                           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_10C), 1)
  loc_19CABBE:                           var_1A4 = (1 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CABC3:                           var_10C = CSng("0.00")
  loc_19CABD5:                         Else
  loc_19CAC02:                           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_11C))
  loc_19CAC0A:                           var_1A4 = (var_10C + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CAC0F:                           var_11C = CSng("0.00")
  loc_19CAC4B:                           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), CVar(var_98.Fields.Item("BaseAmt")), CVar(var_114))
  loc_19CAC53:                           var_1A4 = (var_11C + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CAC58:                           var_114 = CSng("0.00")
  loc_19CAC67:                         End If
  loc_19CAC67:                       End If
  loc_19CAC67:                     End If
  loc_19CAC67:                   End If
  loc_19CAC67:                 End If
  loc_19CAC67:               End If
  loc_19CAC67:             End If
  loc_19CAC67:           End If
  loc_19CAC67:         End If
  loc_19CAC8D:         var_184 = CVar(var_98.Fields.Item("TaxAmt")) 'Address
  loc_19CAC94:         Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)), var_184, CVar(var_BC))
  loc_19CAC9C:         var_1A4 = (var_114 + CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChrgCode")), var_358)))
  loc_19CACA1:         var_BC = CSng("0.00")
  loc_19CACB0:       End If
  loc_19CACB3:       var_90.MoveNext
  loc_19CACB8:       GoTo loc_19C9014
  loc_19CACBB:     End If
  loc_19CACC2:     var_C4 = (var_C4 + var_BC)
  loc_19CACD0:     Proc_6_47_EF59D0(var_184, var_BC, var_C4)
  loc_19CACF8:     var_348.Fields.Item("TaxAmt").Value = var_184
  loc_19CAD12:     Proc_6_47_EF59D0(var_184, CDbl(0), var_BC)
  loc_19CAD3A:     var_348.Fields.Item("ChrgSTWLF").Value = var_184
  loc_19CAD54:     Proc_6_47_EF59D0(var_184, var_11C)
  loc_19CAD7C:     var_348.Fields.Item("ChrgOther").Value = var_184
  loc_19CAD8B:     var_154 = "*"
  loc_19CAD94:     var_144 = "Mark"
  loc_19CADB0:     var_348.Fields.Item(var_144).Value = var_154
  loc_19CADC7:     var_348.Update var_144, var_154
  loc_19CADCE:     Set var_348 = Nothing 
  loc_19CADD5:     var_94.MoveNext
  loc_19CADEB:     If (var_94.EOF = &HFF) Then
  loc_19CADEE:       GoTo loc_19CADF4
  loc_19CADF1:     End If
  loc_19CADF1:     GoTo loc_19C8E9A
  loc_19CADF4:     ' Referenced from: 19CADEE
  loc_19CADF4:   End If
  loc_19CADF7:   Set var_37C = var_8C 
  loc_19CAE06:   var_37C.AddNew var_144, var_154
  loc_19CAE30:   var_37C.Fields.Item("mLine").Value = "GF"
  loc_19CAE3C:   var_154 = "Total ->"
  loc_19CAE61:   var_37C.Fields.Item("MemCat").Value = "GF"
  loc_19CAE78:   Proc_6_47_EF59D0(var_184, var_C4)
  loc_19CAEA0:   var_37C.Fields.Item("TaxAmt").Value = var_184
  loc_19CAEBA:   Proc_6_47_EF59D0(var_184, var_CC)
  loc_19CAEE2:   var_37C.Fields.Item("Chrg1").Value = var_184
  loc_19CAEFC:   Proc_6_47_EF59D0(var_184, var_D4)
  loc_19CAF24:   var_37C.Fields.Item("Chrg2").Value = var_184
  loc_19CAF3E:   Proc_6_47_EF59D0(var_184, var_DC)
  loc_19CAF66:   var_37C.Fields.Item("Chrg3").Value = var_184
  loc_19CAF80:   Proc_6_47_EF59D0(var_184, var_E4)
  loc_19CAFA8:   var_37C.Fields.Item("Chrg4").Value = var_184
  loc_19CAFC2:   Proc_6_47_EF59D0(var_184, var_EC)
  loc_19CAFEA:   var_37C.Fields.Item("Chrg5").Value = var_184
  loc_19CB004:   Proc_6_47_EF59D0(var_184, var_F4)
  loc_19CB02C:   var_37C.Fields.Item("Chrg6").Value = var_184
  loc_19CB046:   Proc_6_47_EF59D0(var_184, var_FC)
  loc_19CB06E:   var_37C.Fields.Item("Chrg7").Value = var_184
  loc_19CB088:   Proc_6_47_EF59D0(var_184, var_104)
  loc_19CB0B0:   var_37C.Fields.Item("Chrg8").Value = var_184
  loc_19CB0CA:   Proc_6_47_EF59D0(var_184, var_10C)
  loc_19CB0F2:   var_37C.Fields.Item("Chrg9").Value = var_184
  loc_19CB10C:   Proc_6_47_EF59D0(var_184, var_12C)
  loc_19CB134:   var_37C.Fields.Item("ChrgSTWLF").Value = var_184
  loc_19CB14E:   Proc_6_47_EF59D0(var_184, var_114)
  loc_19CB176:   var_37C.Fields.Item("ChrgOther").Value = var_184
  loc_19CB1AA:   var_37C.Fields.Item("Mark").Value = "*"
  loc_19CB1B6:   var_154 = vbNullString
  loc_19CB1BF:   var_144 = "MemCatCode"
  loc_19CB1DB:   var_37C.Fields.Item(var_144).Value = var_154
  loc_19CB1F2:   var_37C.Update var_144, var_154
  loc_19CB1F9:   Set var_37C = Nothing 
  loc_19CB1FD: End If
  loc_19CB207: arg_2C = Me.FGrid1.Text
  loc_19CB225: Me.FGrid1.Rows = 2
  loc_19CB241: If (var_8C.RecordCount > 0) Then
  loc_19CB24A:   CVarUnk
  loc_19CB24F:   VerifyVarObj
  loc_19CB255:   Set var_27C = Me.FGrid1
  loc_19CB25B:   LateIdStAd
  loc_19CB28B:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19CB296: End If
  loc_19CB29A: Set var_388 = Me.FGrid1
  loc_19CB2A6: var_388.Tag = "MemTaxReport"
  loc_19CB2B7: var_388.Cols = &H11
  loc_19CB2BC: var_144 = 0
  loc_19CB2C5: var_164 = 0
  loc_19CB2CE: var_1B4 = "mLine"
  loc_19CB2D7: LateIdCallSt
  loc_19CB2DF: var_144 = 0
  loc_19CB2E8: var_164 = 0
  loc_19CB2F4: LateIdCallSt
  loc_19CB2FC: var_144 = 0
  loc_19CB305: var_164 = 1
  loc_19CB30E: var_1B4 = "SNo"
  loc_19CB317: LateIdCallSt
  loc_19CB31F: var_144 = 1
  loc_19CB32E: var_164 = CVar(CInt(1)) 'Integer
  loc_19CB335: LateIdCallSt
  loc_19CB33D: var_144 = 1
  loc_19CB34C: var_164 = CVar(CInt(1)) 'Integer
  loc_19CB353: LateIdCallSt
  loc_19CB35B: var_144 = 1
  loc_19CB364: var_164 = &H1F4
  loc_19CB370: LateIdCallSt
  loc_19CB378: var_144 = 0
  loc_19CB381: var_164 = 2
  loc_19CB38A: var_1B4 = "Member Category"
  loc_19CB393: LateIdCallSt
  loc_19CB39B: var_144 = 2
  loc_19CB3AA: var_164 = CVar(CInt(1)) 'Integer
  loc_19CB3B1: LateIdCallSt
  loc_19CB3B9: var_144 = 2
  loc_19CB3C8: var_164 = CVar(CInt(1)) 'Integer
  loc_19CB3CF: LateIdCallSt
  loc_19CB3D7: var_144 = 2
  loc_19CB3E0: var_164 = &H1068
  loc_19CB3EC: LateIdCallSt
  loc_19CB3F4: var_144 = 0
  loc_19CB3FD: var_164 = 3
  loc_19CB406: var_1B4 = "Tax Amount"
  loc_19CB40F: LateIdCallSt
  loc_19CB417: var_144 = 3
  loc_19CB426: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB42D: LateIdCallSt
  loc_19CB435: var_144 = 3
  loc_19CB444: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB44B: LateIdCallSt
  loc_19CB453: var_144 = 3
  loc_19CB45C: var_164 = &H578
  loc_19CB468: LateIdCallSt
  loc_19CB470: var_144 = 0
  loc_19CB479: var_164 = 4
  loc_19CB482: var_1B4 = vbNullString
  loc_19CB48B: LateIdCallSt
  loc_19CB493: var_144 = 4
  loc_19CB49C: var_164 = 0
  loc_19CB4A8: LateIdCallSt
  loc_19CB4B0: var_144 = 0
  loc_19CB4B9: var_164 = 5
  loc_19CB4C2: var_1B4 = vbNullString
  loc_19CB4CB: LateIdCallSt
  loc_19CB4D3: var_144 = 5
  loc_19CB4DC: var_164 = 0
  loc_19CB4E8: LateIdCallSt
  loc_19CB4F0: var_144 = 0
  loc_19CB4F9: var_164 = 6
  loc_19CB502: var_1B4 = vbNullString
  loc_19CB50B: LateIdCallSt
  loc_19CB513: var_144 = 6
  loc_19CB51C: var_164 = 0
  loc_19CB528: LateIdCallSt
  loc_19CB530: var_144 = 0
  loc_19CB539: var_164 = 7
  loc_19CB542: var_1B4 = vbNullString
  loc_19CB54B: LateIdCallSt
  loc_19CB553: var_144 = 7
  loc_19CB55C: var_164 = 0
  loc_19CB568: LateIdCallSt
  loc_19CB570: var_144 = 0
  loc_19CB579: var_164 = 8
  loc_19CB582: var_1B4 = vbNullString
  loc_19CB58B: LateIdCallSt
  loc_19CB593: var_144 = 8
  loc_19CB59C: var_164 = 0
  loc_19CB5A8: LateIdCallSt
  loc_19CB5B0: var_144 = 0
  loc_19CB5B9: var_164 = 9
  loc_19CB5C2: var_1B4 = vbNullString
  loc_19CB5CB: LateIdCallSt
  loc_19CB5D3: var_144 = 9
  loc_19CB5DC: var_164 = 0
  loc_19CB5E8: LateIdCallSt
  loc_19CB5F0: var_144 = 0
  loc_19CB5F9: var_164 = &HA
  loc_19CB602: var_1B4 = vbNullString
  loc_19CB60B: LateIdCallSt
  loc_19CB613: var_144 = &HA
  loc_19CB61C: var_164 = 0
  loc_19CB628: LateIdCallSt
  loc_19CB630: var_144 = 0
  loc_19CB639: var_164 = &HB
  loc_19CB642: var_1B4 = vbNullString
  loc_19CB64B: LateIdCallSt
  loc_19CB653: var_144 = &HB
  loc_19CB65C: var_164 = 0
  loc_19CB668: LateIdCallSt
  loc_19CB670: var_144 = 0
  loc_19CB679: var_164 = &HC
  loc_19CB682: var_1B4 = vbNullString
  loc_19CB68B: LateIdCallSt
  loc_19CB693: var_144 = &HC
  loc_19CB69C: var_164 = 0
  loc_19CB6A8: LateIdCallSt
  loc_19CB6B0: var_144 = 0
  loc_19CB6B9: var_164 = &HD
  loc_19CB6C2: var_1B4 = vbNullString
  loc_19CB6CB: LateIdCallSt
  loc_19CB6D3: var_144 = &HD
  loc_19CB6DC: var_164 = 0
  loc_19CB6E8: LateIdCallSt
  loc_19CB6F0: var_144 = 0
  loc_19CB6F9: var_164 = &HE
  loc_19CB702: var_1B4 = vbNullString
  loc_19CB70B: LateIdCallSt
  loc_19CB713: var_144 = &HE
  loc_19CB71C: var_164 = 0
  loc_19CB728: LateIdCallSt
  loc_19CB736: global_220 = vbNullString
  loc_19CB73C: var_AA = 4
  loc_19CB742: var_90.MoveFirst
  loc_19CB747: ' Referenced from: 19CB8B5
  loc_19CB756: If Not(var_90.EOF) Then
  loc_19CB75F:   If (var_AA < &HD) Then
  loc_19CB777:     var_144 = "SName"
  loc_19CB79C:     var_194 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_144)), CVar(CLng(var_AA)), 0, var_AA, var_388, var_164, var_144)) 'String
  loc_19CB7A3:     LateIdCallSt
  loc_19CB7BE:     var_144 = "SName"
  loc_19CB7EE:     var_270 = var_1B4 & Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_144)), global_220, var_388, var_194, var_388) & " -> "
  loc_19CB82A:     global_220 = var_144 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Description")), CStr(var_31C), var_164) & ";  "
  loc_19CB84F:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CB85A:     var_164 = CVar(CInt(7)) 'Integer
  loc_19CB861:     LateIdCallSt
  loc_19CB86D:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CB878:     var_164 = CVar(CInt(7)) 'Integer
  loc_19CB87F:     LateIdCallSt
  loc_19CB88B:     var_144 = CVar(CLng(var_AA)) 'Long
  loc_19CB890:     var_164 = &H578
  loc_19CB89C:     LateIdCallSt
  loc_19CB8A4:   End If
  loc_19CB8AA:   var_AA = (var_AA + 1)
  loc_19CB8B0:   var_90.MoveNext
  loc_19CB8B5:   GoTo loc_19CB747
  loc_19CB8B8: End If
  loc_19CB8B8: var_144 = &HD
  loc_19CB8C7: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB8CE: LateIdCallSt
  loc_19CB8D6: var_144 = &HD
  loc_19CB8E5: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB8EC: LateIdCallSt
  loc_19CB8F4: var_144 = 0
  loc_19CB8FD: var_164 = &HD
  loc_19CB906: var_1B4 = "STWLF"
  loc_19CB90F: LateIdCallSt
  loc_19CB917: var_144 = &HD
  loc_19CB920: var_164 = &H578
  loc_19CB92C: LateIdCallSt
  loc_19CB934: var_144 = &HE
  loc_19CB943: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB94A: LateIdCallSt
  loc_19CB952: var_144 = &HE
  loc_19CB961: var_164 = CVar(CInt(7)) 'Integer
  loc_19CB968: LateIdCallSt
  loc_19CB984: If (var_90.RecordCount > 9) Then
  loc_19CB987:   var_144 = 0
  loc_19CB990:   var_164 = &HE
  loc_19CB999:   var_1B4 = "Other"
  loc_19CB9A2:   LateIdCallSt
  loc_19CB9AA:   var_144 = &HE
  loc_19CB9B3:   var_164 = &H578
  loc_19CB9BF:   LateIdCallSt
  loc_19CB9C7: End If
  loc_19CB9C7: var_144 = 0
  loc_19CB9D0: var_164 = &HF
  loc_19CB9D9: var_1B4 = "MARK"
  loc_19CB9E2: LateIdCallSt
  loc_19CB9EA: var_144 = &HF
  loc_19CB9F3: var_164 = 0
  loc_19CB9FF: LateIdCallSt
  loc_19CBA07: var_144 = 0
  loc_19CBA10: var_164 = &H10
  loc_19CBA19: var_1B4 = "CatCode"
  loc_19CBA22: LateIdCallSt
  loc_19CBA2A: var_144 = &H10
  loc_19CBA33: var_164 = 0
  loc_19CBA3F: LateIdCallSt
  loc_19CBA49: Set var_388 = Nothing 
  loc_19CBA61: If (var_90.RecordCount <= 0) Then
  loc_19CBA69:   global_160 = 0
  loc_19CBA6C:   Exit Sub
  loc_19CBA6D: End If
  loc_19CBA71: Set var_27C = Me.FGrid1
  loc_19CBAA1: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19CBAA4:   var_144 = vbNullString
  loc_19CBAAE:   Set var_27C = Me.FGrid1
  loc_19CBABF: End If
  loc_19CBAF6: var_144 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19CBB16: Me.FGrid1.Row = CVar(CLng(IIf(var_144, FRow, 1)))
  loc_19CBB64: var_144 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19CBB84: Me.FGrid1.Col = CVar(CLng(IIf(var_144, Fcol, 1)))
  loc_19CBBA0: Set var_8C = Nothing
  loc_19CBBA8: Set var_90 = Nothing
  loc_19CBBAD: IStAd
  loc_19CBBB1: Exit Sub
End Sub

Public Sub MemSalesReg(formName, FRow, Fcol) '19D1F74
  'Data Table: 563038
  Dim var_210 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_2C4 As String
  Dim var_2C8 As String
  Dim var_2CC As String
  Dim var_2D0 As String
  Dim var_EC As Double
  Dim var_1B0 As Variant
  Dim var_2D8 As Variant
  Dim var_2E4 As String
  Dim var_2F4 As String
  Dim var_30C As String
  Dim var_F4 As Double
  Dim var_158 As Double
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_190 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_90 As Recordset15
  Dim var_AC As Double
  Dim var_C0 As Double
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_31C As Recordset15
  Dim var_320 As Recordset15
  Dim var_324 As Fields15
  Dim var_A0 As Recordset15
  Dim unk_56303E As Connection15
  Dim var_9C As Recordset15
  Dim var_2A0 As Variant
  Dim var_110 As Double
  Dim var_E4 As Double
  Dim var_DC As Double
  Dim var_330 As Recordset15
  Dim var_334 As Recordset15
  Dim var_338 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_344 As MSHFlexGrid
  Dim var_346 As Integer
  loc_19CEE60: var_210 = " M.Vdate Between "
  loc_19CEE7A: VarLateMemCallLdRfVar
  loc_19CEE85: Proc_6_7_F25D88(var_200, Me.FGrid, 1)
  loc_19CEE96: var_240 = 0 & var_200 & " And " 
  loc_19CEEAF: VarLateMemCallLdRfVar
  loc_19CEEBA: Proc_6_7_F25D88(var_2B0, Me.FGrid, 1)
  loc_19CEEC7: var_94 = CStr(1 & var_2B0)
  loc_19CEEF9: VarLateMemCallLdRfVar
  loc_19CEF04: Proc_6_7_F25D88(var_200, Me.FGrid, 1, 0)
  loc_19CEF2E: VarLateMemCallLdRfVar
  loc_19CEF39: Proc_6_7_F25D88(var_2B0, Me.FGrid, 1, 1)
  loc_19CEF46: var_94 = CStr(" M.Vdate Between " & var_200 & " And " & var_2B0)
  loc_19CEF5E: var_1A0 = 1
  loc_19CEF87: If (Me.Check1.Value = 0) Then
  loc_19CEFA0:   var_1A0 = ") "
  loc_19CEFAA:   var_98 = CStr(CVar(var_94 & " And M.MemCatCode In (") & Me.GridString1 & var_1A0)
  loc_19CEFB8: End If
  loc_19CEFBE: Call 0.Method_arg_54 ("Member Sales Register", var_1A0)
  loc_19CEFC6: var_1A0 = 0
  loc_19CEFDB: var_1F0 = Me.FGrid.TextMatrix
  loc_19CF003: var_200 = Me.FGrid
  loc_19CF01D: Set var_2D8 = 1(1 & CStr(var_200.TextMatrix))
  loc_19CF023: var_200.TextBox.Text = 1 & CStr(var_1F0) & " To : "
  loc_19CF043: var_1A0 = 0
  loc_19CF04A: var_1C0 = 1
  loc_19CF053: var_1E0 = Me.FGrid
  loc_19CF058: VarLateMemCallLdRfVar
  loc_19CF087: var_EC = CDate(Format(var_1F0, "dd/MMM/yyyy"))
  loc_19CF095: var_1A0 = 1
  loc_19CF0AC: var_1C0 = 0
  loc_19CF0BE: If (Me.Check1.Value = var_1C0) Then
  loc_19CF0C4:   var_1E0 = Me.FormulaString1
  loc_19CF0CB:   var_1A0 = "For Category : "
  loc_19CF0DB:   var_1F0 = Left(var_1E0, &H73)
  loc_19CF0E7:   var_1B0 = vbNullString
  loc_19CF0F8:   Set var_2D8 = Me.Text2
  loc_19CF0FE:   Me.Text2.Text = CStr(var_1A0 & var_1F0 & var_1B0)
  loc_19CF117: Else
  loc_19CF11E:   Set var_2D8 = Me.Text2
  loc_19CF124:   var_2D8.Text = "For Category :   All"
  loc_19CF12C: End If
  loc_19CF139: Call Proc_292_98_119C884(New, var_2D8, var_1E0, var_1A0, var_EC, 1, 1)
  loc_19CF141: Set var_8C = var_2D8
  loc_19CF158: var_2C4 = "Select MC.Name As MemCatName,S.Name As MemName,M.*,Q.DocId RDocId,Q.Sno,Q.Type,Q.Facility,Q.FacilityCode,Q.BaseAmt,Q.TaxAmt From membill M Inner Join MemCatMast MC On M.MemCatCode=MC.Code Left Join SubGroup S On M.MemCode=S.SubCode Left Join (Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.Type='Facility' And M1.Site_Code='" & MemVar_1F92070
  loc_19CF16D: var_2D0 = var_2C4 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') union Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.Type='Revenue' And M1.Site_Code='"
  loc_19CF189: var_2E4 = var_2D0 & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') union Select D.Name As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.Type='Outlet' And M1.Site_Code='"
  loc_19CF1A5: var_2F4 = var_2E4 & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO')) Q On M.DocId=Q.DocId Where "
  loc_19CF1CF: var_30C = var_2F4 & var_98 & " And M.Site_Code='" & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO') Order By MC.Name,S.Name,M.Vdate,M.Vno,Q.DocId,Q.Sno"
  loc_19CF1D8: Me.Connection15.Execute var_30C, var_1E0, -1
  loc_19CF1E3: Set var_90 = var_2D8
  loc_19CF249: var_2CC = "SELECT DISTINCT RevMast.Code, RevMast.ShortName, RevMast.Name FROM (MemBill2 AS M INNER JOIN RevMast ON M.TaxCode = RevMast.Code) where M.lOGSITE_CODE='" & Proc_6_45_EAD428(CStr(Me.LoginSite), 2, Me.LoginSite, var_2D8, Me.LoginSite, var_1C0)
  loc_19CF267: Me.Connection15.Execute var_2CC & "' And " & var_94 & " Order by RevMast.Name", var_1F0, -1
  loc_19CF272: Set var_A0 = var_2D8
  loc_19CF293: var_F4 = CDbl(0)
  loc_19CF299: var_158 = CDbl(0)
  loc_19CF29F: var_160 = CDbl(0)
  loc_19CF2A5: var_168 = CDbl(0)
  loc_19CF2AB: var_170 = CDbl(0)
  loc_19CF2B1: var_178 = CDbl(0)
  loc_19CF2B7: var_180 = CDbl(0)
  loc_19CF2BD: var_188 = CDbl(0)
  loc_19CF2C3: var_190 = CDbl(0)
  loc_19CF2C9: var_FC = CDbl(0)
  loc_19CF2CF: var_104 = CDbl(0)
  loc_19CF2D5: var_88 = vbNullString
  loc_19CF2EC: If (var_90.RecordCount > 0) Then
  loc_19CF2F2:   var_90.MoveFirst
  loc_19CF323:   var_AC = CDate(var_90.Fields.Item("VDate").Value)
  loc_19CF330:   ' Referenced from: 19D107B
  loc_19CF33F:   If Not(var_90.EOF) Then
  loc_19CF37B:     If (var_180 <> Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCatName")), var_A4, var_AC, var_104, var_FC, var_190, var_188)) Then
  loc_19CF3BA:       var_1A0 = "MemCatName"
  loc_19CF3DF:       var_A4 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_1A0)), CDate(var_90.Fields.Item("VDate").Value), var_178, var_170)
  loc_19CF3EB:       var_C0 = CDbl(0)
  loc_19CF3F1:       var_118 = CDbl(0)
  loc_19CF3F7:       var_120 = CDbl(0)
  loc_19CF3FD:       var_128 = CDbl(0)
  loc_19CF403:       var_130 = CDbl(0)
  loc_19CF409:       var_138 = CDbl(0)
  loc_19CF40F:       var_140 = CDbl(0)
  loc_19CF415:       var_148 = CDbl(0)
  loc_19CF41B:       var_150 = CDbl(0)
  loc_19CF421:       var_C8 = CDbl(0)
  loc_19CF427:       var_D0 = CDbl(0)
  loc_19CF42D:       Set var_31C = var_8C 
  loc_19CF43C:       var_31C.AddNew var_1A0, var_1B0
  loc_19CF466:       var_31C.Fields.Item("MLine").Value = "GF"
  loc_19CF498:       var_31C.Fields.Item("Facility").Value = CVar(var_A4)
  loc_19CF4A4:       var_1B0 = "*"
  loc_19CF4AD:       var_1A0 = "Mark"
  loc_19CF4C9:       var_31C.Fields.Item(var_1A0).Value = var_1B0
  loc_19CF4E0:       var_31C.Update var_1A0, var_1B0
  loc_19CF4E7:       Set var_31C = Nothing 
  loc_19CF4EB:     End If
  loc_19CF524:     If (var_138 <> Proc_6_38_E68A98(CVar(var_90.Fields.Item("DocID")), var_88, var_D0, var_C8, var_150, var_148, var_140)) Then
  loc_19CF52A:       var_1A0 = "DocID"
  loc_19CF54F:       var_88 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_1A0)), var_130, var_128)
  loc_19CF55B:       Set var_320 = var_8C 
  loc_19CF56A:       var_320.AddNew var_1A0, var_1B0
  loc_19CF56F:       var_1A0 = 2
  loc_19CF576:       var_1C0 = 1
  loc_19CF57F:       var_1E0 = Me.FGrid
  loc_19CF5A0:       If (CStr(var_1E0.TextMatrix) = "Yes") Then
  loc_19CF5C8:         var_1E0.Recordset15.Fields.Item("MLine").Value = "GF"
  loc_19CF5D7:       Else
  loc_19CF5FC:         var_320.Fields.Item("MLine").Value = vbNullString
  loc_19CF608:       End If
  loc_19CF64F:       var_1C0 = "DATE"
  loc_19CF66B:       var_320.Fields.Item(var_1C0).Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19CF6DE:       var_320.Fields.Item("BillNo").Value = CVar(Proc_6_45_EAD428(CStr(var_90.Fields.Item("VNo").Value), 9, 1, 1, var_1C0))
  loc_19CF6FE:       var_1A0 = "CardNo"
  loc_19CF754:       var_320.Fields.Item("CardNo").Value = CVar(Proc_6_45_EAD428(CStr(var_90.Fields.Item(var_1A0).Value), &H19, var_1A0))
  loc_19CF7CA:       var_320.Fields.Item("Facility").Value = CVar(Proc_6_45_EAD428(CStr(var_90.Fields.Item("MemName").Value), &H4B, var_120))
  loc_19CF82E:       var_320.Fields.Item("DocId").Value = var_90.Fields.Item("DocID").Value
  loc_19CF8A4:       var_320.Fields.Item("DATE1").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19CF906:       var_320.Fields.Item("CatCode").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCatcode")), 1, 1))
  loc_19CF92F:       If (var_A0.RecordCount > 0) Then
  loc_19CF935:         var_A0.MoveFirst
  loc_19CF93A:         ' Referenced from: 19D029B
  loc_19CF93A:       End If
  loc_19CF94B:       If (var_A0.EOF = 0) Then
  loc_19CF98A:         var_1F0 = "Select sum(TaxAmt) as TaxAmt from MemBill2 where TaxCode in ('" & var_A0.Fields.Item("Code").Value 
  loc_19CF9B9:         var_220 = var_90.Fields.Item("DocID").Value
  loc_19CF9D8:         unk_56303E.Execute CStr(var_1F0 & "') And DocId='" & var_220 & "'"), var_2A0, -1
  loc_19CF9E3:         Set var_9C = var_32C
  loc_19CFA1B:         If (var_9C.RecordCount > 0) Then
  loc_19CFA32:           If (var_A0.AbsolutePosition = 1) Then
  loc_19CFA5B:             Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), var_32C)
  loc_19CFA83:             var_320.Fields.Item("Tax1").Value = var_1F0
  loc_19CFAC5:             Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_118))
  loc_19CFACD:             var_200 = (var_118 + var_1F0)
  loc_19CFAD2:             var_118 = CSng(var_1F0 & "') And DocId='")
  loc_19CFB0E:             Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_158))
  loc_19CFB16:             var_200 = (var_118 + var_1F0)
  loc_19CFB1B:             var_158 = CSng(var_1F0 & "') And DocId='")
  loc_19CFB2D:           Else
  loc_19CFB41:             If (var_A0.AbsolutePosition = 2) Then
  loc_19CFB6A:               Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CFB92:               var_320.Fields.Item("Tax2").Value = var_1F0
  loc_19CFBD4:               Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_120))
  loc_19CFBDC:               var_200 = (var_158 + var_1F0)
  loc_19CFBE1:               var_120 = CSng(var_1F0 & "') And DocId='")
  loc_19CFC1D:               Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_160))
  loc_19CFC25:               var_200 = (var_120 + var_1F0)
  loc_19CFC2A:               var_160 = CSng(var_1F0 & "') And DocId='")
  loc_19CFC3C:             Else
  loc_19CFC50:               If (var_A0.AbsolutePosition = 3) Then
  loc_19CFC79:                 Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CFCA1:                 var_320.Fields.Item("Tax3").Value = var_1F0
  loc_19CFCE3:                 Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_128))
  loc_19CFCEB:                 var_200 = (var_160 + var_1F0)
  loc_19CFCF0:                 var_128 = CSng(var_1F0 & "') And DocId='")
  loc_19CFD2C:                 Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_168))
  loc_19CFD34:                 var_200 = (var_128 + var_1F0)
  loc_19CFD39:                 var_168 = CSng(var_1F0 & "') And DocId='")
  loc_19CFD4B:               Else
  loc_19CFD5F:                 If (var_A0.AbsolutePosition = 4) Then
  loc_19CFD88:                   Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CFDB0:                   var_320.Fields.Item("Tax4").Value = var_1F0
  loc_19CFDF2:                   Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_130))
  loc_19CFDFA:                   var_200 = (var_168 + var_1F0)
  loc_19CFDFF:                   var_130 = CSng(var_1F0 & "') And DocId='")
  loc_19CFE3B:                   Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_170))
  loc_19CFE43:                   var_200 = (var_130 + var_1F0)
  loc_19CFE48:                   var_170 = CSng(var_1F0 & "') And DocId='")
  loc_19CFE5A:                 Else
  loc_19CFE6E:                   If (var_A0.AbsolutePosition = 5) Then
  loc_19CFE97:                     Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CFEBF:                     var_320.Fields.Item("Tax5").Value = var_1F0
  loc_19CFF01:                     Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_138))
  loc_19CFF09:                     var_200 = (var_170 + var_1F0)
  loc_19CFF0E:                     var_138 = CSng(var_1F0 & "') And DocId='")
  loc_19CFF4A:                     Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_178))
  loc_19CFF52:                     var_200 = (var_138 + var_1F0)
  loc_19CFF57:                     var_178 = CSng(var_1F0 & "') And DocId='")
  loc_19CFF69:                   Else
  loc_19CFF7D:                     If (var_A0.AbsolutePosition = 6) Then
  loc_19CFFA6:                       Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19CFFCE:                       var_320.Fields.Item("Tax6").Value = var_1F0
  loc_19D0010:                       Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_140))
  loc_19D0018:                       var_200 = (var_178 + var_1F0)
  loc_19D001D:                       var_140 = CSng(var_1F0 & "') And DocId='")
  loc_19D0059:                       Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_180))
  loc_19D0061:                       var_200 = (var_140 + var_1F0)
  loc_19D0066:                       var_180 = CSng(var_1F0 & "') And DocId='")
  loc_19D0078:                     Else
  loc_19D008C:                       If (var_A0.AbsolutePosition = 7) Then
  loc_19D00B5:                         Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19D00DD:                         var_320.Fields.Item("Tax7").Value = var_1F0
  loc_19D011F:                         Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_148))
  loc_19D0127:                         var_200 = (var_180 + var_1F0)
  loc_19D012C:                         var_148 = CSng(var_1F0 & "') And DocId='")
  loc_19D0168:                         Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_188))
  loc_19D0170:                         var_200 = (var_148 + var_1F0)
  loc_19D0175:                         var_188 = CSng(var_1F0 & "') And DocId='")
  loc_19D0187:                       Else
  loc_19D019B:                         If (var_A0.AbsolutePosition = 8) Then
  loc_19D01C4:                           Proc_6_47_EF59D0(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")))
  loc_19D01DC:                           var_324 = var_320.Fields
  loc_19D01EC:                           var_324.Item("Tax8").Value = var_1F0
  loc_19D022E:                           Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_150))
  loc_19D0236:                           var_200 = (var_188 + var_1F0)
  loc_19D023B:                           var_150 = CSng(var_1F0 & "') And DocId='")
  loc_19D0277:                           Proc_6_39_E7C810(var_1F0, CVar(var_9C.Fields.Item("TaxAmt")), CVar(var_190))
  loc_19D027F:                           var_200 = (var_150 + var_1F0)
  loc_19D0284:                           var_190 = CSng(var_1F0 & "') And DocId='")
  loc_19D0293:                         End If
  loc_19D0293:                       End If
  loc_19D0293:                     End If
  loc_19D0293:                   End If
  loc_19D0293:                 End If
  loc_19D0293:               End If
  loc_19D0293:             End If
  loc_19D0293:           End If
  loc_19D0293:         End If
  loc_19D0296:         var_A0.MoveNext
  loc_19D029B:         GoTo loc_19CF93A
  loc_19D029E:       End If
  loc_19D02CB:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("Amount")), CVar(var_C0))
  loc_19D02D3:       var_200 = (var_190 + var_1F0)
  loc_19D02D8:       var_C0 = CSng(var_1F0 & "') And DocId='")
  loc_19D0314:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("Amount")), CVar(var_F4))
  loc_19D031C:       var_200 = (var_C0 + var_1F0)
  loc_19D0321:       var_F4 = CSng(var_1F0 & "') And DocId='")
  loc_19D035D:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_C8))
  loc_19D0365:       var_200 = (var_F4 + var_1F0)
  loc_19D036A:       var_C8 = CSng(var_1F0 & "') And DocId='")
  loc_19D03A6:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_FC))
  loc_19D03AE:       var_200 = (var_C8 + var_1F0)
  loc_19D03B3:       var_FC = CSng(var_1F0 & "') And DocId='")
  loc_19D03EF:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("NetAmount")), CVar(var_D0))
  loc_19D03F7:       var_200 = (var_FC + var_1F0)
  loc_19D03FC:       var_D0 = CSng(var_1F0 & "') And DocId='")
  loc_19D0438:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("NetAmount")), CVar(var_104))
  loc_19D0440:       var_200 = (var_D0 + var_1F0)
  loc_19D0445:       var_104 = CSng(var_1F0 & "') And DocId='")
  loc_19D0461:       var_1B0 = "Select (sum(amtdr)-sum(amtcr)) as OPBal1 from Ledger where subcode='"
  loc_19D04A8:       Proc_6_7_F25D88(var_220, var_EC, CVar(var_104) & var_90.Fields.Item("MemCode").Value & " ' and V_date<", var_2A0)
  loc_19D04B0:       var_240 = -1 & var_220 
  loc_19D04C7:       unk_56303E.Execute CStr(CVar(var_104) & var_90.Fields.Item("MemCode").Value & "') And DocId='" & var_220 & vbNullString), var_324, var_104
  loc_19D052A:       var_2C4 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCode")), "Select isnull(Sum(AmtCr),0) as OPBal2 From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='", var_2B0)
  loc_19D052E:       var_2C8 = -1 & var_2C4
  loc_19D0535:       var_240 = CVar(Proc_6_45_EAD428(CStr(Me.LoginSite), 2, Me.LoginSite, var_90.Fields, Me.LoginSite, " ' and V_date<") & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19D0557:       var_1F0 = CVar(var_90.Fields.Item("MthYear")) 'Address
  loc_19D0566:       var_220 = Trim(CVar(Proc_6_38_E68A98(var_1F0, var_1F0 & "') And DocId='" & var_220)))
  loc_19D0585:       unk_56303E.Execute CStr(var_32C & var_220 & "')"), var_C0, 
  loc_19D05D7:       var_1E0 = CVar(var_90.Fields.Fields.Item("OpBal1")) 'Address
  loc_19D05DE:       Proc_6_39_E7C810(var_1F0)
  loc_19D060C:       Proc_6_39_E7C810(var_220, CVar(var_32C.Fields.Item("Opbal2")))
  loc_19D0614:       var_240 = (var_1F0 - var_220)
  loc_19D0619:       var_110 = CSng(var_1F0 & "') And DocId='" & var_220)
  loc_19D0639:       Proc_6_39_E7C810(var_1E0, var_E4)
  loc_19D064C:       Proc_6_39_E7C810(var_1F0, var_110, var_1E0)
  loc_19D0654:       var_200 = (var_110 + var_1F0)
  loc_19D0670:       Proc_6_39_E7C810(var_1E0, var_DC)
  loc_19D0683:       Proc_6_39_E7C810(var_1F0, var_110, var_1E0)
  loc_19D068B:       var_200 = (CSng(CVar(var_32C.Fields.Item("Opbal2"))) + var_1F0)
  loc_19D0690:       var_DC = CSng(CVar(var_32C.Fields.Item("Opbal2")))
  loc_19D06C2:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("Amount")))
  loc_19D070A:       var_320.Fields.Item("Total").Value = Format(var_1F0, "0.00")
  loc_19D0749:       Proc_6_39_E7C810(var_1F0, CVar(var_90.Fields.Item("RoundOff")), 1)
  loc_19D0791:       var_320.Fields.Item("RoundOff").Value = Format(var_1F0, "0.00")
  loc_19D07C9:       var_1E0 = CVar(var_90.Fields.Item("NetAmount")) 'Address
  loc_19D07D0:       Proc_6_39_E7C810(var_1F0, var_1E0, 1, 1)
  loc_19D0818:       var_320.Fields.Item("NetTotal").Value = Format(var_1F0, "0.00")
  loc_19D083C:       Proc_6_39_E7C810(var_1E0, var_110, 1, 1)
  loc_19D0884:       var_320.Fields.Item("OpBal").Value = Format(var_1E0, "0.00")
  loc_19D0899:       var_1B0 = "*"
  loc_19D08A2:       var_1A0 = "Mark"
  loc_19D08BE:       var_320.Fields.Item(var_1A0).Value = var_1B0
  loc_19D08D5:       var_320.Update var_1A0, var_1B0
  loc_19D08DC:       Set var_320 = Nothing 
  loc_19D08E0:     End If
  loc_19D08E3:     var_1B0 = CVar(var_88) 'String
  loc_19D091D:     If (var_1B0 = var_90.Fields.Item("DocID").Value) Then
  loc_19D0927:       var_1C0 = 1
  loc_19D0930:       var_1E0 = Me.FGrid
  loc_19D0951:       If (CStr(var_1E0.TextMatrix) = "Yes") Then
  loc_19D0957:         Set var_330 = var_8C 
  loc_19D0966:         var_1E0.Recordset15.AddNew 2, var_1B0
  loc_19D0990:         var_330.Fields.Item("mLine").Value = vbNullString
  loc_19D09FF:         var_330.Fields.Item("DATE1").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YY")
  loc_19D0A59:         var_330.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19D0AB1:         var_1C0 = "SrNo"
  loc_19D0ACD:         var_330.Fields.Item(var_1C0).Value = Format(CVar(var_90.Fields.Item("SNo")), "0")
  loc_19D0AE7:         var_1A0 = "Facility"
  loc_19D0B20:         var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_1A0)), 1, 1, 1, 1, var_1C0), &H4B, var_1A0, 1)) 'String
  loc_19D0B43:         var_330.Fields.Item("Facility").Value = var_1F0
  loc_19D0B85:         Proc_6_47_EF59D0(var_1F0, CVar(var_90.Fields.Item("BaseAmt")), 1)
  loc_19D0BAD:         var_330.Fields.Item("Total").Value = var_1F0
  loc_19D0C0D:         var_330.Fields.Item("CatCode").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCatcode")), 1))
  loc_19D0C22:         var_1B0 = "*"
  loc_19D0C2B:         var_1A0 = "Mark"
  loc_19D0C47:         var_330.Fields.Item(var_1A0).Value = var_1B0
  loc_19D0C5E:         var_330.Update var_1A0, var_1B0
  loc_19D0C65:         Set var_330 = Nothing 
  loc_19D0C69:       End If
  loc_19D0C69:     End If
  loc_19D0C6C:     var_90.MoveNext
  loc_19D0C7F:     If var_90.EOF Then
  loc_19D0C82:       GoTo loc_19D0CC1
  loc_19D0C85:     End If
  loc_19D0C88:     var_1A0 = "MemCatName"
  loc_19D0CA4:     var_1E0 = CVar(var_90.Fields.Item(var_1A0)) 'Address
  loc_19D0CBE:     If (Proc_6_38_E68A98(var_1E0, var_DC) <> var_A4) Then
  loc_19D0CC1:       ' Referenced from: 19D0C82
  loc_19D0CC4:       Set var_334 = var_8C 
  loc_19D0CFD:       var_334.Fields.Item("mLine").Value = "GF"
  loc_19D0D09:       var_1B0 = "Total ->"
  loc_19D0D2E:       var_334.Fields.Item("Facility").Value = "GF"
  loc_19D0D45:       Proc_6_47_EF59D0(var_1E0, var_C0)
  loc_19D0D6D:       var_334.Fields.Item("Total").Value = var_1E0
  loc_19D0D87:       Proc_6_47_EF59D0(var_1E0, var_118)
  loc_19D0DAF:       var_334.Fields.Item("Tax1").Value = var_1E0
  loc_19D0DC9:       Proc_6_47_EF59D0(var_1E0, var_120)
  loc_19D0DF1:       var_334.Fields.Item("Tax2").Value = var_1E0
  loc_19D0E0B:       Proc_6_47_EF59D0(var_1E0, var_128)
  loc_19D0E33:       var_334.Fields.Item("Tax3").Value = var_1E0
  loc_19D0E4D:       Proc_6_47_EF59D0(var_1E0, var_130)
  loc_19D0E75:       var_334.Fields.Item("Tax4").Value = var_1E0
  loc_19D0E8F:       Proc_6_47_EF59D0(var_1E0, var_138)
  loc_19D0EB7:       var_334.Fields.Item("Tax5").Value = var_1E0
  loc_19D0ED1:       Proc_6_47_EF59D0(var_1E0, var_140)
  loc_19D0EF9:       var_334.Fields.Item("Tax6").Value = var_1E0
  loc_19D0F13:       Proc_6_47_EF59D0(var_1E0, var_148)
  loc_19D0F3B:       var_334.Fields.Item("Tax7").Value = var_1E0
  loc_19D0F55:       Proc_6_47_EF59D0(var_1E0, var_150)
  loc_19D0F7D:       var_334.Fields.Item("Tax7").Value = var_1E0
  loc_19D0F97:       Proc_6_47_EF59D0(var_1E0, var_C8)
  loc_19D0FBF:       var_334.Fields.Item("RoundOff").Value = var_1E0
  loc_19D0FD9:       Proc_6_47_EF59D0(var_1E0, var_D0)
  loc_19D1001:       var_334.Fields.Item("NetTotal").Value = var_1E0
  loc_19D1010:       var_1B0 = vbNullString
  loc_19D1019:       var_1A0 = "Mark"
  loc_19D1035:       var_334.Fields.Item(var_1A0).Value = var_1B0
  loc_19D104C:       r_1A0, var_1B0 var_1A0, var_1B0
  loc_19D105C:       var_334.Update var_1A0, var_1B0
  loc_19D1063:       Set var_334 = Nothing 
  loc_19D1067:     End If
  loc_19D1075:     If var_90.EOF Then
  loc_19D1078:       GoTo loc_19D107E
  loc_19D107B:     End If
  loc_19D107B:     GoTo loc_19CF330
  loc_19D107E:     ' Referenced from: 19D1078
  loc_19D107E:   End If
  loc_19D1081:   Set var_338 = var_8C 
  loc_19D10BA:   var_338.Fields.Item("mLine").Value = "GF"
  loc_19D10C6:   var_1B0 = "Grand Total ->"
  loc_19D10EB:   var_338.Fields.Item("Facility").Value = "GF"
  loc_19D1102:   Proc_6_47_EF59D0(var_1E0, var_F4)
  loc_19D112A:   var_338.Fields.Item("Total").Value = var_1E0
  loc_19D1144:   Proc_6_47_EF59D0(var_1E0, var_158)
  loc_19D116C:   var_338.Fields.Item("Tax1").Value = var_1E0
  loc_19D1186:   Proc_6_47_EF59D0(var_1E0, var_160)
  loc_19D11AE:   var_338.Fields.Item("Tax2").Value = var_1E0
  loc_19D11C8:   Proc_6_47_EF59D0(var_1E0, var_168)
  loc_19D11F0:   var_338.Fields.Item("Tax3").Value = var_1E0
  loc_19D120A:   Proc_6_47_EF59D0(var_1E0, var_170)
  loc_19D1232:   var_338.Fields.Item("Tax4").Value = var_1E0
  loc_19D124C:   Proc_6_47_EF59D0(var_1E0, var_178)
  loc_19D1274:   var_338.Fields.Item("Tax5").Value = var_1E0
  loc_19D128E:   Proc_6_47_EF59D0(var_1E0, var_180)
  loc_19D12B6:   var_338.Fields.Item("Tax6").Value = var_1E0
  loc_19D12D0:   Proc_6_47_EF59D0(var_1E0, var_188)
  loc_19D12F8:   var_338.Fields.Item("Tax7").Value = var_1E0
  loc_19D1312:   Proc_6_47_EF59D0(var_1E0, var_190)
  loc_19D133A:   var_338.Fields.Item("Tax7").Value = var_1E0
  loc_19D1354:   Proc_6_47_EF59D0(var_1E0, var_FC)
  loc_19D137C:   var_338.Fields.Item("RoundOff").Value = var_1E0
  loc_19D1396:   Proc_6_47_EF59D0(var_1E0, var_104)
  loc_19D13BE:   var_338.Fields.Item("NetTotal").Value = var_1E0
  loc_19D13D8:   Proc_6_47_EF59D0(var_1E0, var_DC)
  loc_19D1400:   var_338.Fields.Item("OpBal").Value = var_1E0
  loc_19D140F:   var_1B0 = vbNullString
  loc_19D1418:   var_1A0 = "Mark"
  loc_19D1434:   var_338.Fields.Item(var_1A0).Value = var_1B0
  loc_19D144B:   r_1A0, var_1B0 var_1A0, var_1B0
  loc_19D145B:   var_338.Update var_1A0, var_1B0
  loc_19D1462:   Set var_338 = Nothing 
  loc_19D1466: End If
  loc_19D1470: arg_2C = Me.FGrid1.Text
  loc_19D148E: Me.FGrid1.Rows = 2
  loc_19D14AA: If (var_8C.RecordCount > 0) Then
  loc_19D14B3:   CVarUnk
  loc_19D14B8:   VerifyVarObj
  loc_19D14BE:   Set var_2D8 = Me.FGrid1
  loc_19D14C4:   LateIdStAd
  loc_19D14F4:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19D14FF: End If
  loc_19D1503: Set var_344 = Me.FGrid1
  loc_19D150F: var_344.Tag = "MemSalesRegister"
  loc_19D1520: var_344.Cols = &H16
  loc_19D1525: var_1A0 = 0
  loc_19D152E: var_1C0 = 0
  loc_19D1537: var_210 = "mLine"
  loc_19D1540: LateIdCallSt
  loc_19D1548: var_1A0 = 0
  loc_19D1551: var_1C0 = 0
  loc_19D155D: LateIdCallSt
  loc_19D1565: var_1A0 = 0
  loc_19D156E: var_1C0 = 1
  loc_19D1577: var_210 = "Date"
  loc_19D1580: LateIdCallSt
  loc_19D1588: var_1A0 = 1
  loc_19D1591: var_1C0 = &H578
  loc_19D159D: LateIdCallSt
  loc_19D15A5: var_1A0 = 0
  loc_19D15AE: var_1C0 = 2
  loc_19D15B7: var_210 = "Date1"
  loc_19D15C0: LateIdCallSt
  loc_19D15C8: var_1A0 = 2
  loc_19D15D1: var_1C0 = 0
  loc_19D15DD: LateIdCallSt
  loc_19D15E5: var_1A0 = 0
  loc_19D15EE: var_1C0 = 3
  loc_19D15F7: var_210 = "Bill No."
  loc_19D1600: LateIdCallSt
  loc_19D1608: var_1A0 = 3
  loc_19D1617: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D161E: LateIdCallSt
  loc_19D1626: var_1A0 = 3
  loc_19D162F: var_1C0 = &H4B0
  loc_19D163B: LateIdCallSt
  loc_19D1643: var_1A0 = 0
  loc_19D164C: var_1C0 = 4
  loc_19D1655: var_210 = "CardNo"
  loc_19D165E: LateIdCallSt
  loc_19D1666: var_1A0 = 4
  loc_19D1675: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D167C: LateIdCallSt
  loc_19D1684: var_1A0 = 4
  loc_19D168D: var_1C0 = &H578
  loc_19D1699: LateIdCallSt
  loc_19D16A1: var_1A0 = 0
  loc_19D16AA: var_1C0 = 5
  loc_19D16B3: var_210 = "DocId"
  loc_19D16BC: LateIdCallSt
  loc_19D16C4: var_1A0 = 5
  loc_19D16CD: var_1C0 = 0
  loc_19D16D9: LateIdCallSt
  loc_19D16E1: var_1A0 = 0
  loc_19D16EA: var_1C0 = 6
  loc_19D16F3: var_210 = "SRNo"
  loc_19D16FC: LateIdCallSt
  loc_19D1704: var_1A0 = 6
  loc_19D170D: var_1C0 = 0
  loc_19D1719: LateIdCallSt
  loc_19D1721: var_1A0 = 0
  loc_19D172A: var_1C0 = 7
  loc_19D1733: var_210 = "Category/Member/Charges"
  loc_19D173C: LateIdCallSt
  loc_19D1744: var_1A0 = 7
  loc_19D1753: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D175A: LateIdCallSt
  loc_19D1762: var_1A0 = 7
  loc_19D1771: var_1C0 = CVar(CInt(1)) 'Integer
  loc_19D1778: LateIdCallSt
  loc_19D1780: var_1A0 = 7
  loc_19D1789: var_1C0 = &H1068
  loc_19D1795: LateIdCallSt
  loc_19D179D: var_1A0 = 0
  loc_19D17A6: var_1C0 = 8
  loc_19D17AF: var_210 = "Amount"
  loc_19D17B8: LateIdCallSt
  loc_19D17C0: var_1A0 = 8
  loc_19D17CF: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D17D6: LateIdCallSt
  loc_19D17DE: var_1A0 = 8
  loc_19D17ED: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D17F4: LateIdCallSt
  loc_19D17FC: var_1A0 = 8
  loc_19D1805: var_1C0 = &H578
  loc_19D1811: LateIdCallSt
  loc_19D1819: var_1A0 = 2
  loc_19D1820: var_1C0 = 1
  loc_19D184A: If (CStr(Me.FGrid.TextMatrix) = "Yes") Then
  loc_19D184D:   var_1A0 = 6
  loc_19D1856:   var_1C0 = &H12C
  loc_19D1862:   LateIdCallSt
  loc_19D186A: End If
  loc_19D186A: var_1A0 = 0
  loc_19D1873: var_1C0 = 9
  loc_19D187C: var_210 = vbNullString
  loc_19D1885: LateIdCallSt
  loc_19D188D: var_1A0 = 9
  loc_19D1896: var_1C0 = 0
  loc_19D18A2: LateIdCallSt
  loc_19D18AA: var_1A0 = 0
  loc_19D18B3: var_1C0 = &HA
  loc_19D18BC: var_210 = vbNullString
  loc_19D18C5: LateIdCallSt
  loc_19D18CD: var_1A0 = &HA
  loc_19D18D6: var_1C0 = 0
  loc_19D18E2: LateIdCallSt
  loc_19D18EA: var_1A0 = 0
  loc_19D18F3: var_1C0 = &HB
  loc_19D18FC: var_210 = vbNullString
  loc_19D1905: LateIdCallSt
  loc_19D190D: var_1A0 = &HB
  loc_19D1916: var_1C0 = 0
  loc_19D1922: LateIdCallSt
  loc_19D192A: var_1A0 = 0
  loc_19D1933: var_1C0 = &HC
  loc_19D193C: var_210 = vbNullString
  loc_19D1945: LateIdCallSt
  loc_19D194D: var_1A0 = &HC
  loc_19D1956: var_1C0 = 0
  loc_19D1962: LateIdCallSt
  loc_19D196A: var_1A0 = 0
  loc_19D1973: var_1C0 = &HD
  loc_19D197C: var_210 = vbNullString
  loc_19D1985: LateIdCallSt
  loc_19D198D: var_1A0 = &HD
  loc_19D1996: var_1C0 = 0
  loc_19D19A2: LateIdCallSt
  loc_19D19AA: var_1A0 = 0
  loc_19D19B3: var_1C0 = &HE
  loc_19D19BC: var_210 = vbNullString
  loc_19D19C5: LateIdCallSt
  loc_19D19CD: var_1A0 = &HE
  loc_19D19D6: var_1C0 = 0
  loc_19D19E2: LateIdCallSt
  loc_19D19EA: var_1A0 = 0
  loc_19D19F3: var_1C0 = &HF
  loc_19D19FC: var_210 = vbNullString
  loc_19D1A05: LateIdCallSt
  loc_19D1A0D: var_1A0 = &HF
  loc_19D1A16: var_1C0 = 0
  loc_19D1A22: LateIdCallSt
  loc_19D1A2A: var_1A0 = 0
  loc_19D1A33: var_1C0 = &H10
  loc_19D1A3C: var_210 = vbNullString
  loc_19D1A45: LateIdCallSt
  loc_19D1A4D: var_1A0 = &H10
  loc_19D1A56: var_1C0 = 0
  loc_19D1A62: LateIdCallSt
  loc_19D1A70: global_220 = vbNullString
  loc_19D1A88: If (var_A0.RecordCount > 0) Then
  loc_19D1A8E:   var_A0.MoveFirst
  loc_19D1A93:   ' Referenced from: 19D1C10
  loc_19D1A93: End If
  loc_19D1AAB: If ((var_A0.EOF = 0) Or (var_346 > &H10)) Then
  loc_19D1AC3:   var_346 = CInt((8 + var_A0.AbsolutePosition))
  loc_19D1ADB:   var_1A0 = "ShortName"
  loc_19D1B00:   var_1F0 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item(var_1A0)), CVar(CLng(var_346)), 0, var_346, var_344, var_1C0, var_1A0)) 'String
  loc_19D1B07:   LateIdCallSt
  loc_19D1B22:   var_1A0 = "ShortName"
  loc_19D1B52:   var_2CC = var_210 & Proc_6_38_E68A98(CVar(var_A0.Fields.Item(var_1A0)), global_220, var_344, var_1F0, var_344) & " -> "
  loc_19D1B7D:   var_2D0 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Name")), CStr(var_32C & Format(CVar(var_A0.Fields.Item("Name")), "0.00") & "')"), var_1C0)
  loc_19D1B8E:   global_220 = var_1A0 & var_2D0 & ";  "
  loc_19D1BB3:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D1BBE:   var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1BC5:   LateIdCallSt
  loc_19D1BD1:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D1BDC:   var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1BE3:   LateIdCallSt
  loc_19D1BEF:   var_1A0 = CVar(CLng(var_346)) 'Long
  loc_19D1BF4:   var_1C0 = &H578
  loc_19D1C00:   LateIdCallSt
  loc_19D1C0B:   var_A0.MoveNext
  loc_19D1C10:   GoTo loc_19D1A93
  loc_19D1C13: End If
  loc_19D1C13: var_1A0 = 0
  loc_19D1C1C: var_1C0 = &H11
  loc_19D1C25: var_210 = "Roundoff"
  loc_19D1C2E: LateIdCallSt
  loc_19D1C36: var_1A0 = &H11
  loc_19D1C45: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1C4C: LateIdCallSt
  loc_19D1C54: var_1A0 = &H11
  loc_19D1C63: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1C6A: LateIdCallSt
  loc_19D1C72: var_1A0 = &H11
  loc_19D1C7B: var_1C0 = &H578
  loc_19D1C87: LateIdCallSt
  loc_19D1C8F: var_1A0 = 0
  loc_19D1C98: var_1C0 = &H12
  loc_19D1CA1: var_210 = "NetAmount"
  loc_19D1CAA: LateIdCallSt
  loc_19D1CB2: var_1A0 = &H12
  loc_19D1CC1: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1CC8: LateIdCallSt
  loc_19D1CD0: var_1A0 = &H12
  loc_19D1CDF: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1CE6: LateIdCallSt
  loc_19D1CEE: var_1A0 = &H12
  loc_19D1CF7: var_1C0 = &H578
  loc_19D1D03: LateIdCallSt
  loc_19D1D0B: var_1A0 = 0
  loc_19D1D14: var_1C0 = &H13
  loc_19D1D1D: var_210 = "OpBal"
  loc_19D1D26: LateIdCallSt
  loc_19D1D2E: var_1A0 = &H13
  loc_19D1D3D: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1D44: LateIdCallSt
  loc_19D1D4C: var_1A0 = &H13
  loc_19D1D5B: var_1C0 = CVar(CInt(7)) 'Integer
  loc_19D1D62: LateIdCallSt
  loc_19D1D6A: var_1A0 = &H13
  loc_19D1D73: var_1C0 = &H578
  loc_19D1D7F: LateIdCallSt
  loc_19D1D87: var_1A0 = 0
  loc_19D1D90: var_1C0 = &H14
  loc_19D1D99: var_210 = "MARK"
  loc_19D1DA2: LateIdCallSt
  loc_19D1DAA: var_1A0 = &H14
  loc_19D1DB3: var_1C0 = 0
  loc_19D1DBF: LateIdCallSt
  loc_19D1DC7: var_1A0 = 0
  loc_19D1DD0: var_1C0 = &H15
  loc_19D1DD9: var_210 = "CatCode"
  loc_19D1DE2: LateIdCallSt
  loc_19D1DEA: var_1A0 = &H15
  loc_19D1DF3: var_1C0 = 0
  loc_19D1DFF: LateIdCallSt
  loc_19D1E09: Set var_344 = Nothing 
  loc_19D1E21: If (var_90.RecordCount <= 0) Then
  loc_19D1E29:   global_160 = 0
  loc_19D1E2C:   Exit Sub
  loc_19D1E2D: End If
  loc_19D1E31: Set var_2D8 = Me.FGrid1
  loc_19D1E61: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19D1E64:   var_1A0 = vbNullString
  loc_19D1E6E:   Set var_2D8 = Me.FGrid1
  loc_19D1E7F: End If
  loc_19D1EB6: var_1A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19D1ED6: Me.FGrid1.Row = CVar(CLng(IIf(var_1A0, FRow, 1)))
  loc_19D1F24: var_1A0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19D1F44: Me.FGrid1.Col = CVar(CLng(IIf(var_1A0, Fcol, 1)))
  loc_19D1F60: Set var_8C = Nothing
  loc_19D1F68: Set var_90 = Nothing
  loc_19D1F6D: IStAd
  loc_19D1F71: Exit Sub
End Sub

Public Sub PaymentDueLetterReport(formName, FRow, Fcol) '130F358
  'Data Table: 563038
  Dim var_AC As Variant
  Dim var_CC As Integer
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_25C As String
  loc_130EC54: On Error Goto loc_130F349
  loc_130EC5C: global_160 = &HFF
  loc_130EC93: 1(CVar(CStr(Me.FGrid.TextMatrix) & "Report")).Tag = 2
  loc_130ECEC: VarLateMemCallLdRfVar
  loc_130ECF7: Proc_6_7_F25D88(var_178, Me.FGrid, 1, 0)
  loc_130ECFF: var_198 = (CVar(1 & CStr(Me.FGrid.TextMatrix) & "' And MTL.VDate Between") + var_178)
  loc_130ED08: var_1B8 = (var_198 + " And ")
  loc_130ED21: VarLateMemCallLdRfVar
  loc_130ED2C: Proc_6_7_F25D88(var_228, Me.FGrid, 1, 1)
  loc_130ED34: var_238 = (var_1B8 + var_228)
  loc_130ED3D: var_258 = (var_238 + " ")
  loc_130ED6F: Call 0.Method_arg_54 ("Payment Due Letter Report", 2)
  loc_130ED77: var_AC = 0
  loc_130EDB4: var_110 = Me.FGrid
  loc_130EDCE: Set var_124 = 1(1 & CStr(var_110.TextMatrix))
  loc_130EDD4: var_110.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_130EE07: var_EC = Me.FGrid
  loc_130EE27: var_EC.TextBox.Text = "Letter Type : "
  loc_130EE40: var_AC = 0
  loc_130EE6A: var_25C = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_130EE90: var_90 = 1 & CStr(Me.FGrid.TextMatrix)
  loc_130EEA9: var_AC = 2
  loc_130EEB0: var_CC = 1
  loc_130EEB9: var_EC = Me.FGrid
  loc_130EECF: var_94 = CStr(var_EC.TextMatrix) & "Report"
  loc_130EEE2: global_120 = "Payment Due Letter Report"
  loc_130EEED: var_100 = "SELECT MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where " & CStr(var_258)
  loc_130EF24: var_EC.Connection15.Execute var_100 & " And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY Cast(MTL.Code As Integer)", var_EC, -1
  loc_130EF5C: Set var_124 = 2(1 & CStr(var_EC.TextMatrix)) 
  loc_130EF63: CreateFieldDefFile(var_124, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF, var_124, var_CC, var_AC, 1)
  loc_130EF91: var_100 = "\" & var_94
  loc_130EFA5: Call 0.Method_arg_1C (MemVar_1F920B4 & var_100 & ".RPT", var_AC, var_124, MemVar_1F920B4 & var_100 & ".RPT", var_AC)
  loc_130EFB0: MemVar_1F921E4 = var_124
  loc_130EFCB: var_AC = CVar(var_124) 'Address
  loc_130EFD9: Call 0.Method_arg_64 (var_124, var_AC, var_BC, var_CC, "From : ")
  loc_130EFE1: Call 0.Method_arg_2C (var_AC, "From : ")
  loc_130EFEF: Call 0.Method_arg_150 (" MTL.Type='")
  loc_130F005: Call 0.Method_arg_90 (var_124, var_268, var_9A)
  loc_130F00D: Call 0.Method_arg_24 (1)
  loc_130F019: For var_26C =  To CInt(var_268): global_160 = var_26C 'Integer
  loc_130F032:   Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F03A:   Call 0.Method_arg_20 (var_270)
  loc_130F042:   Call 0.Method_arg_30 (var_100)
  loc_130F058:   var_280 = Ucase(CVar(var_100)) 'Variant
  loc_130F088:   If (var_280 = Ucase("comp_name")) Then
  loc_130F0AC:     Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F0B4:     Call 0.Method_arg_20 (var_270)
  loc_130F0BC:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_130F0D2:   Else
  loc_130F0F4:     If (var_280 = Ucase("comp_add1")) Then
  loc_130F118:       Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F120:       Call 0.Method_arg_20 (var_270)
  loc_130F128:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_130F13E:     Else
  loc_130F160:       If (var_280 = Ucase("comp_pin")) Then
  loc_130F184:         Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F18C:         Call 0.Method_arg_20 (var_270)
  loc_130F194:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_130F1AA:       Else
  loc_130F1CC:         If (var_280 = Ucase("comp_GSTIN")) Then
  loc_130F1D6:           var_100 = "'" & MemVar_1F92154
  loc_130F1F0:           Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F1F8:           Call 0.Method_arg_20 (var_270)
  loc_130F200:           Call 0.Method_arg_38 (var_100 & "'")
  loc_130F216:         Else
  loc_130F238:           If (var_280 = Ucase("Title")) Then
  loc_130F244:             Call 0.Method_arg_50 (var_100)
  loc_130F267:             Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F26F:             Call 0.Method_arg_20 (var_270)
  loc_130F277:             Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_130F28F:           Else
  loc_130F2B1:             If (var_280 = Ucase("BetweenDate")) Then
  loc_130F2D5:               Call 0.Method_arg_90 (var_124, CLng(var_9A))
  loc_130F2DD:               Call 0.Method_arg_20 (var_270)
  loc_130F2E5:               Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_130F2F8:             End If
  loc_130F2F8:           End If
  loc_130F2F8:         End If
  loc_130F2F8:       End If
  loc_130F2F8:     End If
  loc_130F2F8:   End If
  loc_130F2FB: Next var_26C 'Integer
  loc_130F305: Set var_270 = Nothing
  loc_130F31E: Set var_124 = MemVar_1F921E4 
  loc_130F32A: Proc_6_99_1483714(var_124, 3, global_120)
  loc_130F335: MemVar_1F921E4 = var_124
  loc_130F345: Set var_88 = Nothing
  loc_130F348: Exit Sub
  loc_130F349: ' Referenced from: 130EC54
  loc_130F349: Proc_6_60_E62BC4(&HFF)
  loc_130F353: global_160 = 0
  loc_130F356: Exit Sub
End Sub

Public Sub Proc_292_83_1688A70
  'Data Table: 563038
  Dim var_A0 As Variant
  Dim unk_56303E As Connection15
  Dim var_B0 As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_DC As String
  Dim var_CC As Fields15
  Dim var_110 As String
  Dim var_C8 As String
  Dim var_100 As Variant
  Dim var_158 As Variant
  Dim var_140 As Variant
  Dim var_188 As Variant
  Dim var_1C8 As Variant
  Dim var_C4 As Variant
  Dim var_E0 As MSHFlexGrid
  loc_168726C: On Error Goto loc_1688A69
  loc_1687284: Me.LblProcess.Caption = "Please Wait..."
  loc_1687290: Set var_A0 = Me.LblProcess
  loc_1687296: var_A0.Refresh
  loc_16872B4: unk_56303E.Execute "Select * From FAEnviro", var_C0, -1
  loc_16872BF: Set var_88 = var_A0
  loc_16872D7: var_A0 = var_88.Fields
  loc_168733B: var_140 = IIf((Proc_6_38_E68A98(CVar(var_A0.Item("daterfill")), var_A0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("daterfill")))))
  loc_16873D8: var_140 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("pagenofill")), CStr(var_140)) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("pagenofill")))))
  loc_1687475: var_140 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("titlerfill")), CStr(var_140)) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("titlerfill")))))
  loc_16874B6: var_C4 = var_88.Fields.Item("linefiller")
  loc_16874CD: var_DC = "linefiller"
  loc_16874E1: var_E0 = var_88.Fields.Item(var_DC)
  loc_16874F5: var_110 = "-"
  loc_1687542: var_148 = global_52
  loc_168754D: If (var_148 = "MemBillMissingReport") Then
  loc_1687553:   var_8C = "MemBillMissingReport"
  loc_1687559:   var_90 = "Member Bill Missing Report"
  loc_168755C:   var_158 = "Select S.Name As MemberName,S.CardNo As MemCardNo,M.Name As MemCategory from subGroup S Inner Join MemCatMast M On S.CompanyType=M.Code Where S.ActiveYN=1 And S.SubCode Not in (Select Distinct MemCode From MemBill Where MthYear='"
  loc_1687569:   var_100 = 1
  loc_1687576:   Set var_A0 = Me.FGrid
  loc_168757C:   var_C0 = var_A0.TextMatrix)
  loc_16875BA:   var_1C8 = var_100 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or S.LogSite_Code='HO') Order by M.Name,S.Name" 
  loc_16875EE:   unk_56303E.Execute CStr(var_1C8), var_C0, -1
  loc_1687626:   Set var_A0 = var_A0 
  loc_168762D:   CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_8C & ".ttx", &HFF, var_A0)
  loc_168765B:   var_C8 = "\" & var_8C
  loc_168766F:   Call 0.Method_arg_1C (MemVar_1F920B4 & var_C8 & ".RPT", CVar(CLng(0)), var_A0, CVar(CLng(0)))
  loc_168767A:   MemVar_1F921E4 = var_A0
  loc_16876A3:   Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_DC, var_100)
  loc_16876AB:   Call 0.Method_arg_2C (var_158, CStr(IIf((Proc_6_38_E68A98(CVar(var_C4), CStr(var_140)) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_E0))))))
  loc_16876B9:   Call 0.Method_arg_150 (&HFF)
  loc_16876CF:   Call 0.Method_arg_90 (var_A0, var_1D4)
  loc_16876D7:   Call 0.Method_arg_24 (var_9A)
  loc_16876E3:   For var_1D8 =  To CInt(var_1D4): 1 = var_1D8 'Integer
  loc_16876FC:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1687704:     Call 0.Method_arg_20 (var_C4)
  loc_168770C:     Call 0.Method_arg_30 (var_C8)
  loc_1687722:     var_1E8 = Ucase(CVar(var_C8)) 'Variant
  loc_1687752:     If (var_1E8 = Ucase("comp_name")) Then
  loc_1687776:       Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_168777E:       Call 0.Method_arg_20 (var_C4)
  loc_1687786:       Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_168779C:     Else
  loc_16877BE:       If (var_1E8 = Ucase("comp_add1")) Then
  loc_16877E2:         Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_16877EA:         Call 0.Method_arg_20 (var_C4)
  loc_16877F2:         Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1687808:       Else
  loc_168782A:         If (var_1E8 = Ucase("comp_pin")) Then
  loc_168784E:           Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1687856:           Call 0.Method_arg_20 (var_C4)
  loc_168785E:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1687874:         Else
  loc_1687896:           If (var_1E8 = Ucase("comp_GSTIN")) Then
  loc_16878A0:             var_C8 = "'" & MemVar_1F92154
  loc_16878BA:             Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_16878C2:             Call 0.Method_arg_20 (var_C4)
  loc_16878CA:             Call 0.Method_arg_38 (var_C8 & "'")
  loc_16878E0:           Else
  loc_1687902:             If (var_1E8 = Ucase("Title")) Then
  loc_168790E:               Call 0.Method_arg_50 (var_C8)
  loc_1687931:               Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1687939:               Call 0.Method_arg_20 (var_C4)
  loc_1687941:               Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1687956:             End If
  loc_1687956:           End If
  loc_1687956:         End If
  loc_1687956:       End If
  loc_1687956:     End If
  loc_1687959:   Next var_1D8 'Integer
  loc_1687963:   Set var_C4 = Nothing
  loc_1687979:   Set var_A0 = MemVar_1F921E4 
  loc_1687985:   Proc_6_99_1483714(var_A0, 3, var_90)
  loc_1687990:   MemVar_1F921E4 = var_A0
  loc_16879A8:   Me.LblProcess.Caption = vbNullString
  loc_16879BA:   Me.LblProcess.Refresh
  loc_16879CF:   Me.Global.Unload Me
  loc_16879D7:   Exit Sub
  loc_16879DB: Else
  loc_16879E3:   If (var_148 = "MemVisitDetail") Then
  loc_16879E9:     var_B0 = CVar(CLng(0)) 'Long
  loc_16879EE:     var_100 = 0
  loc_1687A1F:     Call Proc_292_91_EF85F4(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix))
  loc_1687A33:     If (var_1EC = 0) Then
  loc_1687A3B:       global_160 = 0
  loc_1687A3E:       Exit Sub
  loc_1687A3F:     End If
  loc_1687A78:     Call Proc_292_91_EF85F4(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1687A8C:     If (var_1EC = 0) Then
  loc_1687A94:       global_160 = 0
  loc_1687A97:       Exit Sub
  loc_1687A98:     End If
  loc_1687AA0:     var_100 = 0
  loc_1687AD1:     Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), var_100, CVar(CLng(2)))
  loc_1687AE5:     If (var_1EC = 0) Then
  loc_1687AED:       global_160 = 0
  loc_1687AF0:       Exit Sub
  loc_1687AF1:     End If
  loc_1687AFD:     Set var_A0 = Me.Check1
  loc_1687B03:     Call 0.Method_Proc_292_83_1688A700 (1, var_C4, var_1EA, global_160, global_160)
  loc_1687B0B:     global_160 = var_C4.Value
  loc_1687B21:     If (CLng(var_1EA) = 0) Then
  loc_1687B3F:       Call Proc_292_87_1282E00(global_180, 1, CByte(1), var_C8)
  loc_1687B4A:       global_56 = var_C8
  loc_1687B5A:       If (global_160 = 0) Then
  loc_1687B5D:         Exit Sub
  loc_1687B5E:       End If
  loc_1687B5E:     End If
  loc_1687B6A:     Set var_A0 = Me.Check1
  loc_1687B70:     Call 0.Method_Proc_292_83_1688A700 (2, var_C4, var_1EA, var_100)
  loc_1687B78:     var_B0 = var_C4.Value
  loc_1687B8E:     If (CLng(var_1EA) = 0) Then
  loc_1687BAC:       Call Proc_292_87_1282E00(global_184, 2, CByte(1))
  loc_1687BB7:       global_60 = var_C8
  loc_1687BC7:       If (global_160 = 0) Then
  loc_1687BCA:         Exit Sub
  loc_1687BCB:       End If
  loc_1687BCB:     End If
  loc_1687BD7:     Set var_A0 = Me.Check1
  loc_1687BDD:     Call 0.Method_Proc_292_83_1688A700 (3, var_C4, var_1EA)
  loc_1687BE5:     var_C8 = var_C4.Value
  loc_1687BFB:     If (CLng(var_1EA) = 0) Then
  loc_1687C19:       Call Proc_292_87_1282E00(global_188, 3, CByte(1))
  loc_1687C24:       global_64 = var_C8
  loc_1687C34:       If (global_160 = 0) Then
  loc_1687C37:         Exit Sub
  loc_1687C38:       End If
  loc_1687C38:     End If
  loc_1687C3B:   Else
  loc_1687C43:     If (var_148 = "MemMalingLabels") Then
  loc_1687C49:       var_B0 = CVar(CLng(2)) 'Long
  loc_1687C7F:       Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1687C93:       If (var_1EC = 0) Then
  loc_1687C9B:         global_160 = 0
  loc_1687C9E:         Exit Sub
  loc_1687C9F:       End If
  loc_1687CD8:       Call Proc_292_91_EF85F4(CInt(3), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(3)))
  loc_1687CEC:       If (var_1EC = 0) Then
  loc_1687CF4:         global_160 = 0
  loc_1687CF7:         Exit Sub
  loc_1687CF8:       End If
  loc_1687D04:       Set var_A0 = Me.Check1
  loc_1687D0A:       Call 0.Method_Proc_292_83_1688A700 (1, var_C4, var_1EA, global_160, global_160)
  loc_1687D12:       var_B0 = var_C4.Value
  loc_1687D28:       If (CLng(var_1EA) = 0) Then
  loc_1687D46:         Call Proc_292_87_1282E00(global_180, 1, CByte(1), var_C8)
  loc_1687D51:         global_56 = var_C8
  loc_1687D61:         If (global_160 = 0) Then
  loc_1687D64:           Exit Sub
  loc_1687D65:         End If
  loc_1687D65:       End If
  loc_1687D68:     Else
  loc_1687D70:       If (var_148 = "MemSalesRegister") Then
  loc_1687D76:         var_B0 = CVar(CLng(0)) 'Long
  loc_1687DAC:         Call Proc_292_91_EF85F4(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1687DC0:         If (var_1EC = 0) Then
  loc_1687DC8:           global_160 = 0
  loc_1687DCB:           Exit Sub
  loc_1687DCC:         End If
  loc_1687E05:         Call Proc_292_91_EF85F4(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1687E19:         If (var_1EC = 0) Then
  loc_1687E21:           global_160 = 0
  loc_1687E24:           Exit Sub
  loc_1687E25:         End If
  loc_1687E5E:         Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_1687E72:         If (var_1EC = 0) Then
  loc_1687E7A:           global_160 = 0
  loc_1687E7D:           Exit Sub
  loc_1687E7E:         End If
  loc_1687E8A:         Set var_A0 = Me.Check1
  loc_1687E90:         Call 0.Method_Proc_292_83_1688A700 (1, var_C4, var_1EA, global_160, global_160)
  loc_1687EAE:         If (CLng(var_1EA) = 0) Then
  loc_1687ECC:           Call Proc_292_87_1282E00(global_180, 1, CByte(1), var_C8)
  loc_1687ED7:           global_56 = var_C8
  loc_1687EE7:           If (var_C4.Value = 0) Then
  loc_1687EEA:             Exit Sub
  loc_1687EEB:           End If
  loc_1687EEB:         End If
  loc_1687EEE:       Else
  loc_1687EF6:         If (var_148 = "MemTaxReport") Then
  loc_1687EFC:           var_B0 = CVar(CLng(0)) 'Long
  loc_1687F32:           Call Proc_292_91_EF85F4(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1687F46:           If (var_1EC = 0) Then
  loc_1687F4E:             global_160 = 0
  loc_1687F51:             Exit Sub
  loc_1687F52:           End If
  loc_1687F8B:           Call Proc_292_91_EF85F4(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1687F9F:           If (var_1EC = 0) Then
  loc_1687FA7:             global_160 = 0
  loc_1687FAA:             Exit Sub
  loc_1687FAB:           End If
  loc_1687FE4:           Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_160)
  loc_1687FF8:           If (var_1EC = 0) Then
  loc_1688000:             global_160 = 0
  loc_1688003:             Exit Sub
  loc_1688004:           End If
  loc_1688010:           Set var_A0 = Me.Check1
  loc_1688016:           Call 0.Method_Proc_292_83_1688A700 (1, var_C4, var_1EA, global_160, global_160)
  loc_168801E:           var_B0 = var_C4.Value
  loc_1688034:           If (CLng(var_1EA) = 0) Then
  loc_168804D:             var_B0 = global_180
  loc_1688052:             Call Proc_292_87_1282E00(var_B0, 1, CByte(1), var_C8)
  loc_168805D:             global_56 = var_C8
  loc_168806D:             If (global_160 = 0) Then
  loc_1688070:               Exit Sub
  loc_1688071:             End If
  loc_1688071:           End If
  loc_168807D:           Set var_A0 = Me.Check1
  loc_1688083:           Call 0.Method_Proc_292_83_1688A700 (2, var_C4, var_1EA, var_B0)
  loc_16880A1:           If (CLng(var_1EA) = 0) Then
  loc_16880BF:             Call Proc_292_87_1282E00(global_184, 2, CByte(1))
  loc_16880CA:             global_60 = var_C4.Value
  loc_16880DA:             If (global_160 = 0) Then
  loc_16880DD:               Exit Sub
  loc_16880DE:             End If
  loc_16880DE:           End If
  loc_16880E1:         Else
  loc_16880E9:           If (var_148 = "PaymentDueLetterReport") Then
  loc_16880EF:             var_B0 = CVar(CLng(0)) 'Long
  loc_1688125:             Call Proc_292_91_EF85F4(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0)
  loc_1688139:             If (var_1EC = 0) Then
  loc_1688141:               global_160 = 0
  loc_1688144:               Exit Sub
  loc_1688145:             End If
  loc_168817E:             Call Proc_292_91_EF85F4(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1688192:             If (var_1EC = 0) Then
  loc_168819A:               global_160 = 0
  loc_168819D:               Exit Sub
  loc_168819E:             End If
  loc_16881D7:             Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_16881EB:             If (var_1EC = 0) Then
  loc_16881F3:               global_160 = 0
  loc_16881F6:               Exit Sub
  loc_16881F7:             End If
  loc_16881FA:           Else
  loc_1688202:             If (var_148 = "MemBirthAnnvDtls") Then
  loc_168823E:               Call Proc_292_91_EF85F4(CInt(0), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_160)
  loc_1688252:               If (var_1EC = 0) Then
  loc_168825A:                 global_160 = 0
  loc_168825D:                 Exit Sub
  loc_168825E:               End If
  loc_1688297:               Call Proc_292_91_EF85F4(CInt(1), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_160)
  loc_16882AB:               If (var_1EC = 0) Then
  loc_16882B3:                 global_160 = 0
  loc_16882B6:                 Exit Sub
  loc_16882B7:               End If
  loc_16882BA:               var_B0 = CVar(CLng(2)) 'Long
  loc_16882F0:               Call Proc_292_91_EF85F4(CInt(2), CStr(Me.FGrid.TextMatrix)), var_1EC, Me.FGrid.TextMatrix), 0, var_B0, global_160)
  loc_1688304:               If (var_1EC = 0) Then
  loc_168830C:                 global_160 = 0
  loc_168830F:                 Exit Sub
  loc_1688310:               End If
  loc_168831E:               Set var_A0 = Me.GridSel
  loc_1688324:               Call 0.Method_Proc_292_83_1688A700 (1, var_C4, var_1EE, 1, global_160, global_160)
  loc_1688346:               For var_1F2 = var_B0 To CInt((CLng(var_C4.Rows) - 1)):             global_160 = var_1F2 'Integer
  loc_1688367:                 Set var_A0 = Me.GridSel
  loc_168836D:                 Call 0.Method_Proc_292_83_1688A700 (1, var_C4, 0, CVar(CLng(var_1EE)))
  loc_1688395:                 If (CStr(var_C4.TextMatrix)) = "¸") Then
  loc_168839C:                   var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_16883B3:                   Set var_A0 = Me.GridSel
  loc_16883B9:                   Call 0.Method_Proc_292_83_1688A700 (1, var_C4, 2, var_B0)
  loc_16883C1:                   var_C0 = var_C4.TextMatrix)
  loc_16883FB:                   Set var_CC = Me.GridSel
  loc_1688401:                   Call 0.Method_Proc_292_83_1688A700 (1, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_56))
  loc_1688449:                   var_140 = IIf((global_56 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "'"))
  loc_1688451:                   var_188 = (var_B0 + var_140)
  loc_168845C:                   global_56 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_168848B:                 End If
  loc_168848E:               Next var_1F2 'Integer
  loc_16884A1:               Set var_A0 = Me.GridSel
  loc_16884A7:               Call 0.Method_Proc_292_83_1688A700 (2, var_C4)
  loc_16884C9:               For var_210 = 1 To CInt((CLng(var_C4.Rows) - 1)):             var_1EE = var_210 'Integer
  loc_16884D3:                 var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_16884EA:                 Set var_A0 = Me.GridSel
  loc_16884F0:                 Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 0)
  loc_1688518:                 If (CStr(var_C4.TextMatrix)) = "¸") Then
  loc_168851F:                   var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1688536:                   Set var_A0 = Me.GridSel
  loc_168853C:                   Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 4)
  loc_1688564:                   If (CStr(var_C4.TextMatrix)) = "1") Then
  loc_1688582:                     Set var_A0 = Me.GridSel
  loc_1688588:                     Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 2, CVar(CLng(var_1EE)))
  loc_1688590:                     var_C0 = var_C4.TextMatrix)
  loc_16885CA:                     Set var_CC = Me.GridSel
  loc_16885D0:                     Call 0.Method_Proc_292_83_1688A700 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'")
  loc_1688618:                     var_140 = IIf((global_60 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(CVar(global_60) & CStr(var_E0.TextMatrix)) & "'"))
  loc_1688620:                     var_188 = (var_C0 + var_140)
  loc_168862B:                     global_60 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_168865E:                     var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_168867B:                     Set var_A0 = Me.GridSel
  loc_1688681:                     Call 0.Method_Proc_292_83_1688A700 (2, var_C4, vbNullString, 0)
  loc_1688689:                     LateIdCallSt
  loc_168869B:                   Else
  loc_16886B6:                     Set var_A0 = Me.GridSel
  loc_16886BC:                     Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 4, CVar(CLng(var_1EE)), var_C4)
  loc_16886E4:                     If (CStr(var_C4.TextMatrix)) = "2") Then
  loc_16886EB:                       var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1688702:                       Set var_A0 = Me.GridSel
  loc_1688708:                       Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 2, var_B0)
  loc_1688710:                       var_C0 = var_C4.TextMatrix)
  loc_168874A:                       Set var_CC = Me.GridSel
  loc_1688750:                       Call 0.Method_Proc_292_83_1688A700 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_64))
  loc_1688798:                       var_140 = IIf((global_64 = vbNullString), CVar("'" & CStr(var_C0) & "C'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "C'"))
  loc_16887A0:                       var_188 = (var_B0 + var_140)
  loc_16887AB:                       global_64 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_16887DE:                       var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_16887FB:                       Set var_A0 = Me.GridSel
  loc_1688801:                       Call 0.Method_Proc_292_83_1688A700 (2, var_C4, vbNullString, 0)
  loc_1688809:                       LateIdCallSt
  loc_168881B:                     Else
  loc_1688836:                       Set var_A0 = Me.GridSel
  loc_168883C:                       Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 4, CVar(CLng(var_1EE)), var_C4)
  loc_1688864:                       If (CStr(var_C4.TextMatrix)) = "3") Then
  loc_168886B:                         var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_1688882:                         Set var_A0 = Me.GridSel
  loc_1688888:                         Call 0.Method_Proc_292_83_1688A700 (2, var_C4, 2, var_B0)
  loc_1688890:                         var_C0 = var_C4.TextMatrix)
  loc_16888CA:                         Set var_CC = Me.GridSel
  loc_16888D0:                         Call 0.Method_Proc_292_83_1688A700 (2, var_E0, 2, CVar(CLng(var_1EE)), "," & "'", CVar(global_68))
  loc_1688918:                         var_140 = IIf((global_68 = vbNullString), CVar("'" & CStr(var_C0) & "S'"), CVar(var_C0 & CStr(var_E0.TextMatrix)) & "S'"))
  loc_1688920:                         var_188 = (var_B0 + var_140)
  loc_168892B:                         global_68 = CStr(2 & Trim(CVar(CStr(var_C0))) & "') And " & "(S.LogSite_Code='")
  loc_168895E:                         var_B0 = CVar(CLng(var_1EE)) 'Long
  loc_168897B:                         Set var_A0 = Me.GridSel
  loc_1688981:                         Call 0.Method_Proc_292_83_1688A700 (2, var_C4, vbNullString, 0)
  loc_1688989:                         LateIdCallSt
  loc_1688998:                       End If
  loc_1688998:                     End If
  loc_1688998:                   End If
  loc_1688998:                 End If
  loc_168899B:               Next var_210 'Integer
  loc_16889A0:             End If
  loc_16889A0:           End If
  loc_16889A0:         End If
  loc_16889A0:       End If
  loc_16889A0:     End If
  loc_16889A0:   End If
  loc_16889A0: End If
  loc_16889AD: Me.LblProcess.Caption = "Please Wait..............."
  loc_16889BF: Me.LblProcess.Refresh
  loc_16889D0: Call RetBack(Me)
  loc_16889E6: Me.PictParameter.Width = CDbl(0)
  loc_16889FB: Me.LblProcess.Caption = "Please Wait....................."
  loc_1688A0D: Me.LblProcess.Refresh
  loc_1688A22: Set var_A0 = Me.BtnPrint
  loc_1688A28: Call 0.Method_Proc_292_83_1688A700 (3, var_C4)
  loc_1688A30: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1688A49: Set var_A0 = Me.BtnPrint
  loc_1688A4F: Call 0.Method_Proc_292_83_1688A700 (2, var_C4)
  loc_1688A57: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1688A63: Call Form_Resize()
  loc_1688A68: Exit Sub
  loc_1688A69: ' Referenced from: 168726C
  loc_1688A69: Proc_6_60_E62BC4()
  loc_1688A6E: Exit Sub
End Sub

Public Sub Proc_292_84_125C528
  'Data Table: 563038
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_148 As MSHFlexGrid
  loc_125BFFB: var_B0 = CLng(Me.FGrid.Row)
  loc_125C00B: If (var_B0 = CLng(2)) Then
  loc_125C014:   var_B4 = global_52
  loc_125C01F:   If Not (var_B4 = "MemSalesRegister") Then
  loc_125C02A:     If Not (var_B4 = "MemVisitDetail") Then
  loc_125C035:       If Not (var_B4 = "MemMalingLabels") Then
  loc_125C040:         If Not (var_B4 = "PaymentDueLetterReport") Then
  loc_125C04B:           If (var_B4 = "MemBirthAnnvDtls") Then
  loc_125C04E:           End If
  loc_125C04E:         End If
  loc_125C04E:       End If
  loc_125C04E:     End If
  loc_125C05A:     Set var_9C = Me.TxtGrid
  loc_125C060:     Call 0.Method_Proc_292_84_125C5280 (0, var_B8)
  loc_125C07F:     If (var_B8.Text <> vbNullString) Then
  loc_125C095:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125C0AD:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125C0D0:       var_BC = Me.ListView.SelectedItem.Text
  loc_125C0D8:       var_134 = CVar(var_BC) 'String
  loc_125C0E0:       Set var_148 = Me.FGrid
  loc_125C0E6:       LateIdCallSt
  loc_125C106:     End If
  loc_125C109:   Else
  loc_125C111:     If (var_B4 = "MemTaxReport") Then
  loc_125C13D:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_125C143:         var_104 = CVar(CLng(2)) 'Long
  loc_125C148:         var_124 = 1
  loc_125C17F:         var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_125C187:         Set var_C0 = Me.FGrid
  loc_125C18D:         LateIdCallSt
  loc_125C1C2:         var_B8 = Me.Fields.Item("Code")
  loc_125C1D3:         var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_125C1DB:         Set var_C0 = Me.FGrid
  loc_125C1E1:         var_C0.Tag = var_D0
  loc_125C1F6:       End If
  loc_125C1F6:     End If
  loc_125C1F6:   End If
  loc_125C1F9: Else
  loc_125C200:   If (var_B0 = CLng(3)) Then
  loc_125C214:     If (global_52 = "MemMalingLabels") Then
  loc_125C223:       Set var_9C = Me.TxtGrid
  loc_125C229:       Call 0.Method_Proc_292_84_125C5280 (0, var_B8, var_BC, var_C0, var_D0, var_124)
  loc_125C231:       var_104 = var_B8.Text
  loc_125C248:       If (var_BC <> vbNullString) Then
  loc_125C25E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125C276:         var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125C293:         Set var_B8 = Me.ListView.SelectedItem
  loc_125C2A1:         var_134 = CVar(var_B8.Text) 'String
  loc_125C2A9:         Set var_148 = Me.FGrid
  loc_125C2AF:         LateIdCallSt
  loc_125C2CF:       End If
  loc_125C2CF:     End If
  loc_125C2D2:   Else
  loc_125C2D9:     If (var_B0 = CLng(4)) Then
  loc_125C2E2:       var_164 = global_52
  loc_125C2E8:     Else
  loc_125C2EF:       If Not (var_B0 = CLng(0)) Then
  loc_125C2F9:         If (var_B0 = CLng(1)) Then
  loc_125C2FC:         End If
  loc_125C302:         var_168 = global_52
  loc_125C30D:         If (var_168 = "MemBillMissingReport") Then
  loc_125C323:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125C32C:           Set var_148 = Me.FGrid
  loc_125C33B:           var_114 = CVar(CLng(var_148.Col)) 'Long
  loc_125C349:           Set var_9C = Me.TxtGrid
  loc_125C34F:           Call 0.Method_Proc_292_84_125C5280 (0, var_B8, var_114, var_F4, var_148, var_134, var_114)
  loc_125C362:           var_E4 = CVar(Proc_6_120_133A1D8(var_B8, var_F4, var_148, var_134)) 'String
  loc_125C36A:           Set var_16C = Me.FGrid
  loc_125C370:           LateIdCallSt
  loc_125C391:         Else
  loc_125C399:           If (var_168 = "MemBirthAnnvDtls") Then
  loc_125C3A5:             Set var_9C = Me.TxtGrid
  loc_125C3AB:             Call 0.Method_Proc_292_84_125C5280 (0, var_B8, var_16C, var_E4)
  loc_125C3D4:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125C3EC:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_125C409:             var_AC = CVar(Proc_6_33_1512840(var_B8, var_114)) 'String
  loc_125C426:             LateIdCallSt
  loc_125C450:             Call Proc_292_99_1157908(var_AC, Me.FGrid, CVar(CStr(Format(var_AC, "dd/MMM"))), 1, 1)
  loc_125C45B:           Else
  loc_125C494:             Set var_9C = Me.TxtGrid
  loc_125C49A:             Call 0.Method_Proc_292_84_125C5280 (0, var_B8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_125C4AD:             var_E4 = CVar(Proc_6_33_1512840(var_B8, var_124, var_104)) 'String
  loc_125C4B5:             Set var_16C = Me.FGrid
  loc_125C4BB:             LateIdCallSt
  loc_125C4D9:           End If
  loc_125C4D9:         End If
  loc_125C4D9:       End If
  loc_125C4D9:     End If
  loc_125C4D9:   End If
  loc_125C4D9: End If
  loc_125C4E4: If (arg_10 = 0) Then
  loc_125C4EB:   Set var_9C = Me.FGrid
  loc_125C507:   Set var_9C = Me.TxtGrid
  loc_125C50D:   Call 0.Method_Proc_292_84_125C5280 (0, var_B8, 0, FGrid.DispID_8001, &HFF)
  loc_125C515:   var_B8.Visible = var_16C
  loc_125C521: End If
  loc_125C521: Proc_292_84_125C528 = var_E4
End Sub

Public Sub Proc_292_85_15C1680
  'Data Table: 563038
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  Dim var_118 As MSHFlexGrid
  loc_15C0387: Me.Pic.Top = CDbl(8300)
  loc_15C03A1: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_15C03BB: Me.FGrid.Top = CVar(CDbl(&H64))
  loc_15C03D6: Me.FGrid.Rows = &HA
  loc_15C03F1: Me.FGrid.Cols = 3
  loc_15C040C: Me.FGrid.FixedCols = 1
  loc_15C0414: var_9C = 0
  loc_15C041D: var_BC = &H898
  loc_15C042A: Set var_8C = Me.FGrid
  loc_15C0430: LateIdCallSt
  loc_15C043B: var_9C = 1
  loc_15C0444: var_BC = &H7B7
  loc_15C0451: Set var_8C = Me.FGrid
  loc_15C0457: LateIdCallSt
  loc_15C0462: var_9C = 2
  loc_15C046B: var_BC = 0
  loc_15C0478: Set var_8C = Me.FGrid
  loc_15C047E: LateIdCallSt
  loc_15C0489: var_9C = 1
  loc_15C0498: var_BC = CVar(CInt(1)) 'Integer
  loc_15C04A0: Set var_8C = Me.FGrid
  loc_15C04A6: LateIdCallSt
  loc_15C04D6: For var_E0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E0 'Integer
  loc_15C04E0:   var_9C = CVar(CLng(var_86)) 'Long
  loc_15C04E5:   var_BC = 0
  loc_15C04F2:   Set var_8C = Me.FGrid
  loc_15C04F8:   LateIdCallSt
  loc_15C0506: Next var_E0 'Integer
  loc_15C050B: Call Proc_292_90_154EAE0()
  loc_15C0517: For var_E4 = 1 To 4: var_86 = var_E4 'Integer
  loc_15C0527:   Set var_8C = Me.GridSel
  loc_15C052D:   Call 0.Method_Proc_292_85_15C16800 (var_86, var_E8)
  loc_15C054B:   If (CBool(var_E8.Visible) = &HFF) Then
  loc_15C0554:     var_88 = (var_88 + 1)
  loc_15C0557:   End If
  loc_15C055A: Next var_E4 'Integer
  loc_15C057A: var_9C = CVar(CDbl(((((global_132 - global_134) + 1) * CInt(220)) + 500))) 'Single
  loc_15C0589: Me.FGrid.Height = var_9C
  loc_15C0597: var_F8 = global_136 'Variant
  loc_15C05A6: If (var_F8 = 0) Then
  loc_15C05BC:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15C05E0:   Set var_E8 = Me.PictParameter
  loc_15C05E6:   var_E8.Width = (CDbl(Me.FGrid.Width) + CDbl(&H7D))
  loc_15C05F8: Else
  loc_15C0603:   If (var_F8 = 1) Then
  loc_15C0617:     Set var_8C = Me.GridSel
  loc_15C061D:     Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0625:     var_E8.Left = CVar(CDbl(&H4B))
  loc_15C0635:     Set var_E8 = Me.FGrid
  loc_15C0662:     var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_E8.Height)) + CDbl(600))) 'Single
  loc_15C0670:     Set var_10C = Me.GridSel
  loc_15C0676:     Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C067E:     var_110.Top = CVar(CDbl(&H4B))
  loc_15C069E:     Set var_8C = Me.GridSel
  loc_15C06A4:     Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C06C3:     Set var_10C = Me.Check1
  loc_15C06C9:     Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C06D1:     var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C06ED:     Set var_8C = Me.GridSel
  loc_15C06F3:     Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0712:     Set var_10C = Me.Check1
  loc_15C0718:     Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C0720:     var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C073C:     Set var_10C = Me.GridSel
  loc_15C0742:     Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C074A:     var_108 = var_110.Width
  loc_15C075C:     Set var_8C = Me.GridSel
  loc_15C0762:     Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0788:     Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H4B))
  loc_15C07A4:   Else
  loc_15C07AF:     If (var_F8 = 2) Then
  loc_15C07C3:       Set var_8C = Me.GridSel
  loc_15C07C9:       Call 0.Method_Proc_292_85_15C16800 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15C07D1:       var_E8.Left = var_108
  loc_15C07E1:       Set var_E8 = Me.FGrid
  loc_15C07E7:       var_108 = var_E8.Height
  loc_15C080E:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C081C:       Set var_10C = Me.GridSel
  loc_15C0822:       Call 0.Method_Proc_292_85_15C16800 (1, var_110, CVar(CDbl(&H4B)))
  loc_15C082A:       var_110.Top = var_108
  loc_15C084A:       Set var_8C = Me.GridSel
  loc_15C0850:       Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C086F:       Set var_10C = Me.Check1
  loc_15C0875:       Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C087D:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C0899:       Set var_8C = Me.GridSel
  loc_15C089F:       Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C08BE:       Set var_10C = Me.Check1
  loc_15C08C4:       Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C08CC:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C08E8:       Set var_10C = Me.GridSel
  loc_15C08EE:       Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C08F6:       var_108 = var_110.Width
  loc_15C0908:       Set var_8C = Me.GridSel
  loc_15C090E:       Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0929:       var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15C0937:       Set var_114 = Me.GridSel
  loc_15C093D:       Call 0.Method_Proc_292_85_15C16800 (2, var_118, CVar(CDbl(&H4B)))
  loc_15C0945:       var_118.Left = var_108
  loc_15C0964:       Set var_E8 = Me.FGrid
  loc_15C096A:       var_108 = var_E8.Height
  loc_15C0991:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C099F:       Set var_10C = Me.GridSel
  loc_15C09A5:       Call 0.Method_Proc_292_85_15C16800 (2, var_110, CVar(CDbl(&H4B)))
  loc_15C09AD:       var_110.Top = var_108
  loc_15C09CD:       Set var_8C = Me.GridSel
  loc_15C09D3:       Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C09F2:       Set var_10C = Me.Check1
  loc_15C09F8:       Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0A00:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C0A1C:       Set var_8C = Me.GridSel
  loc_15C0A22:       Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C0A41:       Set var_10C = Me.Check1
  loc_15C0A47:       Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0A4F:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C0A6B:       Set var_10C = Me.GridSel
  loc_15C0A71:       Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0A8B:       Set var_8C = Me.GridSel
  loc_15C0A91:       Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C0AB7:       Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15C0ADB:       If (global_52 = "NCKOTDetails(Room Service)") Then
  loc_15C0ADE:         var_9C = 1
  loc_15C0AF9:         Set var_8C = Me.GridSel
  loc_15C0AFF:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8, &H320)
  loc_15C0B07:         LateIdCallSt
  loc_15C0B31:         Set var_8C = Me.GridSel
  loc_15C0B37:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8, &H898, 2)
  loc_15C0B3F:         LateIdCallSt
  loc_15C0B69:         Set var_8C = Me.GridSel
  loc_15C0B6F:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8, &H4B0, 3, var_E8)
  loc_15C0B77:         LateIdCallSt
  loc_15C0B86:       End If
  loc_15C0B89:     Else
  loc_15C0B94:       If (var_F8 = 3) Then
  loc_15C0BA8:         Set var_8C = Me.GridSel
  loc_15C0BAE:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8, CVar(CDbl(&H4B)), var_E8)
  loc_15C0BB6:         var_E8.Left = var_E8
  loc_15C0BC6:         Set var_E8 = Me.FGrid
  loc_15C0BCC:         var_108 = var_E8.Height
  loc_15C0BF3:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C0C01:         Set var_10C = Me.GridSel
  loc_15C0C07:         Call 0.Method_Proc_292_85_15C16800 (1, var_110, CVar(CDbl(&H4B)), var_108)
  loc_15C0C0F:         var_110.Top = CVar(CDbl(&H4B))
  loc_15C0C2F:         Set var_8C = Me.GridSel
  loc_15C0C35:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0C54:         Set var_10C = Me.Check1
  loc_15C0C5A:         Call 0.Method_Proc_292_85_15C16800 (1, var_110, (CDbl(var_E8.Top) + CDbl(&H14)))
  loc_15C0C62:         var_110.Top = var_108
  loc_15C0C7E:         Set var_8C = Me.GridSel
  loc_15C0C84:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0CA3:         Set var_10C = Me.Check1
  loc_15C0CA9:         Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C0CB1:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C0CCD:         Set var_8C = Me.GridSel
  loc_15C0CD3:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0CF2:         Set var_10C = Me.GridSel
  loc_15C0CF8:         Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C0D00:         var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15C0D1C:         Set var_10C = Me.GridSel
  loc_15C0D22:         Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C0D2A:         var_108 = var_110.Height
  loc_15C0D3C:         Set var_8C = Me.GridSel
  loc_15C0D42:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0D5D:         var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15C0D6B:         Set var_114 = Me.GridSel
  loc_15C0D71:         Call 0.Method_Proc_292_85_15C16800 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15C0D79:         var_118.Top = var_108
  loc_15C0D9D:         Set var_8C = Me.GridSel
  loc_15C0DA3:         Call 0.Method_Proc_292_85_15C16800 (3, var_E8)
  loc_15C0DC2:         Set var_10C = Me.Check1
  loc_15C0DC8:         Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C0DD0:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C0DEC:         Set var_8C = Me.GridSel
  loc_15C0DF2:         Call 0.Method_Proc_292_85_15C16800 (3, var_E8)
  loc_15C0E11:         Set var_10C = Me.Check1
  loc_15C0E17:         Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C0E1F:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C0E3B:         Set var_10C = Me.GridSel
  loc_15C0E41:         Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C0E49:         var_108 = var_110.Width
  loc_15C0E5B:         Set var_8C = Me.GridSel
  loc_15C0E61:         Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C0E7C:         var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15C0E8A:         Set var_114 = Me.GridSel
  loc_15C0E90:         Call 0.Method_Proc_292_85_15C16800 (2, var_118, CVar(CDbl(var_E8.Left)))
  loc_15C0E98:         var_118.Left = var_108
  loc_15C0EB7:         Set var_E8 = Me.FGrid
  loc_15C0EBD:         var_108 = var_E8.Height
  loc_15C0EE4:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C0EF2:         Set var_10C = Me.GridSel
  loc_15C0EF8:         Call 0.Method_Proc_292_85_15C16800 (2, var_110, CVar(CDbl(var_E8.Left)))
  loc_15C0F00:         var_110.Top = var_108
  loc_15C0F20:         Set var_8C = Me.GridSel
  loc_15C0F26:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C0F45:         Set var_10C = Me.Check1
  loc_15C0F4B:         Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0F53:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C0F6F:         Set var_8C = Me.GridSel
  loc_15C0F75:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C0F94:         Set var_10C = Me.Check1
  loc_15C0F9A:         Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0FA2:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C0FBE:         Set var_10C = Me.GridSel
  loc_15C0FC4:         Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C0FCC:         var_108 = var_110.Width
  loc_15C0FDE:         Set var_8C = Me.GridSel
  loc_15C0FE4:         Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C100A:         Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15C1026:       Else
  loc_15C1031:         If (var_F8 = 4) Then
  loc_15C1045:           Set var_8C = Me.GridSel
  loc_15C104B:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15C1053:           var_E8.Left = var_108
  loc_15C1063:           Set var_E8 = Me.FGrid
  loc_15C1069:           var_108 = var_E8.Height
  loc_15C1090:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C109E:           Set var_10C = Me.GridSel
  loc_15C10A4:           Call 0.Method_Proc_292_85_15C16800 (1, var_110, CVar(CDbl(&H4B)))
  loc_15C10AC:           var_110.Top = var_108
  loc_15C10CC:           Set var_8C = Me.GridSel
  loc_15C10D2:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C10F1:           Set var_10C = Me.Check1
  loc_15C10F7:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C10FF:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C111B:           Set var_8C = Me.GridSel
  loc_15C1121:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C1140:           Set var_10C = Me.Check1
  loc_15C1146:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C114E:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C116A:           Set var_10C = Me.GridSel
  loc_15C1170:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C1178:           var_108 = var_110.Width
  loc_15C118A:           Set var_8C = Me.GridSel
  loc_15C1190:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C11AB:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H19))) 'Single
  loc_15C11B9:           Set var_114 = Me.GridSel
  loc_15C11BF:           Call 0.Method_Proc_292_85_15C16800 (2, var_118, CVar(CDbl(&H4B)))
  loc_15C11C7:           var_118.Left = var_108
  loc_15C11E6:           Set var_E8 = Me.FGrid
  loc_15C11EC:           var_108 = var_E8.Height
  loc_15C1213:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15C1221:           Set var_10C = Me.GridSel
  loc_15C1227:           Call 0.Method_Proc_292_85_15C16800 (2, var_110, CVar(CDbl(&H4B)))
  loc_15C122F:           var_110.Top = var_108
  loc_15C124F:           Set var_8C = Me.GridSel
  loc_15C1255:           Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C1274:           Set var_10C = Me.Check1
  loc_15C127A:           Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C1282:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C129E:           Set var_8C = Me.GridSel
  loc_15C12A4:           Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C12C3:           Set var_10C = Me.Check1
  loc_15C12C9:           Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C12D1:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C12ED:           Set var_8C = Me.GridSel
  loc_15C12F3:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C1312:           Set var_10C = Me.GridSel
  loc_15C1318:           Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C1320:           var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15C133C:           Set var_10C = Me.GridSel
  loc_15C1342:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C134A:           var_108 = var_110.Height
  loc_15C135C:           Set var_8C = Me.GridSel
  loc_15C1362:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C137D:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15C138B:           Set var_114 = Me.GridSel
  loc_15C1391:           Call 0.Method_Proc_292_85_15C16800 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15C1399:           var_118.Top = var_108
  loc_15C13BD:           Set var_8C = Me.GridSel
  loc_15C13C3:           Call 0.Method_Proc_292_85_15C16800 (3, var_E8)
  loc_15C13E2:           Set var_10C = Me.Check1
  loc_15C13E8:           Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C13F0:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C140C:           Set var_8C = Me.GridSel
  loc_15C1412:           Call 0.Method_Proc_292_85_15C16800 (3, var_E8)
  loc_15C1431:           Set var_10C = Me.Check1
  loc_15C1437:           Call 0.Method_Proc_292_85_15C16800 (3, var_110)
  loc_15C143F:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C145B:           Set var_10C = Me.GridSel
  loc_15C1461:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C1469:           var_108 = var_110.Width
  loc_15C147B:           Set var_8C = Me.GridSel
  loc_15C1481:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C149C:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15C14AA:           Set var_114 = Me.GridSel
  loc_15C14B0:           Call 0.Method_Proc_292_85_15C16800 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15C14B8:           var_118.Left = var_108
  loc_15C14DC:           Set var_10C = Me.GridSel
  loc_15C14E2:           Call 0.Method_Proc_292_85_15C16800 (1, var_110)
  loc_15C14EA:           var_108 = var_110.Height
  loc_15C14FC:           Set var_8C = Me.GridSel
  loc_15C1502:           Call 0.Method_Proc_292_85_15C16800 (1, var_E8)
  loc_15C151D:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15C152B:           Set var_114 = Me.GridSel
  loc_15C1531:           Call 0.Method_Proc_292_85_15C16800 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15C1539:           var_118.Top = var_108
  loc_15C155D:           Set var_8C = Me.GridSel
  loc_15C1563:           Call 0.Method_Proc_292_85_15C16800 (4, var_E8)
  loc_15C1582:           Set var_10C = Me.Check1
  loc_15C1588:           Call 0.Method_Proc_292_85_15C16800 (4, var_110)
  loc_15C1590:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15C15AC:           Set var_8C = Me.GridSel
  loc_15C15B2:           Call 0.Method_Proc_292_85_15C16800 (4, var_E8)
  loc_15C15D1:           Set var_10C = Me.Check1
  loc_15C15D7:           Call 0.Method_Proc_292_85_15C16800 (4, var_110)
  loc_15C15DF:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15C15FB:           Set var_10C = Me.GridSel
  loc_15C1601:           Call 0.Method_Proc_292_85_15C16800 (2, var_110)
  loc_15C161B:           Set var_8C = Me.GridSel
  loc_15C1621:           Call 0.Method_Proc_292_85_15C16800 (2, var_E8)
  loc_15C1647:           Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15C1660:         End If
  loc_15C1660:       End If
  loc_15C1660:     End If
  loc_15C1660:   End If
  loc_15C1660: End If
  loc_15C1679: global_152 = CLng(Me.PictParameter.Width)
  loc_15C167F: Exit Sub
End Sub

Public Sub Proc_292_86_EB69BC
  'Data Table: 563038
  loc_EB6937: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6946:   Me.FrmList.Visible = False
  loc_EB694E: End If
  loc_EB696A: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EB697C:   Me.DGMemType.Visible = False
  loc_EB6984: End If
  loc_EB69A0: If (CBool(Me.DGTax.Visible) = &HFF) Then
  loc_EB69B2:   Me.DGTax.Visible = False
  loc_EB69BA: End If
  loc_EB69BA: Exit Sub
End Sub

Public Sub Proc_292_87_1282E00(arg_C, arg_10, arg_14) '1282E00
  'Data Table: 563038
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_1282866: On Error Goto loc_1282DEA
  loc_128286C: var_8C = vbNullString
  loc_1282877: CRefVarAry
  loc_128287F: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_12828A0:   If (arg_C(var_8E) = 0) Then
  loc_12828A3:     GoTo loc_1282C3B
  loc_12828A6:   End If
  loc_12828B7:   var_90 = CInt(arg_C(var_8E))
  loc_12828C1:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_12828D9:   Set var_DC = Me.GridSel
  loc_12828DF:   Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, 0)
  loc_1282907:   If (CStr(var_E0.TextMatrix)) = "¸") Then
  loc_1282913:     If (CInt(arg_14) = 0) Then
  loc_1282932:       Set var_DC = Me.GridSel
  loc_1282938:       Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1282940:       var_C8 = var_E0.TextMatrix)
  loc_1282971:       Set var_108 = Me.GridSel
  loc_1282977:       Call 0.Method_Proc_292_87_1282E000 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_12829AF:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_12829B4:       var_8C = CStr(var_1AC)
  loc_12829D9:     Else
  loc_12829E2:       If (CInt(arg_14) = 1) Then
  loc_1282A01:         Set var_DC = Me.GridSel
  loc_1282A07:         Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1282A0F:         var_C8 = var_E0.TextMatrix)
  loc_1282A47:         Set var_108 = Me.GridSel
  loc_1282A4D:         Call 0.Method_Proc_292_87_1282E000 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1282A9A:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1282A9F:         var_8C = CStr(var_1AC)
  loc_1282ACB:       End If
  loc_1282ACB:     End If
  loc_1282AEA:     Set var_DC = Me.GridSel
  loc_1282AF0:     Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1282B22:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_1282B41:       Set var_DC = Me.GridSel
  loc_1282B47:       Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1282B4F:       var_C8 = var_E0.TextMatrix)
  loc_1282B80:       Set var_108 = Me.GridSel
  loc_1282B86:       Call 0.Method_Proc_292_87_1282E000 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1282B9D:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1282BA4:       var_16C = CVar(CStr(var_C8)) 'String
  loc_1282BB6:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1282BBE:       var_1AC = (var_C8 + var_18C)
  loc_1282BC3:       var_94 = CStr(var_1AC)
  loc_1282BE5:     End If
  loc_1282BE9:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_1282C07:     Set var_DC = Me.GridSel
  loc_1282C0D:     Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, vbNullString, 0)
  loc_1282C15:     LateIdCallSt
  loc_1282C27:   Else
  loc_1282C2E:     var_B8 = 0
  loc_1282C37:     VarIndexSt
  loc_1282C3B:   End If
  loc_1282C3B:   ' Referenced from: 12828A3
  loc_1282C3E: Next var_98 'Integer
  loc_1282C4B: CRefVarAry
  loc_1282C53: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1282C8B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1282C92:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1282CB0:     Set var_DC = Me.GridSel
  loc_1282CB6:     Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, "¸", 0)
  loc_1282CBE:     LateIdCallSt
  loc_1282CCD:   End If
  loc_1282CD0: Next var_1C0 'Integer
  loc_1282CDD: If (var_8C = vbNullString) Then
  loc_1282CE0:   var_A8 = 0
  loc_1282CE9:   var_F0 = 1
  loc_1282CFC:   Set var_DC = Me.GridSel
  loc_1282D02:   Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0)
  loc_1282D0A:   var_C8 = var_E0.TextMatrix)
  loc_1282D32:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_1282D58:   Set var_DC = Me.GridSel
  loc_1282D5E:   Call 0.Method_Proc_292_87_1282E000 (arg_10, var_E0, var_C8)
  loc_1282D7D:   Proc_292_87_1282E00 = 0
  loc_1282D83: End If
  loc_1282D86: var_88 = var_8C
  loc_1282D8C: var_1C2 = arg_10
  loc_1282D95: If (var_1C2 = 1) Then
  loc_1282D9E:   global_72 = var_94
  loc_1282DA5: Else
  loc_1282DAB:   If (var_1C2 = 2) Then
  loc_1282DB4:     global_76 = var_94
  loc_1282DBB:   Else
  loc_1282DC1:     If (var_1C2 = 3) Then
  loc_1282DCA:       global_80 = var_94
  loc_1282DD1:     Else
  loc_1282DD7:       If (var_1C2 = 4) Then
  loc_1282DE0:         global_84 = var_94
  loc_1282DE4:       End If
  loc_1282DE4:     End If
  loc_1282DE4:   End If
  loc_1282DE4: End If
  loc_1282DE4: Proc_292_87_1282E00 = var_1C2
  loc_1282DEA: ' Referenced from: 1282866
  loc_1282DF2: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_1282DF7: Proc_292_87_1282E00 = var_F0
  loc_1282DFD: ThisVCallR4
End Sub

Public Sub Proc_292_88_F001EC
  'Data Table: 563038
  Dim var_CC As Variant
  loc_F00131: If (CLng(Me.FGrid.Row) = CLng(global_132)) Then
  loc_F00142:   Proc_303_0_FB9B68("	")
  loc_F0014A:   Exit Sub
  loc_F0014B: End If
  loc_F0018A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F00197:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F001BE:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F001C8:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F001D7:     Me.FGrid.Row = var_CC
  loc_F001DF:     Exit For
  loc_F001E2:   End If
  loc_F001E5: Next var_BC 'Integer
  loc_F001EA: ' Referenced from: F001DF
  loc_F001EA: Exit Sub
End Sub

Public Sub Proc_292_89_1211F10(arg_C, arg_10) '1211F10
  'Data Table: 563038
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1211A33: var_86 = arg_C
  loc_1211A3C: If (var_86 = 1) Then
  loc_1211A5B:   Me.Recordset15.CursorLocation = 3
  loc_1211A84:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1211A92:   CVarUnk
  loc_1211A97:   VerifyVarObj
  loc_1211AA3:   Set var_8C = Me.GridSel
  loc_1211AA9:   Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, New)
  loc_1211AB1:   LateIdStAd
  loc_1211AD3:   ReDim Preserve global_180(0 To 0)
  loc_1211AEA:   global_180(0) = 0
  loc_1211AEB: End If
  loc_1211AF1: If (var_86 = 2) Then
  loc_1211B10:   Me.Recordset15.CursorLocation = 3
  loc_1211B39:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1211B47:   CVarUnk
  loc_1211B4C:   VerifyVarObj
  loc_1211B58:   Set var_8C = Me.GridSel
  loc_1211B5E:   Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, New, 1, -1)
  loc_1211B66:   LateIdStAd
  loc_1211B88:   ReDim Preserve global_184(0 To 0)
  loc_1211B9F:   global_184(0) = 0
  loc_1211BA0: End If
  loc_1211BA6: If (var_86 = 3) Then
  loc_1211BC5:   Me.Recordset15.CursorLocation = 3
  loc_1211BEE:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1211BFC:   CVarUnk
  loc_1211C01:   VerifyVarObj
  loc_1211C0D:   Set var_8C = Me.GridSel
  loc_1211C13:   Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, New, 1, -1)
  loc_1211C1B:   LateIdStAd
  loc_1211C3D:   ReDim Preserve global_188(0 To 0)
  loc_1211C54:   global_188(0) = 0
  loc_1211C55: End If
  loc_1211C5B: If (var_86 = 4) Then
  loc_1211C7A:   Me.Recordset15.CursorLocation = 3
  loc_1211CA3:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1211CB1:   CVarUnk
  loc_1211CB6:   VerifyVarObj
  loc_1211CC2:   Set var_8C = Me.GridSel
  loc_1211CC8:   Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1211CD0:   LateIdStAd
  loc_1211CF2:   ReDim Preserve global_192(0 To 0)
  loc_1211D09:   global_192(0) = 0
  loc_1211D0A: End If
  loc_1211D18: Set var_8C = Me.GridSel
  loc_1211D1E: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, True, var_B0, var_B0)
  loc_1211D26: var_B0.Visible = var_B0
  loc_1211D41: Set var_8C = Me.GridSel
  loc_1211D47: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, False)
  loc_1211D4F: var_B0.Enabled = 1
  loc_1211D67: Set var_8C = Me.Check1
  loc_1211D6D: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, &HFF)
  loc_1211D75: var_B0.Visible = True
  loc_1211D94: Set var_8C = Me.GridSel
  loc_1211D9A: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0)
  loc_1211DA2: var_B0.Width = CVar(CDbl(4500))
  loc_1211DAE: var_9C = 0
  loc_1211DCA: Set var_8C = Me.GridSel
  loc_1211DD0: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, &H258)
  loc_1211DD8: LateIdCallSt
  loc_1211E03: Set var_8C = Me.GridSel
  loc_1211E09: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, 0, 2)
  loc_1211E11: LateIdCallSt
  loc_1211E3C: Set var_8C = Me.GridSel
  loc_1211E42: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, &HE10, 1)
  loc_1211E4A: LateIdCallSt
  loc_1211E68: Set var_8C = Me.Check1
  loc_1211E6E: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, CDbl(550), var_B0)
  loc_1211E76: var_B0.Width = var_B0
  loc_1211E82: var_9C = 0
  loc_1211E95: Set var_8C = Me.GridSel
  loc_1211E9B: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, var_9C)
  loc_1211EC1: Set var_E4 = Me.Check1
  loc_1211EC7: Call 0.Method_Proc_292_89_1211F100 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1211ECF: var_E8.Height = var_B0
  loc_1211EF2: Set var_8C = Me.Check1
  loc_1211EF8: Call 0.Method_Proc_292_89_1211F100 (var_86, var_B0, CInt(1))
  loc_1211F00: var_B0.Value = var_9C
  loc_1211F0C: Exit Sub
End Sub

Public Sub Proc_292_90_154EAE0
  'Data Table: 563038
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_144 As Variant
  Dim Me As Recordset15
  Dim var_160 As String
  Dim var_168 As String
  loc_154DAE2: var_98 = global_52
  loc_154DAED: If (var_98 = "MemVisitDetail") Then
  loc_154DAF4:   Set var_9C = Me.FGrid
  loc_154DAFA:   var_AC = CVar(CLng(0)) 'Long
  loc_154DAFF:   var_CC = 0
  loc_154DB08:   var_EC = "From Date"
  loc_154DB11:   LateIdCallSt
  loc_154DB1C:   var_AC = CVar(CLng(0)) 'Long
  loc_154DB21:   var_CC = &H10E
  loc_154DB2D:   LateIdCallSt
  loc_154DB38:   var_AC = CVar(CLng(1)) 'Long
  loc_154DB3D:   var_CC = 0
  loc_154DB46:   var_EC = "To Date"
  loc_154DB4F:   LateIdCallSt
  loc_154DB5A:   var_AC = CVar(CLng(1)) 'Long
  loc_154DB5F:   var_CC = &H10E
  loc_154DB6B:   LateIdCallSt
  loc_154DB76:   var_AC = CVar(CLng(2)) 'Long
  loc_154DB7B:   var_CC = 0
  loc_154DB84:   var_EC = "Detailed"
  loc_154DB8D:   LateIdCallSt
  loc_154DB98:   var_AC = CVar(CLng(2)) 'Long
  loc_154DB9D:   var_CC = &H10E
  loc_154DBA9:   LateIdCallSt
  loc_154DBB4:   var_AC = CVar(CLng(0)) 'Long
  loc_154DBB9:   var_CC = 1
  loc_154DBC7:   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154DBCE:   LateIdCallSt
  loc_154DBDC:   var_AC = CVar(CLng(1)) 'Long
  loc_154DBE1:   var_CC = 1
  loc_154DBF6:   LateIdCallSt
  loc_154DC04:   var_AC = CVar(CLng(2)) 'Long
  loc_154DC09:   var_CC = 1
  loc_154DC1B:   LateIdCallSt
  loc_154DC25:   Set var_9C = Nothing 
  loc_154DC30:   global_134 = CInt(0)
  loc_154DC49:   Me.FGrid.Row = CVar(CLng(global_134))
  loc_154DC5B:   var_AC = 3
  loc_154DC78:   var_88 = "Select '' As Opt,Name As Department,Code From Depart Where Logsite_Code='" & global_88 & "' and RestType in('Outlet','Room Service') Order By Name"
  loc_154DC86:   Call Proc_292_89_1211F10(1, var_88)
  loc_154DC9C:   var_8C = "Select '' as Opt,Name As Category,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88 & "' Order By Name"
  loc_154DCAA:   Call Proc_292_89_1211F10(2, var_8C)
  loc_154DCCE:   Call Proc_292_89_1211F10(3, "Select '' As Opt,Name As Facility,Code From MemFacilityMast where LOGSITE_CODE='" & global_88 & "' Order By Name")
  loc_154DCDE:   Set var_110 = Me.Check1
  loc_154DCE4:   Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, 0, var_AC, CInt(2), global_134, var_9C)
  loc_154DCEC:   var_11C.Visible = "No"
  loc_154DD07:   Set var_110 = Me.Check1
  loc_154DD0D:   Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, CInt(0), var_CC, var_AC)
  loc_154DD15:   var_11C.Value = var_9C
  loc_154DD2C:   Set var_110 = Me.Check1
  loc_154DD32:   Call 0.Method_Proc_292_90_154EAE00 (2, var_11C, 0)
  loc_154DD3A:   var_11C.Visible = CVar(CStr(MemVar_1F920EC))
  loc_154DD55:   Set var_110 = Me.Check1
  loc_154DD5B:   Call 0.Method_Proc_292_90_154EAE00 (2, var_11C, CInt(0))
  loc_154DD63:   var_11C.Value = var_CC
  loc_154DD7A:   Set var_110 = Me.Check1
  loc_154DD80:   Call 0.Method_Proc_292_90_154EAE00 (3, var_11C)
  loc_154DD88:   var_11C.Visible = False
  loc_154DDA3:   Set var_110 = Me.Check1
  loc_154DDA9:   Call 0.Method_Proc_292_90_154EAE00 (3, var_11C)
  loc_154DDB1:   var_11C.Value = CInt(0)
  loc_154DDC0: Else
  loc_154DDC8:   If (var_98 = "MemMalingLabels") Then
  loc_154DDCF:     Set var_120 = Me.FGrid
  loc_154DDD5:     var_AC = CVar(CLng(2)) 'Long
  loc_154DDDA:     var_CC = 0
  loc_154DDE3:     var_EC = "Address "
  loc_154DDEC:     LateIdCallSt
  loc_154DDF7:     var_AC = CVar(CLng(2)) 'Long
  loc_154DDFC:     var_CC = &H10E
  loc_154DE08:     LateIdCallSt
  loc_154DE13:     var_AC = CVar(CLng(3)) 'Long
  loc_154DE18:     var_CC = 0
  loc_154DE21:     var_EC = "Order By "
  loc_154DE2A:     LateIdCallSt
  loc_154DE35:     var_AC = CVar(CLng(3)) 'Long
  loc_154DE3A:     var_CC = &H10E
  loc_154DE46:     LateIdCallSt
  loc_154DE51:     var_AC = CVar(CLng(2)) 'Long
  loc_154DE56:     var_CC = 1
  loc_154DE5F:     var_EC = "Residential Address"
  loc_154DE68:     LateIdCallSt
  loc_154DE73:     var_AC = CVar(CLng(3)) 'Long
  loc_154DE8A:     LateIdCallSt
  loc_154DE94:     Set var_120 = Nothing 
  loc_154DE9F:     global_134 = CInt(2)
  loc_154DEB8:     Me.FGrid.Row = CVar(CLng(global_134))
  loc_154DECA:     var_AC = 1
  loc_154DEE0:     var_114 = "Select '' as Opt,Name As Category,Code As Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154DEF5:     Call Proc_292_89_1211F10(1, var_114 & "' Order By Name")
  loc_154DF05:     Set var_110 = Me.Check1
  loc_154DF0B:     Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, 0, var_AC, CInt(3), global_134, var_120)
  loc_154DF13:     var_11C.Visible = "ConPerson"
  loc_154DF2E:     Set var_110 = Me.Check1
  loc_154DF34:     Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, CInt(0), 1, var_AC)
  loc_154DF3C:     var_11C.Value = var_120
  loc_154DF4B:   Else
  loc_154DF53:     If (var_98 = "MemBillMissingReport") Then
  loc_154DF5A:       Set var_124 = Me.FGrid
  loc_154DF60:       var_AC = CVar(CLng(0)) 'Long
  loc_154DF65:       var_CC = 0
  loc_154DF6E:       var_EC = "For Month"
  loc_154DF77:       LateIdCallSt
  loc_154DF82:       var_AC = CVar(CLng(0)) 'Long
  loc_154DF87:       var_CC = &H10E
  loc_154DF93:       LateIdCallSt
  loc_154DF9E:       var_CC = CVar(CLng(0)) 'Long
  loc_154DFA3:       var_EC = 1
  loc_154DFD5:       var_144 = CVar(CStr(Format(MemVar_1F920EC, "MMM/yyyy"))) 'String
  loc_154DFDC:       LateIdCallSt
  loc_154DFEF:       Set var_124 = Nothing 
  loc_154E013:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_154E022:       global_132 = CInt(0)
  loc_154E02D:       global_136 = 0
  loc_154E034:     Else
  loc_154E03C:       If (var_98 = "MemSalesRegister") Then
  loc_154E043:         Set var_158 = Me.FGrid
  loc_154E049:         var_AC = CVar(CLng(0)) 'Long
  loc_154E04E:         var_CC = 0
  loc_154E057:         var_EC = "From Date"
  loc_154E060:         LateIdCallSt
  loc_154E06B:         var_AC = CVar(CLng(0)) 'Long
  loc_154E070:         var_CC = &H10E
  loc_154E07C:         LateIdCallSt
  loc_154E087:         var_AC = CVar(CLng(1)) 'Long
  loc_154E08C:         var_CC = 0
  loc_154E095:         var_EC = "To Date"
  loc_154E09E:         LateIdCallSt
  loc_154E0A9:         var_AC = CVar(CLng(1)) 'Long
  loc_154E0AE:         var_CC = &H10E
  loc_154E0BA:         LateIdCallSt
  loc_154E0C5:         var_AC = CVar(CLng(2)) 'Long
  loc_154E0CA:         var_CC = 0
  loc_154E0D3:         var_EC = "Detailed"
  loc_154E0DC:         LateIdCallSt
  loc_154E0E7:         var_AC = CVar(CLng(2)) 'Long
  loc_154E0EC:         var_CC = &H10E
  loc_154E0F8:         LateIdCallSt
  loc_154E103:         var_AC = CVar(CLng(0)) 'Long
  loc_154E108:         var_CC = 1
  loc_154E116:         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E11D:         LateIdCallSt
  loc_154E12B:         var_AC = CVar(CLng(1)) 'Long
  loc_154E130:         var_CC = 1
  loc_154E13E:         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E145:         LateIdCallSt
  loc_154E153:         var_AC = CVar(CLng(2)) 'Long
  loc_154E16A:         LateIdCallSt
  loc_154E17E:         Me.Command2.Visible = True
  loc_154E188:         Set var_158 = Nothing 
  loc_154E193:         global_134 = CInt(0)
  loc_154E1AC:         Me.FGrid.Row = CVar(CLng(global_134))
  loc_154E1BE:         var_AC = 1
  loc_154E1D4:         var_114 = "Select '' as Opt,Name As Category,Code As Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154E1E9:         Call Proc_292_89_1211F10(1, var_114 & "' Order By Name")
  loc_154E1F9:         Set var_110 = Me.Check1
  loc_154E1FF:         Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, 0, var_AC, CInt(2), global_134, var_158)
  loc_154E207:         var_11C.Visible = "No"
  loc_154E222:         Set var_110 = Me.Check1
  loc_154E228:         Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, CInt(0), 1, var_AC)
  loc_154E230:         var_11C.Value = var_158
  loc_154E23F:       Else
  loc_154E247:         If (var_98 = "MemTaxReport") Then
  loc_154E24E:           Set var_15C = Me.FGrid
  loc_154E254:           var_AC = CVar(CLng(0)) 'Long
  loc_154E259:           var_CC = 0
  loc_154E262:           var_EC = "From Date"
  loc_154E26B:           LateIdCallSt
  loc_154E276:           var_AC = CVar(CLng(0)) 'Long
  loc_154E27B:           var_CC = &H10E
  loc_154E287:           LateIdCallSt
  loc_154E292:           var_AC = CVar(CLng(1)) 'Long
  loc_154E297:           var_CC = 0
  loc_154E2A0:           var_EC = "To Date"
  loc_154E2A9:           LateIdCallSt
  loc_154E2B4:           var_AC = CVar(CLng(1)) 'Long
  loc_154E2B9:           var_CC = &H10E
  loc_154E2C5:           LateIdCallSt
  loc_154E2D0:           var_AC = CVar(CLng(2)) 'Long
  loc_154E2D5:           var_CC = 0
  loc_154E2DE:           var_EC = "Tax Detail"
  loc_154E2E7:           LateIdCallSt
  loc_154E2F2:           var_AC = CVar(CLng(2)) 'Long
  loc_154E2F7:           var_CC = &H10E
  loc_154E303:           LateIdCallSt
  loc_154E30E:           var_AC = CVar(CLng(0)) 'Long
  loc_154E313:           var_CC = 1
  loc_154E321:           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E328:           LateIdCallSt
  loc_154E336:           var_AC = CVar(CLng(1)) 'Long
  loc_154E33B:           var_CC = 1
  loc_154E349:           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E350:           LateIdCallSt
  loc_154E35E:           var_AC = CVar(CLng(2)) 'Long
  loc_154E375:           LateIdCallSt
  loc_154E39F:           Me.FGrid.CursorLocation = 3
  loc_154E3C2:           var_114 = "Select Distinct Membill2.TaxCode As Code, RevMast.Name From ((MemBill1 Left Join MemBill2 On MemBill1.FacilityCode=MemBill2.FacilityCode) Left Join RevMast On RevMast.Code=MemBill2.TaxCode) WHERE IsNull(Membill2.TaxCode,'')<>'' And (RevMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_154E3D3:           Me.Open CVar(var_114 & "' or RevMast.LOGSITE_CODE='HO') Order by RevMast.Name"), CVar(MemVar_1F921DC), 2
  loc_154E3E7:           CVarUnk
  loc_154E3EC:           VerifyVarObj
  loc_154E3F2:           Set var_110 = Me.DGTax
  loc_154E3F8:           LateIdStAd
  loc_154E40D:           global_134 = CInt(0)
  loc_154E426:           Me.FGrid.Row = CVar(CLng(global_134))
  loc_154E44E:           var_114 = "SELECT '' as Opt,Description as Charges,'R'+Code As Code FROM MembershipRevMast WHERE LOGSITE_CODE='" & global_88
  loc_154E455:           var_160 = var_114 & "' Union All Select '' As Opt,Name As Charges,'F'+Code As Code From MemFacilityMast where LOGSITE_CODE='"
  loc_154E466:           var_168 = var_160 & global_88 & "' Union All Select '' As Opt,Name+' - POS' As Charges,'O'+Code As Code From Depart where OutletYN='Y' And RestType IN ('Room Service','Outlet') And LOGSITE_CODE='"
  loc_154E48F:           Call Proc_292_89_1211F10(1, var_168 & global_88 & "' ORDER BY Charges")
  loc_154E49E:           var_114 = "Select '' as Opt,Name As Category,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154E4B3:           Call Proc_292_89_1211F10(2, var_114 & "' Order By Name")
  loc_154E4C9:           Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, 0, 2, CInt(2), global_134, Me.Check1)
  loc_154E4D1:           var_11C.Visible = New
  loc_154E4EC:           Set var_110 = Me.Check1
  loc_154E4F2:           Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, CInt(0), 3, -1)
  loc_154E4FA:           var_11C.Value = Nothing
  loc_154E511:           Set var_110 = Me.Check1
  loc_154E517:           Call 0.Method_Proc_292_90_154EAE00 (2, var_11C, 0)
  loc_154E51F:           var_11C.Visible = vbNullString
  loc_154E53A:           Set var_110 = Me.Check1
  loc_154E540:           Call 0.Method_Proc_292_90_154EAE00 (2, var_11C, CInt(0))
  loc_154E548:           var_11C.Value = 1
  loc_154E557:         Else
  loc_154E55F:           If (var_98 = "PaymentDueLetterReport") Then
  loc_154E566:             Set var_170 = Me.FGrid
  loc_154E56C:             var_AC = CVar(CLng(0)) 'Long
  loc_154E571:             var_CC = 0
  loc_154E57A:             var_EC = "From Date"
  loc_154E583:             LateIdCallSt
  loc_154E58E:             var_AC = CVar(CLng(0)) 'Long
  loc_154E593:             var_CC = &H10E
  loc_154E59F:             LateIdCallSt
  loc_154E5AA:             var_AC = CVar(CLng(1)) 'Long
  loc_154E5AF:             var_CC = 0
  loc_154E5B8:             var_EC = "To Date "
  loc_154E5C1:             LateIdCallSt
  loc_154E5CC:             var_AC = CVar(CLng(1)) 'Long
  loc_154E5D1:             var_CC = &H10E
  loc_154E5DD:             LateIdCallSt
  loc_154E5E8:             var_AC = CVar(CLng(2)) 'Long
  loc_154E5ED:             var_CC = 0
  loc_154E5F6:             var_EC = "Letter Type "
  loc_154E5FF:             LateIdCallSt
  loc_154E60A:             var_AC = CVar(CLng(2)) 'Long
  loc_154E60F:             var_CC = &H10E
  loc_154E61B:             LateIdCallSt
  loc_154E626:             var_AC = CVar(CLng(0)) 'Long
  loc_154E62B:             var_CC = 1
  loc_154E639:             var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E640:             LateIdCallSt
  loc_154E64E:             var_AC = CVar(CLng(1)) 'Long
  loc_154E653:             var_CC = 1
  loc_154E661:             var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_154E668:             LateIdCallSt
  loc_154E676:             var_AC = CVar(CLng(2)) 'Long
  loc_154E67B:             var_CC = 1
  loc_154E684:             var_EC = "Article_26(a)"
  loc_154E68D:             LateIdCallSt
  loc_154E697:             Set var_170 = Nothing 
  loc_154E6BB:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_154E6CA:             global_132 = CInt(2)
  loc_154E6D5:             global_136 = 0
  loc_154E6DC:           Else
  loc_154E6E4:             If (var_98 = "MemBirthAnnvDtls") Then
  loc_154E6EB:               Set var_174 = Me.FGrid
  loc_154E6F1:               var_AC = CVar(CLng(0)) 'Long
  loc_154E6F6:               var_CC = 0
  loc_154E6FF:               var_EC = "From Date"
  loc_154E708:               LateIdCallSt
  loc_154E713:               var_AC = CVar(CLng(0)) 'Long
  loc_154E718:               var_CC = &H10E
  loc_154E724:               LateIdCallSt
  loc_154E72F:               var_AC = CVar(CLng(1)) 'Long
  loc_154E734:               var_CC = 0
  loc_154E73D:               var_EC = "To Date "
  loc_154E746:               LateIdCallSt
  loc_154E751:               var_AC = CVar(CLng(1)) 'Long
  loc_154E756:               var_CC = &H10E
  loc_154E762:               LateIdCallSt
  loc_154E76D:               var_AC = CVar(CLng(2)) 'Long
  loc_154E772:               var_CC = 0
  loc_154E77B:               var_EC = "List Type "
  loc_154E784:               LateIdCallSt
  loc_154E78F:               var_AC = CVar(CLng(2)) 'Long
  loc_154E794:               var_CC = &H10E
  loc_154E7A0:               LateIdCallSt
  loc_154E7AB:               var_CC = CVar(CLng(0)) 'Long
  loc_154E7B0:               var_EC = 1
  loc_154E7E2:               var_144 = CVar(CStr(Format(MemVar_1F920F4, "dd/MMM"))) 'String
  loc_154E7E9:               LateIdCallSt
  loc_154E7FD:               var_CC = CVar(CLng(1)) 'Long
  loc_154E802:               var_EC = 1
  loc_154E83B:               LateIdCallSt
  loc_154E84F:               var_AC = CVar(CLng(2)) 'Long
  loc_154E854:               var_CC = 1
  loc_154E85D:               var_EC = "Report"
  loc_154E866:               LateIdCallSt
  loc_154E870:               Set var_174 = Nothing 
  loc_154E87B:               global_134 = CInt(0)
  loc_154E894:               Me.FGrid.Row = CVar(CLng(global_134))
  loc_154E8BC:               var_114 = "Select '' as Opt,Name As Category,Code,Shortname From MemCatMast Where (Corporate='N') AND Logsite_Code='" & global_88
  loc_154E8D1:               Call Proc_292_89_1211F10(1, var_114 & "' Order By Name")
  loc_154E8DF:               var_CC = 0
  loc_154E8F1:               Set var_110 = Me.GridSel
  loc_154E8F7:               Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, var_CC, 3, 2, CInt(2), global_134)
  loc_154E8FF:               LateIdCallSt
  loc_154E91C:               Set var_110 = Me.GridSel
  loc_154E922:               Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, var_176, 1, var_11C, var_174)
  loc_154E92A:               var_10C = var_11C.Rows
  loc_154E944:               For var_17A = var_CC To CInt((CLng(var_10C) - 1)):             var_EC = var_17A 'Integer
  loc_154E94E:                 var_AC = CVar(CLng(var_176)) 'Long
  loc_154E95C:                 Set var_110 = Me.GridSel
  loc_154E962:                 Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, var_AC, var_CC)
  loc_154E96A:                 var_11C.Row = var_AC
  loc_154E988:                 Set var_110 = Me.GridSel
  loc_154E98E:                 Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, 0)
  loc_154E996:                 var_11C.Col = var_174
  loc_154E9B1:                 Set var_110 = Me.GridSel
  loc_154E9B7:                 Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, "WINGDINGS")
  loc_154E9BF:                 var_11C.CellFontName = CVar(CStr(Format(MemVar_1F920EC, "dd/MMM")))
  loc_154E9DC:                 Set var_110 = Me.GridSel
  loc_154E9E2:                 Call 0.Method_Proc_292_90_154EAE00 (1, var_11C)
  loc_154E9EA:                 var_11C.CellFontSize = CVar(CDbl(&HE))
  loc_154E9FA:                 var_AC = CVar(CLng(var_176)) 'Long
  loc_154E9FF:                 var_CC = 0
  loc_154EA17:                 Set var_110 = Me.GridSel
  loc_154EA1D:                 Call 0.Method_Proc_292_90_154EAE00 (1, var_11C, "¸")
  loc_154EA25:                 LateIdCallSt
  loc_154EA37:               Next var_17A 'Integer
  loc_154EA3F:               Call Proc_292_99_1157908(var_10C)
  loc_154EA52:               Set var_110 = Me.Check1
  loc_154EA58:               Call 0.Method_Proc_292_90_154EAE00 (1, var_11C)
  loc_154EA60:               var_11C.Visible = False
  loc_154EA77:               Set var_110 = Me.Check1
  loc_154EA7D:               Call 0.Method_Proc_292_90_154EAE00 (2, var_11C)
  loc_154EA85:               var_11C.Visible = False
  loc_154EA9E:               Set var_110 = Me.GridSel
  loc_154EAA4:               Call 0.Method_Proc_292_90_154EAE00 (1, var_11C)
  loc_154EAAC:               var_11C.Enabled = True
  loc_154EAC5:               Set var_110 = Me.GridSel
  loc_154EACB:               Call 0.Method_Proc_292_90_154EAE00 (2, var_11C)
  loc_154EAD3:               var_11C.Enabled = True
  loc_154EADF:             End If
  loc_154EADF:           End If
  loc_154EADF:         End If
  loc_154EADF:       End If
  loc_154EADF:     End If
  loc_154EADF:   End If
  loc_154EADF: End If
  loc_154EADF: Exit Sub
End Sub

Public Sub Proc_292_91_EF85F4(arg_C, arg_10) 'EF85F4
  'Data Table: 563038
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_EF852C: var_98 = CVar(CLng(arg_C)) 'Long
  loc_EF8531: var_B8 = 1
  loc_EF8560: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EF8583:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_EF8597:   Set var_CC = Me.FGrid
  loc_EF85BB:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_EF85D6:   Me.FGrid.Col = 1
  loc_EF85E0:   var_86 = 0
  loc_EF85E6: Else
  loc_EF85E8:   var_86 = &HFF
  loc_EF85EB: End If
  loc_EF85EB: Proc_292_91_EF85F4 = var_86
End Sub

Public Sub Proc_292_92_E1B7DC
  'Data Table: 563038
  loc_E1B7C8: On Error Goto loc_E1B7CC
  loc_E1B7CB: Exit Sub
  loc_E1B7CC: ' Referenced from: E1B7C8
  loc_E1B7D4: Proc_6_60_E62BC4(0)
  loc_E1B7D9: Exit Sub
End Sub

Public Sub Proc_292_93_E235C4
  'Data Table: 563038
  loc_E235B6: Me.PictParameter.Width = CDbl(global_152)
  loc_E235BE: Call Form_Resize()
  loc_E235C3: Exit Sub
End Sub

Public Sub Proc_292_94_FBB4D4(arg_C) 'FBB4D4
  'Data Table: 563038
  Dim var_8C As Recordset15
  loc_FBB321: Set var_8C = arg_C 
  loc_FBB349: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FBB375: var_8C.Fields.Append "Date", &HC8, &H19
  loc_FBB3A1: var_8C.Fields.Append "Code", &HC8, &H19
  loc_FBB3CD: var_8C.Fields.Append "Facility", &HC8, &H4B
  loc_FBB3F9: var_8C.Fields.Append "Total", &HC8, &HE
  loc_FBB425: var_8C.Fields.Append "User", &HC8, &HF
  loc_FBB451: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FBB47D: var_8C.Fields.Append "CatCode", &HC8, 6
  loc_FBB48D: var_8C.CursorType = 3
  loc_FBB49A: var_8C.LockType = 3
  loc_FBB4B9: var_8C.Open var_A0, var_B0, -1
  loc_FBB4C0: Set var_8C = Nothing 
  loc_FBB4C7: Set var_88 = arg_C 
  loc_FBB4CB: Proc_292_94_FBB4D4 = -1
End Sub

Public Sub Proc_292_95_10915A0(arg_C) '10915A0
  'Data Table: 563038
  Dim var_8C As Recordset15
  loc_10912E5: Set var_8C = arg_C 
  loc_109130D: var_8C.Fields.Append "mLine", &HC8, &H32
  loc_1091339: var_8C.Fields.Append "Name", &HC8, &H32
  loc_1091365: var_8C.Fields.Append "ConPrefix", &HC8, &H32
  loc_1091391: var_8C.Fields.Append "ConPerSon", &HC8, &H32
  loc_10913BD: var_8C.Fields.Append "CardNo", &HC8, &H32
  loc_10913E9: var_8C.Fields.Append "MemType", &HC8, &H32
  loc_1091415: var_8C.Fields.Append "Add1", &HC8, &H32
  loc_1091441: var_8C.Fields.Append "Add2", &HC8, &H32
  loc_109146D: var_8C.Fields.Append "Add3", &HC8, &H32
  loc_1091499: var_8C.Fields.Append "PinCode", &HC8, &H32
  loc_10914C5: var_8C.Fields.Append "CityName", &HC8, &H32
  loc_10914F1: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_109151D: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_1091549: var_8C.Fields.Append "mType", &HC8, &H32
  loc_1091559: var_8C.CursorType = 3
  loc_1091566: var_8C.LockType = 3
  loc_1091585: var_8C.Open var_A0, var_B0, -1
  loc_109158C: Set var_8C = Nothing 
  loc_1091593: Set var_88 = arg_C 
  loc_1091597: Proc_292_95_10915A0 = -1
End Sub

Public Sub Proc_292_96_116315C(arg_C) '116315C
  'Data Table: 563038
  Dim var_8C As Recordset15
  loc_1162D99: Set var_8C = arg_C 
  loc_1162DC1: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1162DED: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_1162E19: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_1162E45: var_8C.Fields.Append "CardNo", &HC8, &H32
  loc_1162E71: var_8C.Fields.Append "CompanyType", &HC8, &H32
  loc_1162E9D: var_8C.Fields.Append "Birthday", &HC8, &HF
  loc_1162EC9: var_8C.Fields.Append "AnniversaryDay", &HC8, &HF
  loc_1162EF5: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_1162F21: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_1162F4D: var_8C.Fields.Append "Address", &HC8, &HC8
  loc_1162F79: var_8C.Fields.Append "City", &HC8, &H32
  loc_1162FA5: var_8C.Fields.Append "Country", &HC8, &H32
  loc_1162FD1: var_8C.Fields.Append "State", &HC8, &H32
  loc_1162FFD: var_8C.Fields.Append "PinCode", &HC8, &H32
  loc_1163029: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_1163055: var_8C.Fields.Append "Father", &HC8, &H32
  loc_1163081: var_8C.Fields.Append "Mother", &HC8, &H32
  loc_11630AD: var_8C.Fields.Append "CurrBal", &HC8, &H32
  loc_11630D9: var_8C.Fields.Append "CurrBalType", &HC8, &H32
  loc_1163105: var_8C.Fields.Append "mType", &HC8, 6
  loc_1163115: var_8C.CursorType = 3
  loc_1163122: var_8C.LockType = 3
  loc_1163141: var_8C.Open var_A0, var_B0, -1
  loc_1163148: Set var_8C = Nothing 
  loc_116314F: Set var_88 = arg_C 
  loc_1163153: Proc_292_96_116315C = -1
  loc_116315A: Loop Until (&H20 = -1) 'do at: 115EE5E
End Sub

Public Sub Proc_292_97_10FE234(arg_C) '10FE234
  'Data Table: 563038
  Dim var_8C As Recordset15
  loc_10FDEF5: Set var_8C = arg_C 
  loc_10FDF1D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FDF49: var_8C.Fields.Append "Sno", &HC8, 4
  loc_10FDF75: var_8C.Fields.Append "MemCat", &HC8, &H4B
  loc_10FDFA1: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10FDFCD: var_8C.Fields.Append "Chrg1", &HC8, &HC
  loc_10FDFF9: var_8C.Fields.Append "Chrg2", &HC8, &HC
  loc_10FE025: var_8C.Fields.Append "Chrg3", &HC8, &HC
  loc_10FE051: var_8C.Fields.Append "Chrg4", &HC8, &HC
  loc_10FE07D: var_8C.Fields.Append "Chrg5", &HC8, &HC
  loc_10FE0A9: var_8C.Fields.Append "Chrg6", &HC8, &HC
  loc_10FE0D5: var_8C.Fields.Append "Chrg7", &HC8, &HC
  loc_10FE101: var_8C.Fields.Append "Chrg8", &HC8, &HC
  loc_10FE12D: var_8C.Fields.Append "Chrg9", &HC8, &HC
  loc_10FE159: var_8C.Fields.Append "ChrgSTWLF", &HC8, &HC
  loc_10FE185: var_8C.Fields.Append "ChrgOther", &HC8, &HC
  loc_10FE1B1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FE1DD: var_8C.Fields.Append "MemCatCode", &HC8, 6
  loc_10FE1ED: var_8C.CursorType = 3
  loc_10FE1FA: var_8C.LockType = 3
  loc_10FE219: var_8C.Open var_A0, var_B0, -1
  loc_10FE220: Set var_8C = Nothing 
  loc_10FE227: Set var_88 = arg_C 
  loc_10FE22B: Proc_292_97_10FE234 = -1
  loc_10FE231: Set var_AC = -1
End Sub

Public Sub Proc_292_98_119C884(arg_C) '119C884
  'Data Table: 563038
  Dim var_8C As Recordset15
  loc_119C469: Set var_8C = arg_C 
  loc_119C491: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_119C4BD: var_8C.Fields.Append "Date", &HC8, &H14
  loc_119C4E9: var_8C.Fields.Append "Date1", &HC8, &H14
  loc_119C515: var_8C.Fields.Append "BillNo", &HC8, 9
  loc_119C541: var_8C.Fields.Append "CardNo", &HC8, &H19
  loc_119C56D: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_119C599: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_119C5C5: var_8C.Fields.Append "Facility", &HC8, &H4B
  loc_119C5F1: var_8C.Fields.Append "Total", &HC8, &HE
  loc_119C61D: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_119C649: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_119C675: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_119C6A1: var_8C.Fields.Append "Tax4", &HC8, &HE
  loc_119C6CD: var_8C.Fields.Append "Tax5", &HC8, &HE
  loc_119C6F9: var_8C.Fields.Append "Tax6", &HC8, &HE
  loc_119C725: var_8C.Fields.Append "Tax7", &HC8, &HE
  loc_119C751: var_8C.Fields.Append "Tax8", &HC8, &HE
  loc_119C77D: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_119C7A9: var_8C.Fields.Append "NetTotal", &HC8, &HE
  loc_119C7D5: var_8C.Fields.Append "OpBal", &HC8, &HE
  loc_119C801: var_8C.Fields.Append "Mark", &HC8, 1
  loc_119C82D: var_8C.Fields.Append "CatCode", &HC8, 6
  loc_119C83D: var_8C.CursorType = 3
  loc_119C84A: var_8C.LockType = 3
  loc_119C869: var_8C.Open var_A0, var_B0, -1
  loc_119C870: Set var_8C = Nothing 
  loc_119C877: Set var_88 = arg_C 
  loc_119C87B: Proc_292_98_119C884 = -1
End Sub

Public Sub Proc_292_99_1157908
  'Data Table: 563038
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Long
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_A8 As MSHFlexGrid
  Dim var_170 As MSHFlexGrid
  loc_1157588: Set var_A8 = Me.GridSel
  loc_115758E: Call 0.Method_Proc_292_99_11579080 (1, var_AC)
  loc_11575B0: For var_C0 = 1 To CInt((CLng(var_AC.Rows) - 1)): var_9A = var_C0 'Integer
  loc_11575BA:   var_D0 = CVar(CLng(var_9A)) 'Long
  loc_11575D1:   Set var_A8 = Me.GridSel
  loc_11575D7:   Call 0.Method_Proc_292_99_11579080 (1, var_AC, 0)
  loc_11575FF:   If (CStr(var_AC.TextMatrix)) = "¸") Then
  loc_1157627:     Set var_A8 = Me.GridSel
  loc_115762D:     Call 0.Method_Proc_292_99_11579080 (1, var_AC, 2, CVar(CLng(var_9A)))
  loc_1157644:     var_10C = var_A0 & "'" & CStr(var_AC.TextMatrix))
  loc_115764B:     var_A0 = var_10C & "', "
  loc_1157661:   End If
  loc_1157664: Next var_C0 'Integer
  loc_1157671: If (var_A0 <> vbNullString) Then
  loc_115767E:   var_BC = CVar((Len(var_A0) - 2)) 'Long
  loc_11576B3:   var_A0 = " and S.CompanyType in (" & CStr(Mid(var_A0, 1, var_AC.TextMatrix))) & ")"
  loc_11576BC: Else
  loc_11576BF:   var_A0 = " and S.CompanyType in ('')"
  loc_11576C2: End If
  loc_11576C5: var_D0 = CVar(CLng(0)) 'Long
  loc_11576CA: var_F0 = 1
  loc_11576FE: Set var_AC = Me.FGrid
  loc_1157723: Call Proc_292_100_113E1F4(CStr(Me.FGrid.TextMatrix)), CStr(var_AC.TextMatrix)), var_10C, var_AC.TextMatrix), 1)
  loc_115774D: var_104 = "Select '' as Opt, Name, Subcode, CardNo, mType from ( Select M.Subcode as Subcode, S.Name as Name, '1' as mType, S.CardNo as CardNo from MemberFamily M Inner Join SubGroup S On M.Subcode=S.SubCode where M.Logsite_Code='" & global_88
  loc_1157754: var_108 = var_104 & "' and S.ActiveYN='1' and substring(convert(char,M.DOB,106),1,LEN(convert(char,M.DOB,106))-5) in ( "
  loc_1157788: Call Proc_292_89_1211F10(2, CStr(var_AC.TextMatrix)) & var_10C & " ) " & var_A0 & " ) tab Order By tab.CardNo, Tab.mType, tab.Name")
  loc_1157796: Set var_A8 = Me.GridSel
  loc_115779C: Call 0.Method_Proc_292_99_11579080 (1, var_AC, CVar(CLng(1)))
  loc_11577A4: var_BC = var_AC.Height
  loc_11577BB: Set var_16C = Me.GridSel
  loc_11577C1: Call 0.Method_Proc_292_99_11579080 (2, var_170, CVar(CDbl(var_BC)))
  loc_11577C9: var_170.Height = var_BC
  loc_11577E5: var_F0 = 0
  loc_11577F7: Set var_A8 = Me.GridSel
  loc_11577FD: Call 0.Method_Proc_292_99_11579080 (2, var_AC, var_F0)
  loc_1157805: LateIdCallSt
  loc_115781F: Set var_A8 = Me.Check1
  loc_1157825: Call 0.Method_Proc_292_99_11579080 (1, var_AC, 0, var_AC)
  loc_115782D: var_AC.Visible = 4
  loc_1157844: Set var_A8 = Me.Check1
  loc_115784A: Call 0.Method_Proc_292_99_11579080 (2, var_AC, 0)
  loc_1157852: var_AC.Visible = var_F0
  loc_115786B: Set var_A8 = Me.GridSel
  loc_1157871: Call 0.Method_Proc_292_99_11579080 (1, var_AC)
  loc_1157879: var_AC.Enabled = True
  loc_1157892: Set var_A8 = Me.GridSel
  loc_1157898: Call 0.Method_Proc_292_99_11579080 (2, var_AC)
  loc_11578A0: var_AC.Enabled = True
  loc_11578B5: Set var_A8 = Me.GridSel
  loc_11578BB: Call 0.Method_Proc_292_99_11579080 (2, var_AC)
  loc_11578D2: var_D0 = CVar((CLng(var_AC.Rows) - 1)) 'Long
  loc_11578E0: Set var_16C = Me.GridSel
  loc_11578E6: Call 0.Method_Proc_292_99_11579080 (2, var_170)
  loc_11578EE: var_170.RowSel = True
  loc_1157901: Proc_292_99_1157908 = True
End Sub

Public Sub Proc_292_100_113E1F4(arg_C, arg_10) '113E1F4
  'Data Table: 563038
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_A6 As Integer
  Dim var_188 As String
  Dim var_228 As Variant
  loc_113DED0: var_90 = CStr(Year(CVar(Proc_6_15_EF2C1C(CVar(arg_C & "/")))))
  loc_113DF00: var_94 = CStr(Year(CVar(Proc_6_15_EF2C1C(CVar(arg_10 & "/")))))
  loc_113DF19: If (CDate(var_90) > CDate(var_94)) Then
  loc_113DF1F:   var_98 = var_90
  loc_113DF6A:   var_E8 = (Year(CVar(Proc_6_15_EF2C1C(CVar(CStr(Me.FGrid.TextMatrix)) & "/"), 1))) + 1)
  loc_113DF73:   var_9C = CStr(CVar(CLng(1)) & Year(CVar(Proc_6_15_EF2C1C(CVar(arg_10 & "/")))))
  loc_113DF8E: Else
  loc_113DF91:   var_98 = var_90
  loc_113DF97:   var_9C = var_94
  loc_113DF9A: End If
  loc_113DFC9: var_E8 = (DateDiff("m", CDate(CDate(var_98)), CDate(CDate(var_9C)), 1, 1) + 1)
  loc_113DFE7: For var_164 = 0 To (CInt(Year(CVar(Proc_6_15_EF2C1C(CVar(arg_10 & "/"))))) - 1): var_9E = var_164 'Integer
  loc_113E00E:   For var_168 = CInt(Day(CDate(CDate(var_98)))) To &H1F: var_A0 = var_168 'Integer
  loc_113E042:     var_A6 = CInt(Month(CDate(CDate(DateAdd("m", CDbl(var_9E), CDate(CDate(var_98)))))))
  loc_113E052:     var_188 = "01/"
  loc_113E0C1:     var_D8 = CVar(var_A4 & "'") 'String
  loc_113E10F:     var_228 = 1 & Format(var_A0, "00") & " " & Left(CVar(MonthName(CLng(Month(1 & Format(var_A6, "00") & "/" & Year(MemVar_1F920EC))), 0)), 3) 
  loc_113E11D:     var_A4 = CStr(var_228 & "', ")
  loc_113E195:     If CBool((CVar(var_A0) = Day(CDate(CDate(var_9C)))) And (CVar(var_A6) = Month(CDate(CDate(var_9C))))) Then
  loc_113E198:       GoTo loc_113E1A3
  loc_113E19B:     End If
  loc_113E19E:   Next var_168 'Integer
  loc_113E1A3:   ' Referenced from: 113E198
  loc_113E1A6: Next var_164 'Integer
  loc_113E1B3: If (var_A4 <> vbNullString) Then
  loc_113E1C0:   var_B8 = CVar((Len(var_A4) - 2)) 'Long
  loc_113E1DD:   var_A4 = CStr(Mid(var_A4, 1, CDate(CDate(var_9C))))
  loc_113E1E7: End If
  loc_113E1EA: var_88 = var_A4
  loc_113E1ED: Proc_292_100_113E1F4 = 
End Sub
