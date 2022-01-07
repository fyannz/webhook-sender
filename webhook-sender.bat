@echo off
title fyann's Webhook Sender

:main
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
set /p url=Enter your webhook URL: 
set /p content=Enter your message: 
echo Sending...
timeout /t 1 >nul
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%content%\"}" %URL%
cls
echo Message sent!
set /p ask=Send another message(y/n): 
if %ask% == y goto yes
if %ask% == n goto no

:yes
cls
goto main

:no
echo see you next time :)
timeout /t 1 <nul
exit
