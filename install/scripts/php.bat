:: Install PHP
:: HOME: http://windows.php.net/download/
:: URL|ALL|http://windows.php.net/downloads/releases/php-5.2.17-win32-VC6-x86.msi|packages/php/php-5.2.17-win32-installer.msi
@Echo off^M
todo.pl ".reboot-on 194 msiexec /qb /l* %SystemDrive%\netinst\logs\php5.txt /i %Z%\packages\php\php-5.2.17-win32-installer.msi"
