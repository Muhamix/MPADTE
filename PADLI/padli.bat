@echo off
IF "%~1"=="" (
    echo Usage: padli ^<filename^>.padl
    exit /b 1
)
SET SCRIPT_DIR=%~dp0
IF "%SCRIPT_DIR:~-1%"=="\" SET SCRIPT_DIR=%SCRIPT_DIR:~0,-1%
"%SCRIPT_DIR%\padl.exe" %1
