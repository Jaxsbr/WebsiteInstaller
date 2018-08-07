
    [CmdletBinding()]
    param(
        [Parameter()]
        [bool]$overwriteIfExist = $false,   
        [string]$iisAppPoolName = "myWebAppPool",
        [string]$iisAppPoolDotNetVersion = "v4.0",
        [string]$iisAppName = "myWebApp"
    )
    Process {
        Write-Host "Starting install..." -ForegroundColor Yellow

        Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted

        $executionPolicy = Get-ExecutionPolicy -Scope Process
        Write-Host ("Execution policy set to: " + $executionPolicy) -ForegroundColor Yellow

        try {
            Import-Module WebAdministration -ErrorAction Stop
        }
        catch {
            Write-Host "Failed to Import WebAdminstration Module" -ForegroundColor Red
            Write-Host "Try running executing commnand with administrative privileges" -ForegroundColor Red
            Return
        }
                
        $directoryPath = ".\" + $iisAppName

        # Navigate to the app pools root
        Set-Location IIS:\AppPools\

        # Verify app pool exist, else create it
        if (!(Test-Path $iisAppPoolName -PathType Container))
        {
            Write-Host "Creating app pool" -ForegroundColor Yellow
            $appPool = New-Item $iisAppPoolName
            $appPool | Set-ItemProperty -Name "managedRuntimeVersion" -Value $iisAppPoolDotNetVersion
        }

        # Navigate to the sites root
        Set-Location IIS:\Sites\

        # Check if site exist already, return if already installed
        if ((Test-Path $iisAppName -PathType Container) -and ($overwriteIfExist -ne $true))
        {
            Write-Host "Site already exists" -ForegroundColor Yellow
            Write-Host "Install completed" -ForegroundColor Yellow
            return;
        }

        # Create the site
        Write-Host "Creating site" -ForegroundColor Yellow

        $iisApp = New-Item $iisAppName -Bindings @{protocol="http"; bindingInformation=":80:" + $iisAppName} -PhysicalPath $directoryPath
        $iisApp | Set-ItemProperty -Name "applicationPool" -Value $iisAppPoolName

        Write-Host "Install completed" -ForegroundColor Yellow
    }