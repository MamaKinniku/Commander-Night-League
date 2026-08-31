@echo off
setlocal

rem Launches index.html in "app mode": a clean window with
rem no address bar or tabs, so it looks and feels like real software.
rem This file must stay in the same folder as index.html.

set "HTML_PATH=%~dp0index.html"

set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
set "CHROME1=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "CHROME2=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"

if exist "%EDGE%" (
    start "" "%EDGE%" --app="file:///%HTML_PATH:\=/%"
    goto :eof
)

if exist "%CHROME1%" (
    start "" "%CHROME1%" --app="file:///%HTML_PATH:\=/%"
    goto :eof
)

if exist "%CHROME2%" (
    start "" "%CHROME2%" --app="file:///%HTML_PATH:\=/%"
    goto :eof
)

rem Fallback: no Edge or Chrome found, just open in the default browser
start "" "%HTML_PATH%"

:eof
endlocal
