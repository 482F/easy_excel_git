@echo off

set R=%RANDOM%
set R=%RANDOM%
echo %R%
set /P USER_INPUT="input above number to do import: "

if not %R%==%USER_INPUT% (
    echo your input doesn't correct. stop processing.
) else (
    cscript .\easy_excel_git\vbac.wsf combine
)

pause
