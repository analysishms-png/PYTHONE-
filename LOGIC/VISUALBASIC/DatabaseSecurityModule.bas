Attribute VB_Name = "DatabaseSecurityModule"
Option Explicit

'==============================================================================
' Database Security Module for VB6 HMS System
' Created: February 28, 2026
' Purpose: Secure database operations with parameterized queries
'==============================================================================

' Database connection object
Private conn As ADODB.Connection

' Connection string constants
Private Const CONNECTION_TIMEOUT As Integer = 30
Private Const COMMAND_TIMEOUT As Integer = 60

' SQL injection detection patterns
Private Const SQL_INJECTION_PATTERNS As String = "';DROP|DELETE|INSERT|UPDATE|UNION|SELECT|EXEC|EXECUTE|ALTER|CREATE|TRUNCATE|--|/*|*/"

'==============================================================================
' Initialize database connection
'==============================================================================
Public Sub InitializeDatabase()
    On Error GoTo ErrorHandler
    
    ' Create connection object
    Set conn = New ADODB.Connection
    
    ' Set connection properties
    conn.ConnectionTimeout = CONNECTION_TIMEOUT
    conn.CommandTimeout = COMMAND_TIMEOUT
    
    ' Configure connection string (modify as needed)
    Dim connectionString As String
    connectionString = GetConnectionString()
    
    ' Open connection
    conn.Open connectionString
    
    ' Log successful connection
    LogError "InitializeDatabase", 0, "Database connection established", sevInfo
    
    Exit Sub
    
ErrorHandler:
    LogError "InitializeDatabase", Err.Number, Err.Description, sevHigh, "Failed to establish database connection"
    MsgBox "Database connection failed: " & Err.Description, vbCritical, "Database Error"
End Sub

'==============================================================================
' Get connection string (configure based on your database)
'==============================================================================
Private Function GetConnectionString() As String
    On Error GoTo ErrorHandler
    
    ' Example for SQL Server
    ' GetConnectionString = "Provider=SQLOLEDB;Data Source=SERVER_NAME;Initial Catalog=HMS_DB;User ID=sa;Password=password;"
    
    ' Example for MS Access
    ' GetConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\HMS.mdb;Persist Security Info=False;"
    
    ' Example for MySQL (with ODBC)
    ' GetConnectionString = "Driver={MySQL ODBC 8.0 ANSI Driver};Server=localhost;Database=hms_db;User=root;Password=password;Option=3;"
    
    ' For now, return a placeholder - configure based on your actual database
    GetConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\HMS.mdb;Persist Security Info=False;"
    
    Exit Function
    
ErrorHandler:
    LogError "GetConnectionString", Err.Number, Err.Description
    GetConnectionString = ""
End Function

'==============================================================================
' Execute secure query with parameters
'==============================================================================
Public Function ExecuteSecureQuery(sql As String, ParamArray params() As Variant) As ADODB.Recordset
    On Error GoTo ErrorHandler
    
    Dim cmd As ADODB.Command
    Dim rs As ADODB.Recordset
    Dim i As Integer
    
    ' Check if connection is open
    If conn Is Nothing Or conn.State <> adStateOpen Then
        InitializeDatabase
    End If
    
    ' Validate SQL for injection attempts
    If Not ValidateSQL(sql) Then
        LogError "ExecuteSecureQuery", -1, "SQL injection attempt detected", sevCritical, "SQL: " & sql
        Set ExecuteSecureQuery = Nothing
        Exit Function
    End If
    
    ' Create command object
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = conn
    cmd.CommandText = sql
    cmd.CommandType = adCmdText
    cmd.CommandTimeout = COMMAND_TIMEOUT
    
    ' Add parameters
    For i = 0 To UBound(params)
        cmd.Parameters.Append cmd.CreateParameter("@param" & i, adVarChar, adParamInput, 255, params(i))
    Next i
    
    ' Execute query
    Set rs = cmd.Execute()
    
    Set ExecuteSecureQuery = rs
    
    ' Log successful query
    LogError "ExecuteSecureQuery", 0, "Query executed successfully", sevInfo, "SQL: " & Left(sql, 100)
    
    Exit Function
    
ErrorHandler:
    LogError "ExecuteSecureQuery", Err.Number, Err.Description, sevHigh, "SQL: " & Left(sql, 100)
    Set ExecuteSecureQuery = Nothing
End Function

