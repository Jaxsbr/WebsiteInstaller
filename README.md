# Website Installer
### Script used withing published website directory to install app pool and website in IIS
----


* Copy both Install.ps1 and Install.bat into your websites published source files directory.
** E.g. C:\myWebApp\Install.ps1   C:\myWebApp\Install.bat

* Modify the following parameters in the Install.bat file match the requirements of your website.
** overwriteIfExist         -> Will overwrite the website currently installed with current files found in the published location
+ iisAppPoolName           -> Name of the app pool used to setup the website/application
+ iisAppPoolDotNetVersion  -> Version of DotNet to configure the app pool under
+ iisAppName               -> Name of the website/application in IIS

* Run the Install.bat file as Administrator


