@echo OFF
REM Install Automated Instalation Kit on \aik

REM copy all the stuff \winpe_x86
REM  cd \aik\tools\petools\
REM copype.cmd x86 c:\winpe_x86

REM C:\aik\Tools\PETools\pesetenv.cmd

REM mount the base Windows PE image

 imagex /mountrw C:\winpe_x86\winpe.wim 1 C:\winpe_x86\mount

ECHO Create the folder for TFTP
 mkdir c:\pxe
 mkdir c:\pxe\Boot
 mkdir c:\pxe\Boot\Fonts


ECHO Copy the PXE boot files and the Boot.sdi file
 copy c:\winpe_x86\mount\Windows\Boot\PXE\bootmgr.exe C:\pxe\
 copy c:\winpe_x86\mount\Windows\Boot\PXE\pxeboot.n12 C:\pxe\Boot\startrom.0
 copy c:\winpe_x86\mount\Windows\Boot\Fonts\wgl4_boot.ttf C:\pxe\Boot\Fonts


 copy c:\AIK\Tools\PETools\x86\boot\boot.sdi C:\pxe\boot\

ECHO copy the bootable Windows PE image to the \Boot folder

 copy c:\winpe_x86\winpe.wim C:\pxe\boot\WinPE.wim

ECHO Configure boot configuration
cd \winpe_x86\mount\Windows\System32

 Bcdedit -createstore c:\pxe\boot\BCD


 Bcdedit -store c:\pxe\boot\BCD -create {ramdiskoptions} /d "Ramdisk options" 
 Bcdedit -store c:\pxe\boot\BCD -set {ramdiskoptions} ramdisksdidevice  boot
 Bcdedit -store c:\pxe\boot\BCD -set {ramdiskoptions} ramdisksdipath  \Boot\boot.sdi
 Bcdedit -store c:\pxe\boot\BCD -create /d "MyWinPE Boot Image" /application osloader


ECHO Unmount the current Windows PE image 
cd \
imagex /unmount /commit C:\winpe_x86\mount
