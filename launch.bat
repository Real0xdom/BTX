:: This bat file will run the payload which is payload.ps1 in this case
::  this prevents the contents of the batch file from being printed to the command prompt
@ECHO OFF

:: below code executes payload.ps1 file 
:: start PowerShell : starts powershell in windows 
:: -NoProfile : A potential problem that could affect PowerShell Pros is that it’s possible for them to have variables -
::  or other settings set in their PowerShell profile that could cause your script to not perform correctly
:: -ExecutionPolicy Bypass : execution policy is currently configured to not allow scripts to be ran. This argument bypasses that policy

start PowerShell -NoProfile -ExecutionPolicy Bypass -file payload.ps1
:: If your script needs to be run as admin for some reason use option below 
:: -Verb RunAs : This will make your powershell script to be run as admin
:: eg. start PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs}";