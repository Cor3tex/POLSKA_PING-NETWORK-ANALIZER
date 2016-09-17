@echo off
title POLSKA: A PING AND NETWORK TOOL
color 0A
:1
echo          ********************************
echo          *         POLSKA BY COR3       *
echo          ********************************
echo.
echo                  WHAT DO U WANNA DO?
echo.
echo - Check network activity [C]
echo - Start to Ping [P]
echo - Installed Version  [V]
echo - Help [H]
set /p x=

if "%x%"=="c" goto c
if "%x%"=="p" goto p
if "%x%"=="v" goto version
if "%x%"=="h" goto h

:c
netstat -a
echo [ENTER]
pause >NUL
goto 1

:p
echo What do u want to ping?
echo - Online Services [O]    [5 Services available]
echo.
echo [MORE IS IN DEVELOPEMENT]

set /p x=

if "%x%"=="o" goto os

:os
echo Witch online service do u want to  ping?
echo.
echo Facebook [F]
echo Yahoo    [Y]
echo Google   [G]
echo Apple    [A]
echo PAYPAL   [P]

set /p x=

if "%x%"=="f" goto f
if "%x%"=="y" goto y
if "%x%"=="g" goto g
if "%x%"=="a" goto a
if "%x%"=="p" goto p

:f
ping www.facebook.com -t -l 1200
pause >NUL

:y
ping www.yahoo.com -t -l 1200
pause >NUL

:g
ping www.google.com -t -l 1200
pause >NUL

:a
ping www.apple.com -t -l 1200
pause >NUL

:p
ping www.paypal.com -t -l 1200
pause >NUL

:version
cls
echo        INSTALLED:
echo -----------------------
echo           0.1
goto 1

:h
cls
echo Start to Ping: Ping a online Service
echo.
echo Check network activity: Displays all connections and listening ports.
echo.
goto 1
