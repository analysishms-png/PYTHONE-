Attribute VB_Name = "modLog"
Option Explicit

'================================================================================
'    Module     : modLog
'    Project    : HMS
'    Description: Manual stack-trace + logging helpers implementing the
'                 vb6-trace-pattern skill (EnterMethod/ExitMethod/LogMsg/
'                 TraceMethod). Self-contained: no external references
'                 (no Scripting Runtime, no WMI script references) so the
'                 demo form compiles as-is.
'    Usage      : In CSEH procedures -
'                     EnterMethod "Module", "ProcName"     ' in <EhHeader>
'                     ExitMethod  "Module", "ProcName"     ' in _Exit AND _Err
'                 Logging activates when running in the IDE or when a
'                 "debug.txt" file exists in App.Path.
'================================================================================

' ---- Log configuration -------------------------------------------------------
Private Const DEF_LOG_DAYS       As Long = 30    ' retention for daily logs
Private Const LOG_DIR_NAME       As String = "log"
Private Const LOG_FILE_PREFIX    As String = "app-"
Private Const DEBUG_FLAG_FILE    As String = "debug.txt"

' ---- Stack state -------------------------------------------------------------
Private Const MAX_STACK_DEPTH    As Long = 64

Private mstrMethods()            As String       ' "Module::ProcName" frames
Private mlngMethodDepth          As Long         ' current depth (0 = empty)
Private mblnInitialized          As Boolean

' ---- Log activation flag -----------------------------------------------------
Public gblnRegisterLog           As Boolean      ' set True by RegisterLog

'================================================================================
' Log activation
'================================================================================

