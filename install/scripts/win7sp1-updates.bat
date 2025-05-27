:: Install all updates and hotfixes for Windows 7 SP1
:: Get a list from Microsoft Security Bulletins
:: http://technet.microsoft.com/en-us/security/bulletin
@Echo off
:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

:: I am pretty sure that this script does not is need.
:: Who wants to scan a clean system?
todo.pl "%Z%\scripts\win_malicious-software-removal-tool.bat"

:: https://support.microsoft.com/en-us/help/4489878/windows-7-update-kb4489878
:: URL|ALL|http://download.windowsupdate.com/c/msdownload/update/software/secu/2019/03/windows6.1-kb4489878-x86_4850c313f7149cbebe5cd718d4efa0e426aebc81.msu|updates/common/windows6.1-kb4489878-x86.msu
:: URL|ALL|http://download.windowsupdate.com/c/msdownload/update/software/secu/2019/03/windows6.1-kb4489878-x64_ad02ba6500855333621fecf1b95cc15a8950f2e8.msu|updates/common/windows6.1-kb4489878-AMD64.msu

:: https://support.microsoft.com/en-us/help/3125574/convenience-rollup-update-for-windows-7-sp1-and-windows-server-2008-r2
:: URL|ALL|http://download.windowsupdate.com/d/msdownload/update/software/updt/2016/05/windows6.1-kb3125574-v4-x64_2dafb1d203c8964239af3048b5dd4b1264cd93b9.msu|updates/common/windows6.1-kb3125574-v4-AMD64.msu
:: URL|ALL|http://download.windowsupdate.com/d/msdownload/update/software/updt/2016/05/windows6.1-kb3125574-v4-x86_ba1ff5537312561795cc04db0b02fbb0a74b2cbd.msu|updates/common/windows6.1-kb3125574-v4-x86.msu

:: https://support.microsoft.com/en-us/help/3020369/april-2015-servicing-stack-update-for-windows-7-and-windows-server-200
:: URL|ALL|http://download.microsoft.com/download/5/D/0/5D0821EB-A92D-4CA2-9020-EC41D56B074F/Windows6.1-KB3020369-x64.msu|updates/common/Windows6.1-KB3020369-AMD64.msu
:: URL|ALL|http://download.microsoft.com/download/C/0/8/C0823F43-BFE9-4147-9B0A-35769CBBE6B0/Windows6.1-KB3020369-x86.msu|updates/common/Windows6.1-KB3020369-x86.msu

:: https://support.microsoft.com/en-us/help/3102810/installing-and-searching-for-updates-is-slow-and-high-cpu-usage-occurs
:: URL|ALL|http://download.microsoft.com/download/F/A/A/FAABD5C2-4600-45F8-96F1-B25B137E3C87/Windows6.1-KB3102810-x64.msu|updates/common/Windows6.1-KB3102810-AMD64.msu
:: URL|ALL|http://download.microsoft.com/download/A/0/9/A09BC0FD-747C-4B97-8371-1A7F5AC417E9/Windows6.1-KB3102810-x86.msu|updates/common/Windows6.1-KB3102810-x86.msu


todo.pl ".reboot-on 194 %Z%\updates\common\windows6.1-kb4489878-%PROCESSOR_ARCHITECTURE%.msu /quiet /norestart"
todo.pl ".reboot-on 194 %Z%\updates\common\windows6.1-kb3125574-v4-%PROCESSOR_ARCHITECTURE%.msu /quiet /norestart"
todo.pl ".reboot-on 194 %Z%\updates\common\Windows6.1-KB3020369-%PROCESSOR_ARCHITECTURE%.msu /quiet /norestart" 
todo.pl ".reboot-on 194 %Z%\updates\common\Windows6.1-KB3102810-%PROCESSOR_ARCHITECTURE%.msu /quiet /norestart"
