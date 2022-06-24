
::  this prevents the contents of the batch file from being printed to the command prompt
@ECHO OFF

:: this gets the directory that the batch file is in.
SET ThisScriptsDirectory=%~dp0

:: just appends the PowerShell script filename to the script directory to get the full path to the PowerShell script file
SET PowerShellScriptPath=%ThisScriptsDirectory%MyPowerShellScript.ps1

:: this is the one that actually calls the PowerShell script and contains the magic.
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%'";