'==============================================================================
' Execute non-query (INSERT, UPDATE, DELETE)
'==============================================================================
Public Function ExecuteNonQuery(sql As String, ParamArray params() As Variant) As Boolean
    On Error GoTo ErrorHandler
    
    Dim cmd As ADODB.Command
    Dim recordsAffected As Long
    Dim i As Integer
    
    ' Check if connection is open
    If conn Is Nothing Or conn.State <> adStateOpen Then
        InitializeDatabase
    End If
    
    ' Validate SQL for injection attempts
    If Not ValidateSQL(sql) Then
        LogError "ExecuteNonQuery", -1, "SQL injection attempt detected", sevCritical, "SQL: " & sql
        ExecuteNonQuery = False
        Exit Function
    End If
    
    ' Create command object
    Set cmd = New ADODB.Command
    cmd.ActiveConnection = conn
    cmd.CommandText = sql
    cmd.CommandType = adCmdText
    cmd.CommandTimeout = COMMAND_TIMEOUT
    
    ' Add parameters
    For i = 0 To UBound(params)
        cmd.Parameters.Append cmd.CreateParameter("@param" & i, adVarChar, adParamInput, 255, params(i))
    Next i
    
    ' Execute command
    cmd.Execute recordsAffected
    
    ' Check if records were affected
    If recordsAffected > 0 Then
        ExecuteNonQuery = True
        LogError "ExecuteNonQuery", 0, "Command executed successfully", sevInfo, "Records affected: " & recordsAffected
    Else
        ExecuteNonQuery = False
        LogError "ExecuteNonQuery", 0, "No records affected", sevLow, "SQL: " & Left(sql, 100)
    End If
    
    Exit Function
    
ErrorHandler:
    LogError "ExecuteNonQuery", Err.Number, Err.Description, sevHigh, "SQL: " & Left(sql, 100)
    ExecuteNonQuery = False
End Function

'==============================================================================
' Validate SQL for injection attempts
'==============================================================================
Private Function ValidateSQL(sql As String) As Boolean
    On Error GoTo ErrorHandler
    
    Dim patterns() As String
    Dim pattern As Variant
    Dim upperSQL As String
    
    ' Convert to uppercase for comparison
    upperSQL = UCase(sql)
    
    ' Split patterns
    patterns = Split(SQL_INJECTION_PATTERNS, "|")
    
    ' Check each pattern
    For Each pattern In patterns
        If InStr(upperSQL, CStr(pattern)) > 0 Then
            ValidateSQL = False
            Exit Function
        End If
    Next pattern
    
    ' Additional checks for suspicious patterns
    If InStr(upperSQL, "OR 1=1") > 0 Or InStr(upperSQL, "AND 1=1") > 0 Then
        ValidateSQL = False
        Exit Function
    End If
    
    ValidateSQL = True
    
    Exit Function
    
ErrorHandler:
    LogError "ValidateSQL", Err.Number, Err.Description
    ValidateSQL = False
End Function

'==============================================================================
' Sanitize input string
'==============================================================================
Public Function SanitizeInput(inputText As String) As String
    On Error GoTo ErrorHandler
    
    Dim sanitized As String
    Dim i As Integer
    Dim char As String
    
    ' Remove dangerous characters
    For i = 1 To Len(inputText)
        char = Mid(inputText, i, 1)
        
        ' Allow only safe characters
        If char >= " " And char <= "~" Then
            sanitized = sanitized & char
        End If
    Next i
    
    ' Remove SQL keywords
    sanitized = Replace(sanitized, "'", "''")
    sanitized = Replace(sanitized, ";", "")
    sanitized = Replace(sanitized, "--", "")
    sanitized = Replace(sanitized, "/*", "")
    sanitized = Replace(sanitized, "*/", "")
    
    SanitizeInput = sanitized
    
    Exit Function
    
ErrorHandler:
    LogError "SanitizeInput", Err.Number, Err.Description
    SanitizeInput = inputText
End Function

'==============================================================================
' Create secure INSERT statement
'==============================================================================
Public Function CreateSecureInsert(tableName As String, fields() As String, values() As String) As String
    On Error GoTo ErrorHandler
    
    Dim sql As String
    Dim i As Integer
    Dim fieldList As String
    Dim paramList As String
    
    ' Validate inputs
    If tableName = "" Then
        LogError "CreateSecureInsert", -1, "Table name is empty", sevHigh
        CreateSecureInsert = ""
        Exit Function
    End If
    
    If UBound(fields) <> UBound(values) Then
        LogError "CreateSecureInsert", -1, "Fields and values count mismatch", sevHigh
        CreateSecureInsert = ""
        Exit Function
    End If
    
    ' Build field list
    fieldList = ""
    For i = 0 To UBound(fields)
        If i > 0 Then fieldList = fieldList & ", "
        fieldList = fieldList & "[" & fields(i) & "]"
    Next i
    
    ' Build parameter list
    paramList = ""
    For i = 0 To UBound(values)
        If i > 0 Then paramList = paramList & ", "
        paramList = paramList & "@param" & i
    Next i
    
    ' Build SQL statement
    sql = "INSERT INTO [" & tableName & "] (" & fieldList & ") VALUES (" & paramList & ")"
    
    CreateSecureInsert = sql
    
    Exit Function
    
