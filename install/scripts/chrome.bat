:: OPTIONAL:  Install Google Chrome For Work 116.0.5845.188
:: HOME: https://enterprise.google.com/chrome/chrome-browser/

:: URL|All|https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi|packages/chrome/chrome_enterprise-116.0.5845.188-x86.msi
:: URL|All|https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise64.msi|packages/chrome/chrome_enterprise-116.0.5845.188-AMD64.msi

@Echo off

todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\google_chrome.txt /i \"%Z%\packages\chrome\chrome_enterprise-116.0.5845.188-%PROCESSOR_ARCHITECTURE%.msi\" REBOOT=ReallySuppress"
