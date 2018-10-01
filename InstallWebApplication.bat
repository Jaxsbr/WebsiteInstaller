powershell "Unblock-File -Path '%~dp0\InstallWebApplication.ps1'"
powershell "& '%~dp0\InstallWebApplication.ps1' -overwriteIfExist $false -iisAppPoolName myWebAppPool -iisAppPoolDotNetVersion -iisAppName myWebApp -hostName localhost"
pause
