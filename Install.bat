powershell "& '%~dp0\Install.ps1' -overwriteIfExist $false -iisAppPoolName myWebAppPool -iisAppPoolDotNetVersion v4.0 -iisAppName myWebApp"
pause
