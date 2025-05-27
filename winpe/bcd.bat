@ECHO OFF

imagex /mountrw C:\winpe_x86\winpe.wim 1 C:\winpe_x86\mount

ECHO Here is the trouble. We need the guid1 from last command

cd \winpe_x86\mount\Windows\System32

 Bcdedit -store c:\pxe\boot\BCD -set {8d98e8a5-e197-11de-a093-080027130b12} systemroot \Windows
 Bcdedit -store c:\pxe\boot\BCD -set {8d98e8a5-e197-11de-a093-080027130b12} detecthal Yes
 Bcdedit -store c:\pxe\boot\BCD -set {8d98e8a5-e197-11de-a093-080027130b12} winpe Yes
 Bcdedit -store c:\pxe\boot\BCD -set {8d98e8a5-e197-11de-a093-080027130b12} osdevice ramdisk=[boot]\Boot\WinPE.wim,{ramdiskoptions}
 Bcdedit -store c:\pxe\boot\BCD -set {8d98e8a5-e197-11de-a093-080027130b12} device ramdisk=[boot]\Boot\WinPE.wim,{ramdiskoptions}

ECHO Create the BOOTMGR settings.

Bcdedit -store c:\pxe\boot\BCD -create {bootmgr} /d "Windows BootManager" 
Bcdedit -store c:\pxe\boot\BCD -set {bootmgr} timeout 30 
Bcdedit -store c:\pxe\boot\BCD -displayorder {8d98e8a5-e197-11de-a093-080027130b12} 

ECHO Unmount the current Windows PE image 
cd \
imagex /commit /unmount C:\winpe_x86\mount
