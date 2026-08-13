@echo off
title 移除Windows Defender工具
color 3f
echo 按任意键开始移除Windows Defender...(需重启电脑)
pause >nul
cls
cd /d "%SystemRoot%\System32"
del /f /q "%AppData%\Microsoft\Windows\Start Menu\Programs\System Tools\Windows.Defender.lnk" >nul 2>&1
del /f /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\System Tools\Windows.Defender.lnk" >nul 2>&1
reg add "HKLM\SYSTEM\Setup" /v CmdLine /d "cmd.exe /c %SystemDrive%\RemoveDefenderTool\RemoveMain.bat" /t REG_SZ /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupPhase /d "3" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SetupType /d "2" /t REG_DWORD /F >nul
reg add "HKLM\SYSTEM\Setup" /v SystemSetupInProgress /d "1" /t REG_DWORD /F >nul
cls
shutdown /r /t 5 && taskkill /f /im wlrmdr.exe
start mshta vbscript:msgbox("系统即将重启以移除Windows Defender",64,"移除Windows Defender工具")(window.close)
start wlrmdr -s 3600 -f 0 -t 移除Windows Defender工具 -m 系统即将重启以移除Windows Defender -a 10 -u rundll32.exe
exit