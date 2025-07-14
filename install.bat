@echo off
SETLOCAL
SET SOURCE=MPADTE
SET TARGET=%ProgramFiles%\MPADTE
IF NOT EXIST "%SOURCE%" (
    echo Source folder %SOURCE% not found.
    exit /b 1
)
xcopy /E /I /Y "%SOURCE%" "%TARGET%"
echo @echo off > "%TARGET%\mpadte.bat"
echo "%TARGET%\mpadt.exe" %%1 >> "%TARGET%\mpadte.bat"
setx PATH "%PATH%;%TARGET%" >nul
echo Installed mpadte to %TARGET%
echo You can now run mpadte from any terminal (after restart if needed).
ENDLOCAL
