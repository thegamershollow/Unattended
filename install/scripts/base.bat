:: MASTER: Perform a basic workstation installation
@Echo off

:: Set Automatic Updates to download and update automatically (SP2 behavior)
todo.pl "auconfig.pl --day 0 --time 3 --wait 10 4"

:: Defragment the drive to collect the free space.
todo.pl defrag.bat

:: Update windows and turn off annoying stuff.
todo.pl %%WINVER%%-updates.bat %%WINVER%%-notips.pl .reboot

:: Set IIS startup type to manual and ignore if not installed.
todo.pl ".ignore-err 255 startup-type.pl Manual IISADMIN" ".ignore-err 255 startup-type.pl Manual W3SVC"

:: Turn off Windows Messenger service
todo.pl "startup-type.pl Disabled Messenger"