ErrorHandler:
    LogError "CreateSecureInsert", Err.Number, Err.Description
    CreateSecureInsert = ""
End Function

'==============================================================================
' Create secure UPDATE statement
'==============================================================================
Public Function CreateSecureUpdate(tableName As String, fields() As String, values() As String, whereClause As String) As String
    On Error GoTo ErrorHandler
    
    Dim sql As String
    Dim i As Integer
    Dim setClause As String
    
    ' Validate inputs
    If tableName = "" Then
        LogError "CreateSecureUpdate", -1, "Table name is empty", sevHigh
        CreateSecureUpdate = ""
        Exit Function
    End If
    
    If UBound(fields) <> UBound(values) Then
        LogError "CreateSecureUpdate", -1, "Fields and values count mismatch", sevHigh
        CreateSecureUpdate = ""
        Exit Function
    End If
    
    ' Build SET clause
    setClause = ""
    For i = 0 To UBound(fields)
        If i > 0 Then setClause = setClause & ", "
        setClause = setClause & "[" & fields(i) & "] = @param" & i
    Next i
    
    ' Build SQL statement
    sql = "UPDATE [" & tableName & "] SET " & setClause
    If whereClause <> "" Then
        sql = sql & " WHERE " & whereClause
    End If
    
    CreateSecureUpdate = sql
    
    Exit Function
    
ErrorHandler:
    LogError "CreateSecureUpdate", Err.Number, Err.Description
    CreateSecureUpdate = ""
End Function

'==============================================================================
' Create secure SELECT statement
'==============================================================================
Public Function CreateSecureSelect(tableName As String, fields() As String, Optional whereClause As String, Optional orderBy As String) As String
    On Error GoTo ErrorHandler
    
    Dim sql As String
    Dim fieldList As String
    Dim i As Integer
    
    ' Validate inputs
    If tableName = "" Then
        LogError "CreateSecureSelect", -1, "Table name is empty", sevHigh
        CreateSecureSelect = ""
        Exit Function
    End If
    
    ' Build field list
    If UBound(fields) >= 0 Then
        fieldList = ""
        For i = 0 To UBound(fields)
            If i > 0 Then fieldList = fieldList & ", "
            fieldList = fieldList & "[" & fields(i) & "]"
        Next i
    Else
        fieldList = "*"
    End If
    
    ' Build SQL statement
    sql = "SELECT " & fieldList & " FROM [" & tableName & "]"
    
    If whereClause <> "" Then
        sql = sql & " WHERE " & whereClause
    End If
    
    If orderBy <> "" Then
        sql = sql & " ORDER BY " & orderBy
    End If
    
    CreateSecureSelect = sql
    
    Exit Function
    
ErrorHandler:
    LogError "CreateSecureSelect", Err.Number, Err.Description
    CreateSecureSelect = ""
End Function

'==============================================================================
' Get database connection
'==============================================================================
Public Function GetDatabaseConnection() As ADODB.Connection
    On Error GoTo ErrorHandler
    
    ' Check if connection is open
    If conn Is Nothing Or conn.State <> adStateOpen Then
        InitializeDatabase
    End If
    
    Set GetDatabaseConnection = conn
    
    Exit Function
    
ErrorHandler:
    LogError "GetDatabaseConnection", Err.Number, Err.Description
    Set GetDatabaseConnection = Nothing
End Function

'==============================================================================
' Close database connection
'==============================================================================
Public Sub CloseDatabaseConnection()
    On Error GoTo ErrorHandler
    
    If Not conn Is Nothing Then
        If conn.State = adStateOpen Then
            conn.Close
        End If
        Set conn = Nothing
        LogError "CloseDatabaseConnection", 0, "Database connection closed", sevInfo
    End If
    
    Exit Sub
    
ErrorHandler:
    LogError "CloseDatabaseConnection", Err.Number, Err.Description
End Sub

