Attribute VB_Name = "ValidationModule"
Option Explicit

'==============================================================================
' Input Validation Module for VB6 HMS System
' Created: February 28, 2026
' Purpose: Comprehensive input validation functions
'==============================================================================

' Validation result structure
Public Type ValidationResult
    IsValid As Boolean
    ErrorMessage As String
    ErrorField As String
    ValidationType As String
End Type

' Validation constants
Private Const MIN_AGE As Integer = 0
Private Const MAX_AGE As Integer = 150
Private Const MIN_PHONE_LENGTH As Integer = 10
Private Const MAX_PHONE_LENGTH As Integer = 15
Private Const MIN_NAME_LENGTH As Integer = 2
Private Const MAX_NAME_LENGTH As Integer = 100

'==============================================================================
' Main validation function for required fields
'==============================================================================
Public Function ValidateRequiredField(ctrl As Control, fieldName As String) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    
    result.ValidationType = "Required Field"
    result.ErrorField = fieldName
    
    ' Check if control is empty
    If TypeOf ctrl Is TextBox Then
        If Trim(ctrl.Text) = "" Then
            result.IsValid = False
            result.ErrorMessage = fieldName & " is required."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    ElseIf TypeOf ctrl Is ComboBox Then
        If ctrl.ListIndex = -1 Or Trim(ctrl.Text) = "" Then
            result.IsValid = False
            result.ErrorMessage = "Please select " & fieldName & "."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    ElseIf TypeOf ctrl Is ListBox Then
        If ctrl.ListIndex = -1 Then
            result.IsValid = False
            result.ErrorMessage = "Please select " & fieldName & "."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateRequiredField = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateRequiredField", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateRequiredField = result
End Function

'==============================================================================
' Validate numeric input
'==============================================================================
Public Function ValidateNumericField(ctrl As Control, fieldName As String, Optional minValue As Long = 0, Optional maxValue As Long = 999999) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    
    result.ValidationType = "Numeric Field"
    result.ErrorField = fieldName
    
    ' Check if empty (optional field)
    If TypeOf ctrl Is TextBox Then
        If Trim(ctrl.Text) = "" Then
            result.IsValid = True
            result.ErrorMessage = ""
            GoTo ExitFunction
        End If
    End If
    
    ' Check if numeric
    If Not IsNumeric(ctrl.Text) Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be a number."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check range
    Dim value As Double
    value = CDbl(ctrl.Text)
    
    If value < minValue Or value > maxValue Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be between " & minValue & " and " & maxValue & "."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateNumericField = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateNumericField", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateNumericField = result
End Function

'==============================================================================
' Validate age field
'==============================================================================
Public Function ValidateAgeField(ctrl As Control, fieldName As String) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    
    result.ValidationType = "Age Field"
    result.ErrorField = fieldName
    
    ' Check if empty
    If TypeOf ctrl Is TextBox Then
        If Trim(ctrl.Text) = "" Then
            result.IsValid = False
            result.ErrorMessage = fieldName & " is required."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    End If
    
    ' Check if numeric
    If Not IsNumeric(ctrl.Text) Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be a valid number."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check age range
    Dim age As Integer
    age = CInt(ctrl.Text)
    
    If age < MIN_AGE Or age > MAX_AGE Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be between " & MIN_AGE & " and " & MAX_AGE & " years."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateAgeField = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateAgeField", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateAgeField = result
End Function

