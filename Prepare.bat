@echo off
title �Ƴ�Windows Defender����
color 3f
echo ���������ʼ�Ƴ�Windows Defender...(����������)
pause >nul
cls
cd \
copy /y "%temp%\RemoveMain.bat" "%SystemDrive%\" >nul
reg add "HKLM\SYSTEM\Setup" /v CmdLine /d "cmd.exe /c %SystemDrive%\RemoveMain.bat" /t REG_SZ /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupPhase /d "3" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupType /d "2" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress /d "1" /t REG_DWORD /F >nul
cls
shutdown /r /f /t 5 && taskkill /f /im wlrmdr.exe
start mshta vbscript:msgbox("ϵͳ�����������Ƴ�Windows Defender",64,"�Ƴ�Windows Defender����")(window.close)
del /f /q "%temp%\RemoveMain.bat" >nul
del /f /q "%temp%\Prepare.bat" >nul
exit