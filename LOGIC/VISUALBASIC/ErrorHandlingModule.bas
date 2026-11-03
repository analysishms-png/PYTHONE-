Attribute VB_Name = "ErrorHandlingModule"
Option Explicit

'==============================================================================
' Error Handling Module for VB6 HMS System
' Created: February 28, 2026
' Purpose: Centralized error handling and logging system
'==============================================================================

' Error logging constants
Private Const ERROR_LOG_FILE As String = "ErrorLog.txt"
Private Const ERROR_LOG_PATH As String = "\Logs\"

' Error severity levels
Public Enum ErrorSeverity
    sevCritical = 1
    sevHigh = 2
    sevMedium = 3
    sevLow = 4
    sevInfo = 5
End Enum

' Error information structure
Public Type ErrorInfo
    ErrorNumber As Long
    ErrorDescription As String
    ErrorSource As String
    ErrorProcedure As String
    ErrorDateTime As Date
    ErrorSeverity As ErrorSeverity
    UserID As String
    AdditionalInfo As String
End Type

' Global error collection
Public Errors As Collection

'==============================================================================
' Initialize error handling system
'==============================================================================
Public Sub InitializeErrorHandling()
    On Error Resume Next
    
    ' Create errors collection
    Set Errors = New Collection
    
    ' Create logs directory if it doesn't exist
    If Dir(App.Path & ERROR_LOG_PATH, vbDirectory) = "" Then
        MkDir App.Path & ERROR_LOG_PATH
    End If
    
    ' Log initialization
    LogError "InitializeErrorHandling", 0, "Error handling system initialized", sevInfo
End Sub

'==============================================================================
' Main error logging function
'==============================================================================
Public Sub LogError(ProcedureName As String, ErrorNumber As Long, ErrorDescription As String, Optional Severity As ErrorSeverity = sevMedium, Optional AdditionalInfo As String = "")
    On Error Resume Next
    
    Dim errorInfo As ErrorInfo
    Dim logMessage As String
    Dim fileNum As Integer
    
    ' Create error information
    errorInfo.ErrorNumber = ErrorNumber
    errorInfo.ErrorDescription = ErrorDescription
    errorInfo.ErrorSource = Err.Source
    errorInfo.ErrorProcedure = ProcedureName
    errorInfo.ErrorDateTime = Now
    errorInfo.ErrorSeverity = Severity
    errorInfo.UserID = GetCurrentUserID()
    errorInfo.AdditionalInfo = AdditionalInfo
    
    ' Add to errors collection
    Errors.Add errorInfo
    
    ' Create log message
    logMessage = Format(errorInfo.ErrorDateTime, "yyyy-mm-dd hh:mm:ss") & " | " & _
                 GetSeverityText(Severity) & " | " & _
                 ProcedureName & " | " & _
                 "Error " & ErrorNumber & " | " & _
                 ErrorDescription
    
    If AdditionalInfo <> "" Then
        logMessage = logMessage & " | " & AdditionalInfo
    End If
    
    ' Write to error log file
    fileNum = FreeFile
    Open App.Path & ERROR_LOG_PATH & ERROR_LOG_FILE For Append As #fileNum
    Print #fileNum, logMessage
    Close #fileNum
    
    ' Handle critical errors
    If Severity = sevCritical Then
        HandleCriticalError errorInfo
    End If
End Sub

'==============================================================================
' Get severity text for logging
'==============================================================================
Private Function GetSeverityText(Severity As ErrorSeverity) As String
    Select Case Severity
        Case sevCritical
            GetSeverityText = "CRITICAL"
        Case sevHigh
            GetSeverityText = "HIGH"
        Case sevMedium
            GetSeverityText = "MEDIUM"
        Case sevLow
            GetSeverityText = "LOW"
        Case sevInfo
            GetSeverityText = "INFO"
        Case Else
            GetSeverityText = "UNKNOWN"
    End Select
End Function

'==============================================================================
' Get current user ID
'==============================================================================
Private Function GetCurrentUserID() As String
    On Error Resume Next
    
    ' Try to get current user from global variable or system
    If IsObject(gCurrentUser) Then
        GetCurrentUserID = gCurrentUser.UserID
    Else
        GetCurrentUserID = "SYSTEM"
    End If
End Function