'--------------------------------------------------------------------------------
' Procedure : RegisterLog
' Purpose   : Activates logging when (a) running in the VB6 IDE, or (b) a
'             "debug.txt" file exists in App.Path. Called by LogMsg on first
'             use; can also be called explicitly at app startup.
'--------------------------------------------------------------------------------
Public Sub RegisterLog()
    If gblnRegisterLog Then Exit Sub

    ' Signal 1: IDE is active - always log in development
    If fg_InIDE() Then
        gblnRegisterLog = True
        Exit Sub
    End If

    ' Signal 2: debug.txt flag file dropped next to the EXE - sysadmin switch
    If Len(Dir$(App.Path & "\" & DEBUG_FLAG_FILE)) > 0 Then
        gblnRegisterLog = True
    End If
End Sub

'--------------------------------------------------------------------------------
' Procedure : fg_InIDE
' Purpose   : Detects whether code is running inside the VB6 IDE or compiled.
'             Standard Debug.Assert trick: in the IDE the Assert evaluates
'             SetTrue, which sets this function's return variable True (ByRef).
'             Compiled, Debug.Assert is stripped, SetTrue never runs, and the
'             function returns False.
'--------------------------------------------------------------------------------
Public Function fg_InIDE() As Boolean
    Debug.Assert SetTrue(fg_InIDE)
End Function

Private Function SetTrue(ByRef blnValue As Boolean) As Boolean
    blnValue = True
    SetTrue = True
End Function

'================================================================================
' LogMsg - write a line to the daily log file
'================================================================================

'--------------------------------------------------------------------------------
' Procedure : LogMsg
' Purpose   : Appends one line to the rolling daily log file
'             (App.Path\log\app-YYYY-MM-DD.txt). Opens/closes the handle per
'             call so entries survive crashes. Force=True bypasses the
'             activation flag for critical events.
'--------------------------------------------------------------------------------
Public Sub LogMsg(ByVal strMsg As String, Optional ByVal blnForce As Boolean = False)
    Static blnChecked As Boolean

    If Not blnForce Then
        RegisterLog
        If Not gblnRegisterLog Then Exit Sub
    End If

    ' One-time retention cleanup per session
    If Not blnChecked Then
        blnChecked = True
        CleanupOldLogs
    End If

    WriteLogLine Format$(Now, "hh:nn:ss") & " < " & strMsg & " >"
End Sub

'--------------------------------------------------------------------------------
' Procedure : WriteLogLine
' Purpose   : Appends one pre-formatted line to today's log file.
'             Best-effort: a log failure must never crash the app.
'--------------------------------------------------------------------------------
Private Sub WriteLogLine(ByVal strLine As String)
    Dim intFile  As Integer
    Dim strPath  As String

    ' Best-effort log write - failing to log should not crash the app
    On Error GoTo WriteLogLine_Err

    strPath = BuildLogFilePath()
    intFile = FreeFile
    Open strPath For Append Shared As #intFile
    Print #intFile, strLine
    Close #intFile
    Exit Sub

WriteLogLine_Err:
    ' Swallow silently - logging must not break the application
    Exit Sub
End Sub

'--------------------------------------------------------------------------------
' Procedure : BuildLogFilePath
' Purpose   : Returns App.Path\log\app-YYYY-MM-DD.txt, creating the log
'             directory on first use.
'--------------------------------------------------------------------------------
Private Function BuildLogFilePath() As String
    Dim strDir As String

    strDir = App.Path
    If Right$(strDir, 1) <> "\" Then strDir = strDir & "\"
    strDir = strDir & LOG_DIR_NAME

    ' Create the directory if it does not exist yet
    If Len(Dir$(strDir & "\", vbDirectory)) = 0 Then
        MkDir strDir
    End If

    BuildLogFilePath = strDir & "\" & LOG_FILE_PREFIX & Format$(Date, "yyyy-mm-dd") & ".txt"
End Function

'--------------------------------------------------------------------------------
' Procedure : CleanupOldLogs
' Purpose   : Once per session, deletes daily log files older than
'             DEF_LOG_DAYS. Best-effort.
'--------------------------------------------------------------------------------
Private Sub CleanupOldLogs()
    Dim strDir     As String
    Dim strFile    As String
    Dim strDate    As String
    Dim dtmCutoff  As Date

    On Error GoTo CleanupOldLogs_Err

    strDir = App.Path
    If Right$(strDir, 1) <> "\" Then strDir = strDir & "\"
    strDir = strDir & LOG_DIR_NAME & "\"

    dtmCutoff = DateAdd("d", -DEF_LOG_DAYS, Date)

    strFile = Dir$(strDir & LOG_FILE_PREFIX & "*.txt")
    Do While Len(strFile) > 0
        ' Extract the yyyy-mm-dd portion from app-YYYY-MM-DD.txt
        strDate = Mid$(strFile, Len(LOG_FILE_PREFIX) + 1, 10)
        If Len(strDate) = 10 Then
            If IsDate(strDate) Then
                If CDate(strDate) < dtmCutoff Then
                    ' Best-effort delete - may fail if file is locked
                    On Error Resume Next
                    Kill strDir & strFile
                    On Error GoTo CleanupOldLogs_Err
                End If
            End If
        End If
        strFile = Dir$()
    Loop
    Exit Sub

CleanupOldLogs_Err:
    Exit Sub
End Sub

'================================================================================
' EnterMethod / ExitMethod - the manual call stack
'================================================================================

'--------------------------------------------------------------------------------
' Procedure : EnterMethod
' Purpose   : Pushes a method frame onto the trace stack and logs the entry
'             with optional serialized parameters. Called in <EhHeader>.
'--------------------------------------------------------------------------------
Public Sub EnterMethod(ByVal strModule As String, ByVal strMethod As String, ParamArray varArgs() As Variant)
    Dim lngI   As Long
    Dim strEntry As String

    EnsureStackInitialized

    If mlngMethodDepth < MAX_STACK_DEPTH Then
        mlngMethodDepth = mlngMethodDepth + 1
        mstrMethods(mlngMethodDepth) = strModule & "::" & strMethod
    End If

    ' Log the entry with serialized parameters (if any and logging is on)
    RegisterLog
    If gblnRegisterLog Then
        strEntry = "Enter: " & strModule & "::" & strMethod
        If UBound(varArgs) >= LBound(varArgs) Then
            strEntry = strEntry & "( "
            For lngI = LBound(varArgs) To UBound(varArgs)
                If lngI > LBound(varArgs) Then strEntry = strEntry & ", "
                strEntry = strEntry & SerializeParam(varArgs(lngI))
            Next lngI
            strEntry = strEntry & " )"
        End If
        LogMsg strEntry
    End If
End Sub

'--------------------------------------------------------------------------------
' Procedure : ExitMethod
' Purpose   : Pops one frame (specific form: module+method match) or all top
'             frames of a module (bulk form: module only). Called in both
'             _Exit and _Err paths. Logs the exit.
'--------------------------------------------------------------------------------
Public Sub ExitMethod(ByVal strModule As String, Optional ByVal strMethod As String = "")
    Dim lngI As Long

    If Not mblnInitialized Then Exit Sub

    If Len(strMethod) > 0 Then
        ' Specific form: pop the topmost frame if it matches
        If mlngMethodDepth > 0 Then
            If mstrMethods(mlngMethodDepth) = strModule & "::" & strMethod Then
                LogMsg "Exit: " & mstrMethods(mlngMethodDepth)
                mlngMethodDepth = mlngMethodDepth - 1
            Else
                ' Mismatch - pop anyway to keep depth sane, but flag it
                LogMsg "Exit (mismatch, top=" & mstrMethods(mlngMethodDepth) & _
                       "): " & strModule & "::" & strMethod
                mlngMethodDepth = mlngMethodDepth - 1
            End If
        End If
    Else
        ' Bulk form: pop every top frame belonging to this module (safety net)
        Do While mlngMethodDepth > 0
            If InStr(1, mstrMethods(mlngMethodDepth), strModule & "::", vbBinaryCompare) = 1 Then
                mlngMethodDepth = mlngMethodDepth - 1
            Else
                Exit Do
            End If
        Loop
    End If
End Sub

'--------------------------------------------------------------------------------
' Procedure : TraceMethod
' Purpose   : Returns the current trace stack as a formatted multi-line string
'             for embedding in user-visible error messages.
'--------------------------------------------------------------------------------
Public Function TraceMethod() As String
    Dim lngI    As Long
    Dim strOut  As String

    If Not mblnInitialized Then Exit Function

    If mlngMethodDepth = 0 Then
        TraceMethod = "(trace stack empty)"
        Exit Function
    End If

    For lngI = mlngMethodDepth To 1 Step -1
        strOut = strOut & String(lngI - 1, ".") & " " & mstrMethods(lngI) & vbCrLf
    Next lngI

    TraceMethod = strOut
End Function

'================================================================================
' Internal helpers
'================================================================================

'--------------------------------------------------------------------------------
' Procedure : EnsureStackInitialized
' Purpose   : Allocates the frame array on first use.
'--------------------------------------------------------------------------------
Private Sub EnsureStackInitialized()
    If Not mblnInitialized Then
        ReDim mstrMethods(1 To MAX_STACK_DEPTH)
        mlngMethodDepth = 0
        mblnInitialized = True
    End If
End Sub

'--------------------------------------------------------------------------------
' Procedure : SerializeParam
' Purpose   : Converts one parameter to log-friendly text. Scalars via CStr,
'             Nothing/Empty/Null as literals, objects as type names.
'--------------------------------------------------------------------------------
Private Function SerializeParam(ByVal varValue As Variant) As String
    On Error GoTo SerializeParam_Err

    If IsNull(varValue) Then
        SerializeParam = "<Null>"
    ElseIf IsEmpty(varValue) Then
        SerializeParam = "<Empty>"
    ElseIf IsObject(varValue) Then
        If varValue Is Nothing Then
            SerializeParam = "Nothing"
        Else
            SerializeParam = "Object:" & TypeName(varValue)
        End If
    ElseIf IsArray(varValue) Then
        SerializeParam = "Array(" & (UBound(varValue) - LBound(varValue) + 1) & " items)"
    Else
        SerializeParam = CStr(varValue)
    End If
    Exit Function

SerializeParam_Err:
    SerializeParam = "<unserializable>"
End Function
