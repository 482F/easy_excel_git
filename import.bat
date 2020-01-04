@echo off

set NAME=%CD%
set NAME=%NAME:~-10%
echo %NAME%
set /P USER_INPUT="input above string to do import: "

if not %NAME%==%USER_INPUT% (
    echo your input doesn't correct. stop processing.
    pause
    exit
)

set R=%RANDOM%
set R=%RANDOM%
echo %R%
set /P USER_INPUT="input above number to do import: "

if not %R%==%USER_INPUT% (
    echo your input doesn't correct. stop processing.
) else (
    cscript .\vbac.wsf combine
)

pause
