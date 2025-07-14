@echo off
IF "%~1"=="" (
    echo Usage: mpdate ^<filename^>.mpadt
    exit /b 1
)
SET SCRIPT_DIR=%~dp0
IF "%SCRIPT_DIR:~-1%"=="\" SET SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
"%SCRIPT_DIR%\MPADTE\mpadt.exe" %1
