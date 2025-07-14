$sourceFolder = ".\MPADTE"
$targetFolder = "$env:ProgramFiles\MPADTE"
$launcher = "$targetFolder\mpadte.ps1"
if (!(Test-Path $sourceFolder)) {
    Write-Error "Source folder $sourceFolder not found."
    exit 1
}
New-Item -ItemType Directory -Force -Path $targetFolder | Out-Null
Copy-Item -Recurse -Force "$sourceFolder\*" $targetFolder
@"
param (
    [Parameter(Mandatory = \$true)]
    [string] \$file
)
& "$($targetFolder)\mpadt.exe" \$file
"@ | Out-File $launcher -Encoding UTF8
$envPath = [Environment]::GetEnvironmentVariable("Path", "User")
if (-not ($envPath -split ";" | Where-Object { $_ -eq $targetFolder })) {
    [Environment]::SetEnvironmentVariable("Path", "$envPath;$targetFolder", "User")
    Write-Output "Added $targetFolder to user PATH (restart terminal to apply)."
}
Write-Host "Installed padli to $targetFolder"
