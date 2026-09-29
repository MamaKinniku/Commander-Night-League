@echo off
REM Opens Commander Night in a normal browser window, with the menu bar visible.
REM Use this one when you want to Chromecast the TV display, because casting is
REM started from the browser menu that the clean app window hides.
setlocal

set "HERE=%~dp0"
set "PAGE=%HERE%index.html"
if not exist "%PAGE%" goto nofile
set "URL=file:///%PAGE:\=/%"

set "PF=%ProgramFiles%"
set "PF86=%ProgramFiles(x86)%"
set "LAD=%LocalAppData%"

set "BROWSER="
if exist "%PF%\Google\Chrome\Application\chrome.exe" set "BROWSER=%PF%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER if exist "%PF86%\Google\Chrome\Application\chrome.exe" set "BROWSER=%PF86%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER if exist "%LAD%\Google\Chrome\Application\chrome.exe" set "BROWSER=%LAD%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER if exist "%PF86%\Microsoft\Edge\Application\msedge.exe" set "BROWSER=%PF86%\Microsoft\Edge\Application\msedge.exe"
if not defined BROWSER if exist "%PF%\Microsoft\Edge\Application\msedge.exe" set "BROWSER=%PF%\Microsoft\Edge\Application\msedge.exe"

if not defined BROWSER goto fallback
start "" "%BROWSER%" --new-window "%URL%"
exit /b 0

:fallback
echo Chrome or Edge was not found in the usual places.
echo Opening in your default browser instead.
start "" "%URL%"
exit /b 0

:nofile
echo.
echo   index.html was not found next to this launcher.
echo   Keep the .bat files in the same folder as index.html.
echo.
pause
exit /b 1