'==============================================================================
' Test database security
'==============================================================================
Public Sub TestDatabaseSecurity()
    On Error GoTo ErrorHandler
    
    Dim rs As ADODB.Recordset
    Dim sql As String
    Dim fields() As String
    Dim values() As String
    
    ' Test 1: Safe query
    sql = CreateSecureSelect("Patients", Array("PatientID", "PatientName", "Age"), "Age > 18", "PatientName")
    Set rs = ExecuteSecureQuery(sql)
    If Not rs Is Nothing Then
        Debug.Print "Test 1 PASSED: Safe SELECT query executed"
        rs.Close
    Else
        Debug.Print "Test 1 FAILED: Safe SELECT query failed"
    End If
    
    ' Test 2: SQL injection attempt (should fail)
    sql = "SELECT * FROM Patients WHERE PatientName = 'test'; DROP TABLE Patients; --"
    Set rs = ExecuteSecureQuery(sql)
    If rs Is Nothing Then
        Debug.Print "Test 2 PASSED: SQL injection attempt blocked"
    Else
        Debug.Print "Test 2 FAILED: SQL injection attempt not blocked"
        rs.Close
    End If
    
    ' Test 3: Parameterized INSERT
    fields = Array("PatientName", "Age", "Contact")
    values = Array("Test Patient", "25", "1234567890")
    sql = CreateSecureInsert("Patients", fields, values)
    
    If ExecuteNonQuery(sql, values) Then
        Debug.Print "Test 3 PASSED: Parameterized INSERT executed"
    Else
        Debug.Print "Test 3 FAILED: Parameterized INSERT failed"
    End If
    
    ' Test 4: Input sanitization
    Dim sanitized As String
    sanitized = SanitizeInput("test'; DROP TABLE Patients; --")
    If InStr(sanitized, "'") = 0 And InStr(sanitized, ";") = 0 Then
        Debug.Print "Test 4 PASSED: Input sanitization working"
    Else
        Debug.Print "Test 4 FAILED: Input sanitization not working"
    End If
    
    MsgBox "Database security tests completed. Check debug window for results.", vbInformation
    
    Exit Sub
    
ErrorHandler:
    LogError "TestDatabaseSecurity", Err.Number, Err.Description
    MsgBox "Database security test failed: " & Err.Description, vbCritical
End Sub

'==============================================================================
' Backup database
'==============================================================================
Public Function BackupDatabase(backupPath As String) As Boolean
    On Error GoTo ErrorHandler
    
    ' This is a placeholder - implement based on your database type
    ' For SQL Server: Use BACKUP DATABASE command
    ' For MS Access: Copy the .mdb file
    ' For MySQL: Use mysqldump or similar
    
    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    ' Example for MS Access - copy the database file
    Dim dbPath As String
    dbPath = App.Path & "\HMS.mdb"
    
    If fso.FileExists(dbPath) Then
        fso.CopyFile dbPath, backupPath, True
        BackupDatabase = True
        LogError "BackupDatabase", 0, "Database backup created", sevInfo, "Backup path: " & backupPath
    Else
        BackupDatabase = False
        LogError "BackupDatabase", -1, "Database file not found", sevHigh, "Path: " & dbPath
    End If
    
    Exit Function
    
ErrorHandler:
    LogError "BackupDatabase", Err.Number, Err.Description
    BackupDatabase = False
End Function

'==============================================================================
' Check database integrity
'==============================================================================
Public Function CheckDatabaseIntegrity() As Boolean
    On Error GoTo ErrorHandler
    
    Dim rs As ADODB.Recordset
    Dim sql As String
    
    ' Test basic connectivity
    sql = "SELECT COUNT(*) FROM SystemInfo"
    Set rs = ExecuteSecureQuery(sql)
    
    If rs Is Nothing Then
        CheckDatabaseIntegrity = False
        LogError "CheckDatabaseIntegrity", -1, "Database connectivity test failed", sevHigh
        Exit Function
    End If
    
    rs.Close
    
    ' Test critical tables exist
    Dim criticalTables() As String
    criticalTables = Array("Patients", "Appointments", "Billing", "Inventory")
    
    Dim table As Variant
    For Each table In criticalTables
        sql = "SELECT COUNT(*) FROM " & table
        Set rs = ExecuteSecureQuery(sql)
        
        If rs Is Nothing Then
            CheckDatabaseIntegrity = False
            LogError "CheckDatabaseIntegrity", -1, "Critical table not found: " & table, sevHigh
            Exit Function
        End If
        rs.Close
    Next table
    
    CheckDatabaseIntegrity = True
    LogError "CheckDatabaseIntegrity", 0, "Database integrity check passed", sevInfo
    
    Exit Function
    
ErrorHandler:
    LogError "CheckDatabaseIntegrity", Err.Number, Err.Description
    CheckDatabaseIntegrity = False
End Function
