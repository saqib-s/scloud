$ProgramPath = "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe"
$ProgramVersion_target = '4.9.0.33' 
$ProgramVersion_current = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($ProgramPath).FileVersion

if($ProgramVersion_current -ge [System.Version]$ProgramVersion_target){
    Write-Host "Found it!"
}