'==============================================================================
' Validate email address
'==============================================================================
Public Function ValidateEmailField(ctrl As Control, Optional fieldName As String = "Email") As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim email As String
    
    result.ValidationType = "Email Field"
    result.ErrorField = fieldName
    
    ' Get email text
    If TypeOf ctrl Is TextBox Then
        email = Trim(ctrl.Text)
    End If
    
    ' Check if empty (optional field)
    If email = "" Then
        result.IsValid = True
        result.ErrorMessage = ""
        GoTo ExitFunction
    End If
    
    ' Basic email validation
    If InStr(email, "@") = 0 Or InStr(email, ".") = 0 Then
        result.IsValid = False
        result.ErrorMessage = "Please enter a valid email address."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check email format
    Dim atPos As Integer
    Dim dotPos As Integer
    
    atPos = InStr(email, "@")
    dotPos = InStrRev(email, ".")
    
    ' Check if @ is before . and not at start/end
    If atPos = 1 Or atPos = Len(email) Or dotPos = 1 Or dotPos = Len(email) Or atPos >= dotPos Then
        result.IsValid = False
        result.ErrorMessage = "Please enter a valid email address."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check for valid characters
    Dim i As Integer
    Dim char As String
    
    For i = 1 To Len(email)
        char = LCase(Mid(email, i, 1))
        If Not (char >= "a" And char <= "z" Or char >= "0" And char <= "9" Or char = "@" Or char = "." Or char = "_" Or char = "-") Then
            result.IsValid = False
            result.ErrorMessage = "Email contains invalid characters."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    Next i
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateEmailField = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateEmailField", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateEmailField = result
End Function

'==============================================================================
' Validate phone number
'==============================================================================
Public Function ValidatePhoneNumber(ctrl As Control, Optional fieldName As String = "Phone Number") As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim phone As String
    Dim cleanPhone As String
    
    result.ValidationType = "Phone Number"
    result.ErrorField = fieldName
    
    ' Get phone text
    If TypeOf ctrl Is TextBox Then
        phone = Trim(ctrl.Text)
    End If
    
    ' Check if empty (optional field)
    If phone = "" Then
        result.IsValid = True
        result.ErrorMessage = ""
        GoTo ExitFunction
    End If
    
    ' Remove non-numeric characters
    Dim i As Integer
    Dim char As String
    
    For i = 1 To Len(phone)
        char = Mid(phone, i, 1)
        If IsNumeric(char) Then
            cleanPhone = cleanPhone & char
        ElseIf char = "+" And i = 1 Then
            ' Allow + at beginning for international numbers
            cleanPhone = cleanPhone & char
        End If
    Next i
    
    ' Check phone length
    If Len(cleanPhone) < MIN_PHONE_LENGTH Or Len(cleanPhone) > MAX_PHONE_LENGTH Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be between " & MIN_PHONE_LENGTH & " and " & MAX_PHONE_LENGTH & " digits."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Update control with clean phone number
    If TypeOf ctrl Is TextBox Then
        ctrl.Text = cleanPhone
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidatePhoneNumber = result
    Exit Function
    
ErrorHandler:
    LogError "ValidatePhoneNumber", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidatePhoneNumber = result
End Function

'==============================================================================
' Validate patient name
'==============================================================================
Public Function ValidatePatientName(ctrl As Control, fieldName As String) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim name As String
    
    result.ValidationType = "Patient Name"
    result.ErrorField = fieldName
    
    ' Get name text
    If TypeOf ctrl Is TextBox Then
        name = Trim(ctrl.Text)
    End If
    
    ' Check if empty
    If name = "" Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " is required."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check length
    If Len(name) < MIN_NAME_LENGTH Or Len(name) > MAX_NAME_LENGTH Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must be between " & MIN_NAME_LENGTH & " and " & MAX_NAME_LENGTH & " characters."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check for valid characters (letters, spaces, hyphens, apostrophes)
    Dim i As Integer
    Dim char As String
    
    For i = 1 To Len(name)
        char = Mid(name, i, 1)
        If Not (char >= "A" And char <= "Z" Or char >= "a" And char <= "z" Or char = " " Or char = "-" Or char = "'") Then
            result.IsValid = False
            result.ErrorMessage = fieldName & " contains invalid characters."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
    Next i
    
    ' Check if name starts with letter
    Dim firstChar As String
    firstChar = UCase(Mid(name, 1, 1))
    If firstChar < "A" Or firstChar > "Z" Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " must start with a letter."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidatePatientName = result
    Exit Function
    
ErrorHandler:
    LogError "ValidatePatientName", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidatePatientName = result
End Function

