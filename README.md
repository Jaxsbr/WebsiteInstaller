# Website Installer
### Script used withing published website directory to install app pool and website in IIS
----


* Copy both _Install.ps1 and _Install.bat into your websites published source files directory.
  * E.g. C:\myWebApp\_Install.ps1   C:\myWebApp\_Install.bat
* Modify the following parameters in the _Install.bat file to match the requirements of your website.
  * overwriteIfExist         -> Will overwrite the website currently installed with current files found in the published location
  * iisAppPoolName           -> Name of the app pool used to setup the website/application
  * iisAppPoolDotNetVersion  -> Version of DotNet to configure the app pool under. Leave empty for un managed.
  * iisAppName               -> Name of the website/application in IIS
  * hostName                 -> Name used to access the website in browser, defaults to localhost
  * hostFilePath             -> Location hosts file, used for dns mapping. Only needs to be changed if C:\ drive is not the OS disk
  * autoLaunchOnCompletion   -> Automatically launch website with default browser on completion
* Run the Install.bat file as Administrator


