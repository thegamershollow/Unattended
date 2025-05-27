:: MASTER: Install a developer workstation
@Echo off
:: C:\Perl\bin\HEAD conflicts with Cygwin version (because Windows is
:: case-insensitive), so delete it.
del C:\Perl\bin\HEAD

todo.pl php.bat 7-zip.bat emacs.bat cygwin.bat vs6.bat vsnet.bat msdn.bat %%WINVER%%-symbols.bat

todo.pl base.bat 
