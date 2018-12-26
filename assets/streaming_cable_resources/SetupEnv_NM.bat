@echo off
setlocal enabledelayedexpansion
echo %cd%|find /i "system32" >nul
if %errorlevel%==1 (
echo Please run as administrator.
pause
goto :e
)
for /f "tokens=3 delims=: " %%a in (
    'cscript //nologo "%systemroot%\system32\slmgr.vbs" /dli ^| find "License Status:"' 
) do set "licenseStatus=%%a"

if /i "%licenseStatus%"=="Licensed" (
	goto :licensed
) 
echo Allow blank password use (Unactivated win10 pro only).
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa" /v LimitBlankPasswordUse /t reg_dword /d 0 /f
:licensed
exit