'==============================================================================
' Handle critical errors
'==============================================================================
Private Sub HandleCriticalError(errorInfo As ErrorInfo)
    On Error Resume Next
    
    Dim criticalLogMessage As String
    Dim fileNum As Integer
    
    ' Create critical error log
    criticalLogMessage = "CRITICAL ERROR OCCURRED!" & vbCrLf & _
                        "Time: " & Format(errorInfo.ErrorDateTime, "yyyy-mm-dd hh:mm:ss") & vbCrLf & _
                        "Procedure: " & errorInfo.ErrorProcedure & vbCrLf & _
                        "Error Number: " & errorInfo.ErrorNumber & vbCrLf & _
                        "Error Description: " & errorInfo.ErrorDescription & vbCrLf & _
                        "User ID: " & errorInfo.UserID & vbCrLf & _
                        "Additional Info: " & errorInfo.AdditionalInfo & vbCrLf & _
                        "System State: " & GetSystemState()
    
    ' Write to critical error log
    fileNum = FreeFile
    Open App.Path & ERROR_LOG_PATH & "CriticalError_" & Format(Now(), "yyyymmdd_hhmmss") & ".txt" For Output As #fileNum
    Print #fileNum, criticalLogMessage
    Close #fileNum
    
    ' Show critical error message
    MsgBox "A critical error has occurred and has been logged." & vbCrLf & _
           "The system may need to be restarted." & vbCrLf & vbCrLf & _
           "Error: " & errorInfo.ErrorDescription, _
           vbCritical, "Critical System Error"
    
    ' Optionally shutdown application
    If MsgBox("Would you like to shutdown the application?", vbQuestion + vbYesNo, "Critical Error") = vbYes Then
        End
    End If
End Sub

'==============================================================================
' Get system state information
'==============================================================================
Private Function GetSystemState() As String
    On Error Resume Next
    
    Dim stateInfo As String
    
    stateInfo = "Memory Usage: " & GetMemoryUsage() & vbCrLf & _
               "Disk Space: " & GetDiskSpace() & vbCrLf & _
               "Active Forms: " & GetActiveFormsCount() & vbCrLf & _
               "Database Connections: " & GetDatabaseConnectionCount()
    
    GetSystemState = stateInfo
End Function

'==============================================================================
' Get memory usage (simplified)
'==============================================================================
Private Function GetMemoryUsage() As String
    On Error Resume Next
    
    ' This is a simplified version - in production, use Windows API
    GetMemoryUsage = "N/A (API not implemented)"
End Function

'==============================================================================
' Get disk space (simplified)
'==============================================================================
Private Function GetDiskSpace() As String
    On Error Resume Next
    
    Dim fso As Object
    Dim drive As Object
    
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set drive = fso.GetDrive(fso.GetDriveName(App.Path))
    
    If drive.IsReady Then
        GetDiskSpace = Format(drive.FreeSpace / 1024 / 1024 / 1024, "0.00") & " GB free"
    Else
        GetDiskSpace = "Drive not ready"
    End If
End Function

'==============================================================================
' Get active forms count
'==============================================================================
Private Function GetActiveFormsCount() As Integer
    On Error Resume Next
    
    Dim formCount As Integer
    Dim frm As Form
    
    For Each frm In Forms
        formCount = formCount + 1
    Next frm
    
    GetActiveFormsCount = formCount
End Function

'==============================================================================
' Get database connection count (simplified)
'==============================================================================
Private Function GetDatabaseConnectionCount() As Integer
    On Error Resume Next
    
    ' This would need to be implemented based on your database connection management
    GetDatabaseConnectionCount = "N/A (Connection tracking not implemented)"
End Function

'==============================================================================
' Standard error handler template
'==============================================================================
Public Sub StandardErrorHandler(ProcedureName As String, Optional ShowMessage As Boolean = True)
    Dim errorMessage As String
    Dim severity As ErrorSeverity
    
    ' Determine error severity based on error number
    Select Case Err.Number
        Case Is < 0
            severity = sevCritical
        Case 0 To 999
            severity = sevLow
        Case 1000 To 4999
            severity = sevMedium
        Case 5000 To 9999
            severity = sevHigh
        Case Else
            severity = sevCritical
    End Select
    
    ' Log the error
    LogError ProcedureName, Err.Number, Err.Description, severity
    
    ' Show user-friendly message if requested
    If ShowMessage Then
        Select Case severity
            Case sevCritical
                errorMessage = "A critical error has occurred. Please contact the system administrator immediately."
            Case sevHigh
                errorMessage = "An error has occurred that may affect system functionality. Please contact support."
            Case sevMedium
                errorMessage = "An error has occurred. The operation could not be completed."
            Case sevLow
                errorMessage = "A minor error occurred. Please try again."
            Case Else
                errorMessage = "An unexpected error occurred."
        End Select
        
        MsgBox errorMessage & vbCrLf & vbCrLf & _
               "Error Details: " & Err.Description, _
               vbExclamation, "Error"
    End If
End Sub

