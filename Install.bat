REM To inject the relative path, where you start your batch file you have to write
REM %~dp0

powershell "& '%~dp0\Install.ps1' -overwriteIfExist $false -iisAppPoolName myWebAppPool -iisAppPoolDotNetVersion v4.0 -iisAppName myWebApp"
pause