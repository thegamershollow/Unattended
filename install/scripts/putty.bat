:: OPTIONAL: Install Putty 0.67
:: HOME: http://www.chiark.greenend.org.uk/~sgtatham/putty/
:: Fix %7e -> ~
:: URL|ALL|http://the.earth.li/%7esgtatham/putty/0.67/x86/putty-0.67-installer.msi|packages/putty/putty-0.67-installer.msi
@Echo off

todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\putty.txt /norestart /i %Z%\packages\putty\putty-0.67-installer.msi"
