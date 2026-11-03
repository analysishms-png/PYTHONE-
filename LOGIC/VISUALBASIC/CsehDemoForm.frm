VERSION 5.00
Begin VB.Form CsehDemoForm 
   Caption         =   "CSEH Error Handling Demo"
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   6615
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdErrRaiseTest 
      Caption         =   "Test ErrRaise (utility layer)"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1560
      Width           =   2895
   End
   Begin VB.CommandButton cmdDivideByZero 
      Caption         =   "Test Divide By Zero (MsgBox style)"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   2895
   End
   Begin VB.Label lblInfo 
      Caption         =   "Demonstrates CSEH: MsgBox (top-level UI) and CSEH: ErrRaise (utility layer) error handling."
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   5895
   End
End
Attribute VB_Name = "CsehDemoForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'================================================================================
'    Component  : CsehDemoForm
'    Project    : HMS
'    Description: Demo form showing the CSEH error handling pattern
'                 (vb6-error-handling skill) with both MsgBox and ErrRaise
'                 styles. Test-only form - remove before production build.
'================================================================================

'CSEH: MsgBox
Private Sub cmdDivideByZero_Click()

        '<EhHeader>
        On Error GoTo cmdDivideByZero_Click_Err

        EnterMethod "CsehDemoForm", "cmdDivideByZero_Click"
        '</EhHeader>

100     Dim lngResult As Long

105     lngResult = DivideNumbers(100, 0)

        '<EhFooter>

cmdDivideByZero_Click_Exit:
        ExitMethod "CsehDemoForm", "cmdDivideByZero_Click"
        Exit Sub

cmdDivideByZero_Click_Err:
        Dim scmdDivideByZero_Click_Err As String

110     scmdDivideByZero_Click_Err = Err.Description & vbCrLf & _
                                     "in HMS.CsehDemoForm.cmdDivideByZero_Click at line " & Erl

115     MsgBox scmdDivideByZero_Click_Err, vbCritical, "Error"

        GoTo cmdDivideByZero_Click_Exit

    '</EhFooter>
End Sub

'CSEH: MsgBox
Private Sub cmdErrRaiseTest_Click()

        '<EhHeader>
        On Error GoTo cmdErrRaiseTest_Click_Err

        EnterMethod "CsehDemoForm", "cmdErrRaiseTest_Click"
        '</EhHeader>

100     Dim lngResult As Long

105     lngResult = DivideNumbers(100, 5)

110     MsgBox "100 / 5 = " & lngResult, vbInformation, "Success"

        '<EhFooter>

cmdErrRaiseTest_Click_Exit:
        ExitMethod "CsehDemoForm", "cmdErrRaiseTest_Click"
        Exit Sub

cmdErrRaiseTest_Click_Err:
        Dim scmdErrRaiseTest_Click_Err As String

115     scmdErrRaiseTest_Click_Err = Err.Description & vbCrLf & _
                                     "in HMS.CsehDemoForm.cmdErrRaiseTest_Click at line " & Erl

120     MsgBox scmdErrRaiseTest_Click_Err, vbCritical, "Error"

        GoTo cmdErrRaiseTest_Click_Exit

    '</EhFooter>
End Sub

'CSEH: ErrRaise
Public Function DivideNumbers(ByVal lngDividend As Long, ByVal lngDivisor As Long) As Long

        '<EhHeader>
        On Error GoTo DivideNumbers_Err

        EnterMethod "CsehDemoForm", "DivideNumbers"
        '</EhHeader>

100     If lngDivisor = 0 Then
            ' Error originated here - vbObjectError offset reserved for this procedure
105         Err.Raise vbObjectError + 101, "HMS.CsehDemoForm.DivideNumbers", "Division by zero is not allowed"
110     End If

115     DivideNumbers = lngDividend \ lngDivisor

    '<EhFooter>

DivideNumbers_Exit:
        ExitMethod "CsehDemoForm", "DivideNumbers"
        Exit Function

DivideNumbers_Err:
        ' Capture Err state FIRST - cleanup below resets the Err object
        Dim lDivideNumbers_ErrNum As Long
        Dim sDivideNumbers_Err    As String

120     lDivideNumbers_ErrNum = Err.Number
125     sDivideNumbers_Err = "Error: " & Err.Number & " - " & Err.Description & " (" & Erl & ")"

        ExitMethod "CsehDemoForm", "DivideNumbers"

        ' Propagate: re-raise the ORIGINAL captured number, not Err.Number
130     Err.Raise lDivideNumbers_ErrNum, "HMS.CsehDemoForm.DivideNumbers", sDivideNumbers_Err

    '</EhFooter>
End Function

Private Sub Form_Unload(Cancel As Integer)
    Set CsehDemoForm = Nothing
End Sub
