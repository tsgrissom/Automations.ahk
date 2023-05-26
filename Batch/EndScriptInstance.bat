@echo off
setlocal

if "%~1"=="" (
  echo No filename provided.
  exit /b
)

set "filename=C:\Users\Tyler\AutoHotkeyScripts\Temp\%~1.txt"

if not exist %filename% (
  echo File "%filename%" does not exist.
  exit /b
)

set "fileContents="
for /f "usebackq delims=" %%a in ("%filename%") do (
  set "fileContents=%%a"
)

taskkill /PID %fileContents%
del %filename%

endlocal