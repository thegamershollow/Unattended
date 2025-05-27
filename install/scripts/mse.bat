:: OPTIONAL: Install MS Security Essentials
:: HOME: http://support.microsoft.com/en-us/help/14210/security-essentials-download
:: URL|ENU|http://mse.dlservice.microsoft.com/download/A/3/8/A38FFBF2-1122-48B4-AF60-E44F6DC28BD8/enus/x86/mseinstall.exe|packages/mse/mseinstall-x86.exe
:: URL|ENU|http://mse.dlservice.microsoft.com/download/A/3/8/A38FFBF2-1122-48B4-AF60-E44F6DC28BD8/enus/amd64/mseinstall.exe|packages/mse/mseinstall-amd64.exe
:: URL|ESN|http://mse.dlservice.microsoft.com/download/2/A/C/2AC6E889-9EBB-4E06-A011-1AA9DAEDDB69/eses/x86/mseinstall.exe|packages/mse/mseinstall-x86.exe
:: URL|ESN|http://mse.dlservice.microsoft.com/download/2/A/C/2AC6E889-9EBB-4E06-A011-1AA9DAEDDB69/eses/amd64/mseinstall.exe|packages/mse/mseinstall-amd64.exe
:: DEFINITIONS: https://www.microsoft.com/en-us/wdsi/defenderupdates
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/VersionedSignatures/AM/1.351.225.0/1.1.18600.4/x86/mpam-fe.exe|packages/mse/mpam-fe-x86-1.351.225.0.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/VersionedSignatures/AM/1.351.225.0/1.1.18600.4/amd64/mpam-fe.exe|packages/mse/mpam-fe-amd64-1.351.225.0.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/NRI/x86/nis_full.exe|packages/mse/nis_full-x86.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/NRI/amd64/nis_full.exe|packages/mse/nis_full-amd64.exe

@Echo off
::todo.pl "\"%PROGRAMFILES%\Microsoft Security Client\msseces.exe\" /update"

:: INSTALL updates
todo.pl "%Z%\packages\mse\mpam-fe-%PROCESSOR_ARCHITECTURE%-1.349.1004.0.exe /s"

todo.pl ".reboot"

todo.pl "start /wait %Z%\packages\mse\mseinstall-%PROCESSOR_ARCHITECTURE%.exe /s /runwgacheck /o"