'==============================================================================
' Validate date field
'==============================================================================
Public Function ValidateDateField(ctrl As Control, fieldName As String, Optional MinDate As Date, Optional MaxDate As Date) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim dateValue As Date
    
    result.ValidationType = "Date Field"
    result.ErrorField = fieldName
    
    ' Check if empty (optional)
    If TypeOf ctrl Is DTPicker Then
        If ctrl.Value = Null Then
            result.IsValid = True
            result.ErrorMessage = ""
            GoTo ExitFunction
        End If
        dateValue = ctrl.Value
    ElseIf TypeOf ctrl Is TextBox Then
        If Trim(ctrl.Text) = "" Then
            result.IsValid = True
            result.ErrorMessage = ""
            GoTo ExitFunction
        End If
        
        ' Try to parse date
        If Not IsDate(ctrl.Text) Then
            result.IsValid = False
            result.ErrorMessage = fieldName & " must be a valid date."
            ctrl.SetFocus
            GoTo ExitFunction
        End If
        dateValue = CDate(ctrl.Text)
    End If
    
    ' Check date range if specified
    If MinDate <> 0 And dateValue < MinDate Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " cannot be before " & Format(MinDate, "dd-mm-yyyy") & "."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    If MaxDate <> 0 And dateValue > MaxDate Then
        result.IsValid = False
        result.ErrorMessage = fieldName & " cannot be after " & Format(MaxDate, "dd-mm-yyyy") & "."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check if date is in the past (for future appointments)
    If fieldName = "Appointment Date" And dateValue < Date Then
        result.IsValid = False
        result.ErrorMessage = "Appointment cannot be scheduled in the past."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateDateField = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateDateField", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateDateField = result
End Function

'==============================================================================
' Validate medical history
'==============================================================================
Public Function ValidateMedicalHistory(ctrl As Control, fieldName As String) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim history As String
    
    result.ValidationType = "Medical History"
    result.ErrorField = fieldName
    
    ' Get history text
    If TypeOf ctrl Is TextBox Then
        history = Trim(ctrl.Text)
    End If
    
    ' Check if empty (optional)
    If history = "" Then
        result.IsValid = True
        result.ErrorMessage = ""
        GoTo ExitFunction
    End If
    
    ' Check minimum length for meaningful medical history
    If Len(history) < 10 Then
        result.IsValid = False
        result.ErrorMessage = "Please provide more detailed " & fieldName & "."
        ctrl.SetFocus
        GoTo ExitFunction
    End If
    
    ' Check for potentially dangerous medical terms that require attention
    Dim dangerousTerms As Variant
    Dim term As Variant
    
    dangerousTerms = Array("allergic", "allergy", "severe", "critical", "emergency", "life threatening")
    
    For Each term In dangerousTerms
        If InStr(LCase(history), CStr(term)) > 0 Then
            result.IsValid = True
            result.ErrorMessage = "Important medical information detected. Please ensure this is reviewed by medical staff."
            GoTo ExitFunction
        End If
    Next term
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateMedicalHistory = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateMedicalHistory", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateMedicalHistory = result
End Function

'==============================================================================
' Validate emergency contact
'==============================================================================
Public Function ValidateEmergencyContact(nameCtrl As Control, phoneCtrl As Control, relationshipCtrl As Control) As ValidationResult
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim nameResult As ValidationResult
    Dim phoneResult As ValidationResult
    
    result.ValidationType = "Emergency Contact"
    result.ErrorField = "Emergency Contact"
    
    ' Validate name
    nameResult = ValidatePatientName(nameCtrl, "Emergency Contact Name")
    If Not nameResult.IsValid Then
        result = nameResult
        GoTo ExitFunction
    End If
    
    ' Validate phone
    phoneResult = ValidatePhoneNumber(phoneCtrl, "Emergency Contact Phone")
    If Not phoneResult.IsValid Then
        result = phoneResult
        GoTo ExitFunction
    End If
    
    ' Validate relationship
    If TypeOf relationshipCtrl Is ComboBox Then
        If relationshipCtrl.ListIndex = -1 Or Trim(relationshipCtrl.Text) = "" Then
            result.IsValid = False
            result.ErrorMessage = "Please select relationship with emergency contact."
            result.ErrorField = "Relationship"
            relationshipCtrl.SetFocus
            GoTo ExitFunction
        End If
    End If
    
    result.IsValid = True
    result.ErrorMessage = ""
    
