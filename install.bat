@echo off
SETLOCAL
SET SOURCE=PADLI
SET TARGET=%ProgramFiles%\Padli
IF NOT EXIST "%SOURCE%" (
    echo Source folder %SOURCE% not found.
    exit /b 1
)
xcopy /E /I /Y "%SOURCE%" "%TARGET%"
echo @echo off > "%TARGET%\padli.bat"
echo "%TARGET%\bin\padl.exe" %%1 >> "%TARGET%\padli.bat"
setx PATH "%PATH%;%TARGET%" >nul
echo Installed padli to %TARGET%
echo You can now run padli.bat from any terminal (after restart if needed).
ENDLOCAL
