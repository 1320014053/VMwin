@echo off
title restart 自动化脚本
:again
tasklist|findstr -i "ngrok.exe"
if ERRORLEVEL 1 (
	echo ngrok is off in %Date:~0,4%-%Date:~5,2%-%Date:~8,2% %Time:~0,2%:%Time:~3,2%
	start "" "D:/a/VMwin/VMwin/ngrok/ngrok.exe" " tcp 3389"
)
 
choice /t 2 /d y /n > nul  
 
goto again