ExitFunction:
    ValidateEmergencyContact = result
    Exit Function
    
ErrorHandler:
    LogError "ValidateEmergencyContact", Err.Number, Err.Description
    result.IsValid = False
    result.ErrorMessage = "Validation error occurred."
    ValidateEmergencyContact = result
End Function

'==============================================================================
' Validate complete patient registration
'==============================================================================
Public Function ValidatePatientRegistration(frm As Form) As Boolean
    On Error GoTo ErrorHandler
    
    Dim result As ValidationResult
    Dim allValid As Boolean
    
    allValid = True
    
    ' Validate patient name
    result = ValidatePatientName(frm.txtPatientName, "Patient Name")
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate age
    result = ValidateAgeField(frm.txtAge, "Age")
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate contact
    result = ValidatePhoneNumber(frm.txtContact, "Contact Number")
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate address
    result = ValidateRequiredField(frm.txtAddress, "Address")
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate email (if provided)
    If frm.txtEmail.Text <> "" Then
        result = ValidateEmailField(frm.txtEmail, "Email")
        If Not result.IsValid Then
            MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
            ValidatePatientRegistration = False
            Exit Function
        End If
    End If
    
    ' Validate medical history
    result = ValidateMedicalHistory(frm.txtMedicalHistory, "Medical History")
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate emergency contact
    result = ValidateEmergencyContact(frm.txtEmergencyName, frm.txtEmergencyPhone, frm.cmbRelationship)
    If Not result.IsValid Then
        MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
        ValidatePatientRegistration = False
        Exit Function
    End If
    
    ' Validate insurance (if applicable)
    If frm.chkInsurance.Value = 1 Then
        result = ValidateRequiredField(frm.txtPolicyNumber, "Policy Number")
        If Not result.IsValid Then
            MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
            ValidatePatientRegistration = False
            Exit Function
        End If
        
        result = ValidateRequiredField(frm.cmbInsuranceProvider, "Insurance Provider")
        If Not result.IsValid Then
            MsgBox result.ErrorMessage, vbExclamation, "Validation Error"
            ValidatePatientRegistration = False
            Exit Function
        End If
    End If
    
    ValidatePatientRegistration = True
    
    Exit Function
    
ErrorHandler:
    LogError "ValidatePatientRegistration", Err.Number, Err.Description
    ValidatePatientRegistration = False
End Function

'==============================================================================
' Test validation functions
'==============================================================================
Public Sub TestValidationFunctions()
    On Error GoTo ErrorHandler
    
    Dim testForm As New Form1 ' Replace with actual form
    Dim result As ValidationResult
    
    ' Test name validation
    testForm.txtPatientName.Text = "John Doe"
    result = ValidatePatientName(testForm.txtPatientName, "Patient Name")
    Debug.Print "Name validation: " & IIf(result.IsValid, "PASS", "FAIL") & " - " & result.ErrorMessage
    
    ' Test age validation
    testForm.txtAge.Text = "25"
    result = ValidateAgeField(testForm.txtAge, "Age")
    Debug.Print "Age validation: " & IIf(result.IsValid, "PASS", "FAIL") & " - " & result.ErrorMessage
    
    ' Test phone validation
    testForm.txtContact.Text = "1234567890"
    result = ValidatePhoneNumber(testForm.txtContact, "Phone")
    Debug.Print "Phone validation: " & IIf(result.IsValid, "PASS", "FAIL") & " - " & result.ErrorMessage
    
    ' Test email validation
    testForm.txtEmail.Text = "test@example.com"
    result = ValidateEmailField(testForm.txtEmail, "Email")
    Debug.Print "Email validation: " & IIf(result.IsValid, "PASS", "FAIL") & " - " & result.ErrorMessage
    
    MsgBox "Validation tests completed. Check debug window for results.", vbInformation
    
    Exit Sub
    
ErrorHandler:
    LogError "TestValidationFunctions", Err.Number, Err.Description
    MsgBox "Validation test failed: " & Err.Description, vbCritical
End Sub
