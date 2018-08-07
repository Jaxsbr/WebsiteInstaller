# Website Installer
### Script used withing published website directory to install app pool and website in IIS
----


1.Copy both Install.ps1 and Install.bat into your websites published source files directory.
1.1E.g. C:\myWebApp\Install.ps1   C:\myWebApp\Install.bat

2.Modify the following parameters in the Install.bat file match the requirements of your website.
2.1overwriteIfExist         -> Will overwrite the website currently installed with current files found in the published location
2.2iisAppPoolName           -> Name of the app pool used to setup the website/application
2.3iisAppPoolDotNetVersion  -> Version of DotNet to configure the app pool under
2.4iisAppName               -> Name of the website/application in IIS

3.Run the Install.bat file as Administrator


