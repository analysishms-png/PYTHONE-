'VA: 94D8B4
Private Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (pOpenfilename As OPENFILENAME) As Long
'VA: 94BF3C
Private Declare Sub SHGetPathFromIDListA Lib "Shell32.dll"()
'VA: 94BEEC
Private Declare Sub SHGetSpecialFolderLocation Lib "Shell32.dll"()
'VA: 94BD38
Private Declare Sub InternetGetConnectedState Lib "wininet.dll"()
'VA: 680798
Private Declare Sub SerialNo_FromNow Lib "btlock57L.DLL"()
'VA: 68074C
Private Declare Sub Read_Data Lib "btlock57L.DLL"()
'VA: 6806F8
Private Declare Sub Write_Data Lib "btlock57L.DLL"()
'VA: 6806B4
Private Declare Sub Read_Guest_PowerSwitch Lib "btlock57L.DLL"()
'VA: 680664
Private Declare Sub Write_Guest_PowerSwitch Lib "btlock57L.DLL"()
'VA: 680614
Private Declare Sub Read_Guest_Lift Lib "btlock57L.DLL"()
'VA: 6805CC
Private Declare Sub Write_Guest_Lift Lib "btlock57L.DLL"()
'VA: 680580
Private Declare Sub Reader_Alarm Lib "btlock57L.DLL"()
'VA: 680538
Private Declare Sub Write_Guest_Card Lib "btlock57L.DLL"()
'VA: 68016C
Private Declare Sub Read_Guest_Card Lib "btlock57L.DLL"()
'VA: 6335D4
Private Declare Sub SetLayeredWindowAttributes Lib "user32"()
'VA: 6335A0
Private Declare Function SetPixel Lib "gdi32" Alias "SetPixel" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal crColor As Long) As Long
'VA: 6333C4
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
'VA: 63337C
Private Declare Function GetHandleInformation Lib "kernel32" Alias "GetHandleInformation" (ByVal hObject As Long, lpdwFlags As Long) As Long
'VA: 632FF8
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
'VA: 621148
Private Declare Sub ZpArchive Lib "zip32.dll"()
'VA: 621104
Private Declare Sub ZpGetOptions Lib "zip32.dll"()
'VA: 6210BC
Private Declare Sub ZpSetOptions Lib "zip32.dll"()
'VA: 621074
Private Declare Sub ZpInit Lib "zip32.dll"()
'VA: 621024
Private Declare Sub UzpVersion2 Lib "unzip32.dll"()
'VA: 620FCC
Private Declare Sub Wiz_SingleEntryUnzip Lib "unzip32.dll"()
'VA: 615E58
Private Declare Function GetKeyState Lib "user32" Alias "GetKeyState" (ByVal nVirtKey As Long) As Integer
'VA: 615E14
Private Declare Function GetKeyboardLayoutName Lib "user32" Alias "GetKeyboardLayoutNameA" (ByVal pwszKLID As String) As Long
'VA: 615DC8
Private Declare Function MapVirtualKeyEx Lib "user32" Alias "MapVirtualKeyExA" (ByVal uCode As Long, ByVal uMapType As Long, ByVal dwhkl As Long) As Long
'VA: 615D94
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
'VA: 615D4C
Private Declare Function VkKeyScan Lib "user32" Alias "VkKeyScanA" (ByVal cChar As Byte) As Integer
'VA: 615D08
Private Declare Sub SendInput Lib "user32"()
'VA: 60C2D4
Private Declare Function GetCurrentThreadId Lib "kernel32" Alias "GetCurrentThreadId" () As Long
'VA: 60C288
Private Declare Sub NetMessageBufferSend Lib "Netapi32.dll"()
'VA: 60C238
Private Declare Function NetWkstaGetInfo Lib "Netapi32.dll" (lpServer As Any, ByVal Level As Long, lpBuffer As Any) As Long
'VA: 60C1F0
Private Declare Sub lstrcpynW Lib "kernel32"()
'VA: 60C19C
Private Declare Function lstrcpyn Lib "kernel32" Alias "lstrcpynA" (ByVal lpString1 As String, ByVal lpString2 As String, ByVal iMaxLength As Long) As Long
'VA: 60C15C
Private Declare Sub lstrcpyW Lib "kernel32"()
'VA: 60C118
Private Declare Sub NetServerEnum Lib "Netapi32.dll"()
'VA: 60C0BC
Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 60C074
Private Declare Sub lstrlenW Lib "kernel32"()
'VA: 60C030
Private Declare Sub NetApiBufferFree Lib "netapi32"()
'VA: 60BFEC
Private Declare Sub NetUserEnum Lib "netapi32"()
'VA: 60BF98
Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 60BF54
Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As Any, ByVal fuWinIni As Long) As Long
'VA: 60BF04
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
'VA: 60BEBC
Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
'VA: 60BE68
Private Declare Function GetCurrentProcessId Lib "kernel32" Alias "GetCurrentProcessId" () As Long
'VA: 60BE1C
Private Declare Sub RegisterServiceProcess Lib "kernel32"()
'VA: 60BDB8
Private Declare Function IsWindowEnabled Lib "user32" Alias "IsWindowEnabled" (ByVal hwnd As Long) As Long
'VA: 60BD70
Private Declare Function IsWindowVisible Lib "user32" Alias "IsWindowVisible" (ByVal hwnd As Long) As Long
'VA: 60BD28
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 60BCE0
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
'VA: 60BC9C
Private Declare Function IsZoomed Lib "user32" Alias "IsZoomed" (ByVal hwnd As Long) As Long
'VA: 60BC34
Private Declare Function IsWindow Lib "user32" Alias "IsWindow" (ByVal hwnd As Long) As Long
'VA: 60BBF0
Private Declare Function IsIconic Lib "user32" Alias "IsIconic" (ByVal hwnd As Long) As Long
'VA: 60BBAC
Private Declare Function IsChild Lib "user32" Alias "IsChild" (ByVal hWndParent As Long, ByVal hwnd As Long) As Long
'VA: 60BB6C
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
'VA: 60BB24
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
'VA: 60BAD4
Private Declare Function EnumWindows Lib "user32" (ByVal lpEnumFunc As Long, ByVal lParam As Long) As Long
'VA: 606D24
Private Declare Sub Sleep Lib "kernel32" Alias "Sleep" (ByVal dwMilliseconds As Long)
'VA: 6055A4
Private Declare Sub InternetGetConnectedStateEx Lib "wininet.dll"()
'VA: 60553C
Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
'VA: 6054F8
Private Declare Sub inet_ntoa Lib "wsock32.dll"()
'VA: 6054B4
Private Declare Sub inet_addr Lib "wsock32.dll"()
'VA: 605460
Private Declare Sub GetRTTAndHopCount Lib "iphlpapi.dll"()
'VA: 605400
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 6053BC
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 605370
Private Declare Sub gethostbyname Lib "wsock32"()
'VA: 60531C
Private Declare Sub InternetGetConnectedState Lib "wininet"()
'VA: 6052BC
Private Declare Sub ShellExecuteA Lib "Shell32.dll"()
'VA: 601F88
Private Declare Function GetCursorPos Lib "user32" Alias "GetCursorPos" (lpPoint As POINTAPI) As Long
'VA: 5FB86C
Private Declare Function CreateRoundRectRgn Lib "gdi32" Alias "CreateRoundRectRgn" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long, ByVal X3 As Long, ByVal Y3 As Long) As Long
'VA: 5FB814
Private Declare Function SetWindowRgn Lib "user32" Alias "SetWindowRgn" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
'VA: 5FB7B4
Private Declare Function RegCloseKey Lib "advapi32.dll" Alias "RegCloseKey" (ByVal hKey As Long) As Long
'VA: 5FB770
Private Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value.
'VA: 5FB728
Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value. 
'VA: 5FB6DC
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 5F78B8
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'VA: 5F786C
Private Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 5F77C4
Private Declare Function GetMenuItemCount Lib "user32" Alias "GetMenuItemCount" (ByVal hMenu As Long) As Long
'VA: 5F7778
Private Declare Function DrawMenuBar Lib "user32" Alias "DrawMenuBar" (ByVal hwnd As Long) As Long
'VA: 5F7734
Private Declare Function RemoveMenu Lib "user32" Alias "RemoveMenu" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
'VA: 5F76F0
Private Declare Function GetSystemMenu Lib "user32" Alias "GetSystemMenu" (ByVal hwnd As Long, ByVal bRevert As Long) As Long
'VA: 5F769C
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 5F6944
Private Declare Function SetWindowPos Lib "user32" Alias "SetWindowPos" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
'VA: 5F68F0
Private Declare Sub CreateFieldDefFile Lib "p2smon.dll"()