'==============================================================================
' Generate error report
'==============================================================================
Public Sub GenerateErrorReport(Optional FromDate As Date, Optional ToDate As Date)
    On Error Resume Next
    
    Dim reportFile As Integer
    Dim reportPath As String
    Dim errorInfo As ErrorInfo
    Dim reportContent As String
    
    ' Set default date range if not provided
    If FromDate = 0 Then FromDate = DateAdd("d", -7, Now)
    If ToDate = 0 Then ToDate = Now
    
    ' Create report file name
    reportPath = App.Path & ERROR_LOG_PATH & "ErrorReport_" & Format(Now(), "yyyymmdd_hhmmss") & ".txt"
    
    ' Generate report content
    reportContent = "VB6 HMS System - Error Report" & vbCrLf
    reportContent = reportContent & "Generated: " & Now() & vbCrLf
    reportContent = reportContent & "Period: " & Format(FromDate, "yyyy-mm-dd") & " to " & Format(ToDate, "yyyy-mm-dd") & vbCrLf
    reportContent = reportContent & String(80, "=") & vbCrLf & vbCrLf
    
    ' Add error statistics
    reportContent = reportContent & "Error Statistics:" & vbCrLf
    reportContent = reportContent & "Total Errors: " & Errors.Count & vbCrLf
    reportContent = reportContent & "Critical Errors: " & CountErrorsBySeverity(sevCritical) & vbCrLf
    reportContent = reportContent & "High Severity: " & CountErrorsBySeverity(sevHigh) & vbCrLf
    reportContent = reportContent & "Medium Severity: " & CountErrorsBySeverity(sevMedium) & vbCrLf
    reportContent = reportContent & "Low Severity: " & CountErrorsBySeverity(sevLow) & vbCrLf
    reportContent = reportContent & String(50, "-") & vbCrLf & vbCrLf
    
    ' Add detailed error list
    reportContent = reportContent & "Detailed Errors:" & vbCrLf & vbCrLf
    
    For Each errorInfo In Errors
        If errorInfo.ErrorDateTime >= FromDate And errorInfo.ErrorDateTime <= ToDate Then
            reportContent = reportContent & "Date: " & Format(errorInfo.ErrorDateTime, "yyyy-mm-dd hh:mm:ss") & vbCrLf
            reportContent = reportContent & "Procedure: " & errorInfo.ErrorProcedure & vbCrLf
            reportContent = reportContent & "Error: " & errorInfo.ErrorNumber & " - " & errorInfo.ErrorDescription & vbCrLf
            reportContent = reportContent & "Severity: " & GetSeverityText(errorInfo.ErrorSeverity) & vbCrLf
            reportContent = reportContent & "User: " & errorInfo.UserID & vbCrLf
            If errorInfo.AdditionalInfo <> "" Then
                reportContent = reportContent & "Additional Info: " & errorInfo.AdditionalInfo & vbCrLf
            End If
            reportContent = reportContent & String(50, "-") & vbCrLf
        End If
    Next errorInfo
    
    ' Write report to file
    reportFile = FreeFile
    Open reportPath For Output As #reportFile
    Print #reportFile, reportContent
    Close #reportFile
    
    ' Show completion message
    MsgBox "Error report generated successfully:" & vbCrLf & reportPath, vbInformation, "Error Report"
End Sub

'==============================================================================
' Count errors by severity
'==============================================================================
Private Function CountErrorsBySeverity(Severity As ErrorSeverity) As Integer
    On Error Resume Next
    
    Dim count As Integer
    Dim errorInfo As ErrorInfo
    
    count = 0
    For Each errorInfo In Errors
        If errorInfo.ErrorSeverity = Severity Then
            count = count + 1
        End If
    Next errorInfo
    
    CountErrorsBySeverity = count
End Function

'==============================================================================
' Clear error log
'==============================================================================
Public Sub ClearErrorLog()
    On Error Resume Next
    
    Dim logPath As String
    
    logPath = App.Path & ERROR_LOG_PATH & ERROR_LOG_FILE
    
    If Dir(logPath) <> "" Then
        Kill logPath
    End If
    
    ' Clear errors collection
    Set Errors = New Collection
    
    ' Log the clearing action
    LogError "ClearErrorLog", 0, "Error log cleared", sevInfo
    
    MsgBox "Error log has been cleared.", vbInformation, "System Maintenance"
End Sub

'==============================================================================
' Test error handling system
'==============================================================================
Public Sub TestErrorHandling()
    On Error GoTo TestErrorHandler
    
    ' Test different error types
    LogError "TestErrorHandling", 1001, "Test error - Low severity", sevLow, "This is a test error"
    LogError "TestErrorHandling", 1002, "Test error - High severity", sevHigh, "This is a high severity test error"
    LogError "TestErrorHandling", 1003, "Test error - Critical severity", sevCritical, "This is a critical test error"
    
    ' Test division by zero error
    Dim x As Integer
    x = 1 / 0
    
    Exit Sub
    
TestErrorHandler:
    StandardErrorHandler "TestErrorHandling"
End Sub
