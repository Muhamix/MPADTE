param (
    [Parameter(Mandatory = $true)]
    [string]$File
)
$ScriptDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$PadlBinary = Join-Path $ScriptDir "PADLI\padl.exe"
& $PadlBinary $File
exit $LASTEXITCODE
