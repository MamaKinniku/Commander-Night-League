@echo off
setlocal

rem Opens index.html in a NORMAL browser window (with the address bar and the
rem three-dot menu), because Chromecast needs that menu to start casting.
rem App mode -- used by the other launcher -- hides it.
rem
rem Use this launcher on nights you want to cast to a TV.
rem Use "Launch Commander Night.bat" for the cleaner app-style window otherwise.
rem
rem This file must stay in the same folder as index.html.

set "HTML_PATH=%~dp0index.html"

set "CHROME1=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "CHROME2=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

rem Chrome is preferred for casting -- its Cast support is the most reliable.
if exist "%CHROME1%" (
    start "" "%CHROME1%" --new-window "file:///%HTML_PATH:\=/%"
    goto :eof
)

if exist "%CHROME2%" (
    start "" "%CHROME2%" --new-window "file:///%HTML_PATH:\=/%"
    goto :eof
)

if exist "%EDGE%" (
    start "" "%EDGE%" --new-window "file:///%HTML_PATH:\=/%"
    goto :eof
)

start "" "%HTML_PATH%"

:eof
endlocal
