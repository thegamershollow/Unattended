<?php
$title         = 'Frequently Asked Questions';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'step-by-step.php';
$page['next']  = 'unattendtxt.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Frequently Asked Questions', 'faq');
$content       = <<<EOT

      <h1 id="faq" style="border-top: none; padding-top: 0;">Frequently  Asked  Questions
        </h1>
      <p>The main Unattended documentation is perpetually out-of-date irrespective of  an
      ongoing attempt of re-writing it. It is still mostly accurate, but it is incomplete
      because we tend to add new features without updating the docs.</p>
      <p>This is partly a Frequently Asked  Questions  (FAQ)  list,  and  partly  just  a
        collection of pointers to bits of wisdom from the <a href="http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/"
        rel="external">unattended-info mailing list</a>.</p>

      <h2>[1] DOS-Boot disks</h2>
      <a href="#1_1">[1.1] Is the DOS boot disk supposed to crash?</a><br />

      <h2>[2] Linux-Boot disk</h2>
      <a href="#2_1">[2.1] Did you say &quot;Linux boot disk&quot;?</a><br />
      <a href="#2_2">[2.2] Is the Linux boot disk actually supposed to work?</a><br />

      <h2>[3] Network issues</h2>
      <a href="#3_1">[3.1] I am having trouble mapping the install share.</a><br />
      <a href="#3_2">[3.2] Can I install over a wireless LAN?</a><br />

      <h2>[4] Hardware issues</h2>
      <a href="#4_1">[4.1] I get &quot;No system disk or disk error&quot; when I boot from CD-ROM or network using the DOS boot disk.</a><br />
      <a href="#4_2">[4.2] Can I use a serial console?</a><br />

      <h2>[5] OS-specific issues</h2>
      <a href="#5_1">[5.1] Can I install Windows NT?</a><br />
      <a href="#5_2">[5.2] Can I install Windows 95/98/ME?</a><br />
      <a href="#5_3">[5.3] Is FAT -&gt; NTFS conversion a bad idea?</a><br />

      <h2>[6] Why do you...?</h2>
      <a href="#6_1">[6.1] Why do you always install IIS?</a><br />
      <a href="#6_2">[6.2] Why do you reboot so many times instead of using QChain?</a><br />

      <h2>[7] How do I...?</h2>
      <a href="#7_1">[7.1] How do I enable the Windows XP Internet Connection Firewall?</a><br />
      <a href="#7_2">[7.2] How do I add a TCP/IP (LPD) printer from a script?</a><br />
      <a href="#7_3">[7.3] How do I control the volume (disable sound) unattended?</a><br />
      <a href="#7_4">[7.4] How do I add multiple third-party mass-storage drivers?</a><br />
      <a href="#7_5">[7.5] How do I keep the OS- and software-installation-scripts up-to-date?</a><br />
      <a href="#7_6">[7.6] How do I create a user and prevent expiration of his password?</a><br />

      <h2>[8] Can I...?</h2>
      <a href="#8_1">[8.1] Can I use Cygwin to rebuild the disk images on Windows?</a><br />
      <a href="#8_2">[8.2] Can I boot from a USB flash drive (memory key)?</a><br />
      <a href="#8_3">[8.3] Can I use todo.pl to install applications without installing the OS?</a><br />
      <a href="#8_4">[8.4] Can I install from DVD-ROM instead of a network share?</a><br />

      <h2>[9] Problems with sourceforge</h2>
      <a href="#9_1">[9.1] Why is the mailing list so slow?</a><br />
      <a href="#9_2">[9.2] Why script-update is no longer working?</a><br />

      <hr />

      <h2>The answers</h2>
      <a name="1_1"></a><h3>[1.1] Is the DOS boot disk supposed to crash?</h3>
      <p>Not usually.</p>
      <p>Starting with version 4.0 of Unattended, we switched  from  MS-DOS  to  FreeDOS.
        Apart from general principles (we like  free  software),  this  avoids  potential
        legal issues. But FreeDOS is still under development,  and  it  occasionally  has
        difficulty with some hardware.</p>
      <p>The UMB provider in particular  can  be  somewhat  touchy.   Try  editing  <span
        class="code-inline">config.sys</span>  to   comment  out  the  loading  of  <span
        class="code-inline">EMM386.EXE</span>,   or  to  load  <span  class="code-inline"
        >UMBPCI.SYS</span> instead. Commenting out both is the most reliable path, but it
        may leave insufficient conventional memory for the Windows installer to run.</p>

      <hr />

      <a name="2_1"></a><h3>[2.1] Did you say "Linux boot disk"?</h3>
      <p>Why, yes, I did. And if you are  using  it,  you  should  definitely  read  this
        section.</p>
      <p>Traditionally, Unattended had you boot to  DOS  to  start  the  installation  of
        Windows.</p>
      <p>It works fine, usually, but DOS has certain <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01030.html"
        rel="external">limitations</a> which we avoid by using Linux.</p>

      <p>Starting with Unattended 4.0, we are shipping a Linux boot disk in  addition  to
        the DOS boot disk.  Note that this is not for installing  Linux;  we  are  simply
        booting a custom diskless Linux system to initiate the installation  of  Windows.
        The Linux boot disk is quite mature now, and it works a lot  like  the  DOS  boot
        disk.  It runs the same Perl code,  in fact,  which we think is kind of neat.  At
        present, it only supports booting from CD-ROM  (using the linuxboot/linuxboot.iso
        image) or network (using the linuxboot/tftpboot tree).</p>

      <p>You can upgrade a pre-4.0 version of Unattended to use the Linux  boot  disk  by
        just <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01324.html"
        rel="external">copying some new stuff</a> to the <code>Z:</code> drive.</p>

      <p>If you are booting from the network,  you can override the bootdisk defaults (Z:
        share, username, password) by <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01332.html"
        rel="external">editing   pxelinux.cfg/default</a>   or   by   <a   rel="external"
        href="http://www.mail-archive.com/unattended-devel@lists.sourceforge.net/msg00110.html"
        >setting DHCP option 233</a>.</p>

      <p>If you are using Samba 3.x as your  Unattended  server,  you  probably  have  to
        disable the unix extensions-feature, because it breaks Unattended. Simply add</p>
<pre class="code">[global]
unix extensions = off
</pre><p>to your smb.conf. See <a
      href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01312.html"
      rel="external">this message</a> for details.</p>
      <hr />

      <a name="2_2"></a><h3>[2.2] Is the Linux boot disk actually supposed to work? </h3>
      <p>Yes, and if it does not work for you, we are very interested in fixing  it.  The
        boot disk uses Linux kernel 2.6, which is still maturing.</p>

      <p>One common problem is with ACPI support in Linux, which  is  under  very  active
        development. If the boot disk has trouble with your hardware,  try  booting  with
        ACPI support disabled. Hold down the <kbd>Shift</kbd> key  while  booting,  which
        will present a boot: prompt. Then type</p>
<pre class="code">
unattended acpi=off
</pre><p>and press <kbd>Enter</kbd>. If this helps, the bug is in the Linux ACPI  support
       and we would like to report it to the Linux developers.  (We would disable ACPI by
       default, but then some hardware <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01557.html"
       rel="external">would not work at all</a>.)</p>

       <p>Also   try    using    <span    class="code-inline">noapic</span>    or   <span
         class="code-inline">nolapic</span>   instead  of  (or  in   addition  to)  <span
         class="code-inline">acpi=off</span>. These disable the 2.6 kernel's new APIC and
         &quot;local APIC&quot; support, which may help in rare cases.</p>

       <p>If none of these work, perhaps your network or mass storage hardware is not yet
         supported by our boot disk.   Usually,  this  just  means  our  code  to  detect
         hardware and load drivers needs tweaking, since Linux itself  has  fairly  broad
         hardware support. But we need somebody who actually has the hardware to report a
         problem and test our fixes, so please let us know and help us out.</p>

       <p>Another common problem is with <a href="http://www.mail-archive.com/unattended-devel@lists.sourceforge.net/msg00274.html"
         rel="external">case sensitivity</a>, especially if you have <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01991.html"
         rel="external">RequireSecuritySignature</a> enabled  on  your  file  server  (as
         Windows&nbsp;Server&nbsp;2003 does by default).  The usual symptom is  that  the
         installation script is unable to find any  OS  directories,  because  the  files
         within  have   names  like  <span  class="code-inline">I386\\TXTSETUP.SIF</span>
         instead of <span class="code-inline">i386\\txtsetup.sif</span>. The solution  is
         to rename all of the files on the installation  media  to  lower  case.  The  <a
         href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/tools/lower-caseify.pl"
         >lower-caseify.pl</a> script automates this.</p>

      <hr />

      <a name="3_1"></a><h3>[3.1] I am having trouble mapping the install share.</h3>
      <p>The install share must be an actual share  like<code>\\\\server\\install</code>,
        not a subfolder like <code>\\\\server\\install\\subfolder</code>.</p>

      <p>With the DOS boot disk, you must <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01473.html"
        rel="external">use a NetBIOS (or WINS) name</a> for the server, not  a  DNS  name
        nor IP address.  This is a limitation of  the  MSCLIENT  network  stack;  if  you
        figure out how to fix it, let us know.  (Loading  <code>dnr.exe</code>  does  not
        seem to help).</p>

      <p>With the Linux boot disk, it is the other way around; you must use a DNS name or
        IP address, not a NetBIOS name.  We can change this pretty easily, so let us know
        if it bothers you.</p>

      <hr />

      <a name="3_2"></a><h3>[3.2] Can I install over a wireless LAN?</h3>

      <p><a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00212.html"
        rel="external">Yes</a>, with the help of a commercial product.</p>

      <p>Adding wireless support to our (free) DOS boot disk would be difficult,  because
      as far as I know, there are no wireless drivers for DOS.</p>

      <p>Adding  wireless  support  to  our  Linux  boot  disk  is  a  Simple  Matter  of
        Programming, at least for the wireless devices which Linux supports.  Call  it  a
    <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/TODO.txt"
    >"to-do" item</a>. The hard part is designing and implementing  an  interface  to
    let the user set the wireless parameters (like ESSID).  If you would like to help
    tackle  this,  subscribe  to  the  <a  href="lists.php">unattended-devel  mailing
    list</a> and ask what's up.</p>

      <hr />

      <a name="4_1"></a><h3>[4.1] I get &quot;No system disk or disk error&quot; when I boot from CD-ROM or network using the DOS boot disk.</h3>
      <p>This usually happens on laptops without a floppy drive. Our CD-ROM (and PXE) DOS
        boot uses a "virtual floppy" provided by <a href="http://syslinux.zytor.com/memdisk.php"
        rel="external"><code>memdisk</code></a>, so you must enable floppy  disk  support
    in your BIOS even if you have no physical drive.</p>

      <p>The Toshiba Tecra S1  has  an  additional  problem:  You  must  <em>disable</em>
        &quot;USB  legacy  floppy  emulation&quot;  before  memdisk  will  work.  See  <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01293.html"
        rel="external">this thread</a> and <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00521.html"
        rel="external">this message</a> from the mailing list.</p>

      <hr />

      <a name="4_2"></a><h3>[4.2] Can I use a serial console?</h3>
      <p>Yes, using either the <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01156.html"
        rel="external">DOS-based</a> or the <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01489.html"
        rel="external">Linux-based</a> boot disk.</p>

      <hr />

      <a name="5_1"></a><h3>[5.1] Can I install Windows NT?</h3>
      <p><a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01211.html"
        rel="external">Not right now</a>. Patches are welcome.</p>

      <hr />

      <a name="5_2"></a><h3>[5.2] Can I install Windows 95/98/ME?</h3>
      <p>No.</p>

      <hr />

      <a name="5_3"></a><h3>[5.3] Is FAT -&gt; NTFS conversion a bad idea?</h3>
      <p>As Microsoft describes in "<a
        href="http://www.microsoft.com/whdc/system/winpreinst/ntfs-preinstall.mspx"
        rel="external">NTFS Preinstallation and Windows XP</a>", FAT&nbsp;-&gt;&nbsp;NTFS
        conversion normally results in  a  file  system  with  512-byte  clusters  and  a
        fragmented Master File Table (MFT).</p>

      <p>With Windows XP, Microsoft provides two tools (OFORMAT and CVTAREA)  to  address
        these problems. <a href="http://sourceforge.net/mailarchive/message.php?msg_id=7202531"
        rel="external">I asked</a> the FreeDOS folks about running OFORMAT under FreeDOS,
        and    <a    href="http://sourceforge.net/mailarchive/message.php?msg_id=7094304"
        rel="external">they responded</a> by adding a switch (<code>/a</code>) to FreeDOS
        FORMAT which does the same thing. Unattended now uses this switch, so we get a 4K
        cluster size after NTFS conversion, at least on  Windows XP  and  Windows  Server
        2003.</p>

      <p>Using CVTAREA is on our <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/TODO.txt"
        >&quot;to-do&quot; list</a>.</p>

      <p>That  said,  I  and  others  have  installed  hundreds of machines without using
        OFORMAT nor CVTAREA, and they work fine.</p>

      <hr />

      <a name="6_1"></a><h3>[6.1] Why do you always install IIS?</h3>
      <p><a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01130.html"
        rel="external">We have reasons</a>. You can disable it by adding these  lines  to
      <code>Z:\\site\\unattend.txt</code>:</p>
<pre class="code">
[Components]
     ; Do not install IIS
     iis_common=Off
     iis_inetmgr=Off
     iis_www=Off
     iis_pwmgr=Off
     iis_doc=Off
</pre>
      <br />

      <hr />

      <a name="6_2"></a><h3>[6.2] Why do you  reboot  so  many  times  instead  of  using
        QChain?</h3>
      <p>Because Pat <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00167.html"
        rel="external">does</a> <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00448.html"
        rel="external">not</a> <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00705.html"
        rel="external">trust</a> QChain.</p>

      <hr />

      <a name="7_1"></a><h3>[7.1] How do I  enable  the  Windows XP  Internet  Connection
        Firewall?</h3>
      <p>You can also use the following settings in unattend.txt:</p>
<pre class="code">
[Networking]
    ; This will turn on IP-filtering, but with all ports allowed :-<
    ;
[NetProtocols]
    MS_TCPIP = params.MS_TCPIP

[params.MS_TCPIP]
    EnableSecurity = Yes

    ; This will Enable the XP Firewall, but only after first boot.
    ; During install there's no firewall.
    ; This also only enables the firewall for the default (first) connection.
    ;
[NetAdapters]
    Adapter1=params.Adapter1

[params.Adapter1]
    INFID=*

[Homenet]
    InternetConnectionFirewall = Adapter1
</pre><br />

      <hr />

      <a name="7_2"></a><h3>[7.2] How do I add a TCP/IP (LPD) printer from a script?</h3>
      <p>With Windows 2000 and higher, and assuming your printers support it, you can use
      the Internet Printing Protocol (IPP) instead of LPD. This lets you use an HTTP  URL
      to specify the printer. Most modern network printers support IPP.</p>

      <p>Pat once made a USENET post describing how to <a
        href="http://groups.google.com/groups?threadm=s5gptgh4811.fsf%40patl%3Dusers.sf.net"
        rel="external">configure an HP LaserJet 4050</a> automatically.</p>

      <hr />

      <a name="7_3"></a><h3>[7.3] How do I control the volume (disable sound) unattended?
        </h3>
      <p>See <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01050.html"
        rel="external">this thread</a> and <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg02007.html"
        rel="external">this message</a> from the mailing list.</p>

      <hr />

      <a name="7_4"></a><h3>[7.4] How do I add multiple third-party mass-storage drivers?
        </h3>
      <p>This comes up on the mailing list <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00992.html"
        rel="external">now</a> and <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01010.html"
        rel="external">then</a>.  At the moment, you must have a good understanding of <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00107.html"
        rel="external">TXTSETUP.OEM</a> files,  because you must create one by hand which
        incorporates all of your drivers. Writing a tool to help automate this is on  our
        <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/TODO.txt"
        >to-do list</a>.</p>

      <hr />

      <a name="7_5"></a><h3>[7.5] How do I keep the OS- and software-installation-scripts
        up-to-date?</h3>
      <p>Between two releases you can update your script  files  from  our  cvs.  The  <a
       href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/tools/script-update"
       >script-update</a> script automates this.</p>
       <p>You can exclude certain scripts from being updated. But  be  warned:  sometimes
       the scripts in the cvs get broken. Usually they get fixed very soon thereafter, so
       check back soon if you get problems after a script update.</p>

      <hr />

      <a name="7_6"></a><h3>[7.6] How do I create a user and prevent  expiration  of  his
        password?</h3>
      <p>You can use the <code>net user</code> command to  create  a  user. Unfortunately
        there is no option to prevent the expiration of the password.</p>
      <p>You can use the following <a href="http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg04108.html"
        rel="external">perl script</a> to correct that:</p>
<pre class="code">
use Warnings;
use Win32::NetAdmin;

my \$user = shift;

if (\$user) {
    my (\$password, \$passwordAge, \$privilege, \$homeDir, \$comment, \$flags, \$scriptPath);
    Win32::NetAdmin::UserGetAttributes(&quot;&quot;, \$user, \$password, \$passwordAge, \$privilege,
        \$homeDir, \$comment, \$flags, \$scriptPath);
    \$flags = \$flags | UF_DONT_EXPIRE_PASSWD;
    Win32::NetAdmin::UserSetAttributes(&quot;&quot;, \$user, \$password, \$passwordAge, \$privilege,
        \$homeDir, \$comment, \$flags, \$scriptPath);
} else {
    print &quot;You must pass a username as an argument.\\n&quot;
}
</pre>
      <p>Alternatively you can use the command:</p>
<pre class="code">
net accounts /maxpwage:unlimited
</pre>
      <p>Unfortunately, this command affects all user accounts.</p>

      <hr />

      <a name="8_1"></a><h3>[8.1] Can I use Cygwin to rebuild the disk images on Windows?
        </h3>
      <p>For the DOS boot disk, <a href="cygwin.html">yes</a>.</p>
      <p>For the Linux boot disk, no.  Probably not, anyway.</p>

      <hr />

      <a name="8_2"></a><h3>[8.2] Can I boot from a USB flash  drive  (memory  key)?</h3>
      <p>Yes, using the Linux-based boot  disk.  (To  USB-boot  the  DOS  disk,  see   <a
        href="http://www.mail-archive.com/unattended-devel@lists.sourceforge.net/msg00157.html"
        rel="external">Eugene's instructions</a>.)</p>

      <p>I got this working on a <a href="http://froogle.google.com/froogle?q=sdcz2-256-a10"
        rel="external">256M Sandisk Cruzer Mini</a>, but the procedure should be the same
        for any USB drive.</p>

      <p>I used a Linux machine to prep the drive. You can probably use a Windows machine
        to do all of this stuff;  if you figure it out,   feel free to let us know and we
        will update these instructions.</p>

      <p>First,  I needed  to repartition and  reformat the drive,  because the  original
        partition table was an unholy mess which confused the boot loader.  I plugged the
        drive into my RedHat 9 Linux machine and used  &quot;dmesg&quot;  to see that  it
        was autoprobed as <code>/dev/sda</code>. (It may have a  different  name on  your
        system, especially if you already have SCSI disks.) Then I ran:</p>
<pre class="code">
parted /dev/sda mklabel msdos
# Use double-dash to prevent Parted from treating -0 as a switch
parted -- /dev/sda mkpartfs primary fat16 0 -0
parted /dev/sda set 1 boot on
</pre>

      <p>These commands blow away the existing partition table,  create and format a  new
        FAT16  partition  spanning  the   entire   drive,   and   mark   that   partition
        &quot;active&quot; (bootable), respectively.  Obviously, I used Parted; you could
        presumably use <code>fdisk</code> and <code>mkdosfs</code> instead.</p>

      <p>Then I wrote a script (<a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/linuxboot/tools/install-mbr.pl"
        >install-mbr.pl</a>)  to  replace the  Master Boot Record.  This script is in the
        <code>linuxboot/tools</code> directory of the Unattended distribution. Just about
        any MBR should work, but I installed the one from FreeDOS:</p>
<pre class="code">
cd .../unattended-4.1/linuxboot
tools/install-mbr.pl misc/freedos-mbr.bin /dev/sda
</pre>
      <p>Next, I ran the <a href="http://syslinux.zytor.com/" rel="external">SYSLINUX</a>
        installer on the drive:</p>
<pre class="code">
syslinux /dev/sda1
</pre>
      <p>The SYSLINUX distribution includes an installer which will run under Linux, DOS,
        and Windows. Well, three different installers, actually...  But they do the  same
        thing, which is to install the SYSLINUX boot sector and the LDLINUX.SYS auxiliary
        file onto the drive.</p>
      <p>Finally, I copied <code>bzImage</code>,  <code>initrd</code>,  and the  PXELINUX
        configuration file from the Linux-based boot disk to the USB stick:</p>
<pre class="code">
mount /dev/sda1 /mnt
cd .../unattended-4.1/linuxboot
cp tftpboot/{bzImage,initrd} /mnt
cp tftpboot/pxelinux.cfg/default /mnt/syslinux.cfg
umount /mnt
</pre>
      <p>The  penultimate  step  renames  pxelinux.cfg/default  to  syslinux.cfg. This is
        because PXELINUX and SYSLINUX use different names for their  configuration files,
        although  the  files  have  essentially  the  same  syntax;   see  the   SYSLINUX
        documentation for details.</p>
      <p>To actually use the bootable USB key, your  BIOS  must  support booting from USB
        hard drives (not just floppy drives).  Generally, desktops from 2003 or later and
        laptops from 2004 or later have this support,   while earlier machines may or may
        not. Consult your BIOS documentation or ask your system vendor.</p>

      <hr />

      <a name="8_3"></a><h3>[8.3] Can I  use  todo.pl  to  install  applications  without
        installing the OS?</h3>
      <p>Yes, although not as easily as we would like. I use <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01245.html"
        rel="external">this procedure</a>. See also <a
        href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01477.html"
        rel="external">this thread</a> on the mailing list.</p>
      <p>See    also    the    <a     href="http://ubertechnique.com/unattended/appsonly"
        rel="external">appsonly-scripts</a> in our wiki.</p>

      <hr />

      <a name="8_4"></a><h3>[8.4] Can I install from DVD-ROM instead of a  network share?
        </h3>
      <p>We are interested in adding support for this. See <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01052.html"
        rel="external">this thread</a> from the mailing list, especially <a
        href="http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg01174.html"
        rel="external">this followup</a> from Pablo Manzanera.</p>
      <p>As of 2005-01-06, we added a support. This version is not released yet,  so  you
        must use the anonymous cvs in order to use it.</p>

      <hr />

      <a name="9_1"></a><h3>[9.1] Why is the mailing list so slow?</h3>
      <p><a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg01460.html"
        rel="external">Two reasons</a>. But probably because  your  message  &quot;smells
        like spam&quot; and got held for manual approval.</p>
      <p>The two most common causes are:</p>
      <ol>
        <li>Sending HTML (or text+HTML multipart) messages. SpamAssassin  prefers  simple
          text.</li>
        <li>Not including a full  name   in   the   From   header.   SpamAssassin   likes
          <pre class="code">From:&nbsp;"Patrick&nbsp;J.&nbsp;LoPresti"&nbsp;&lt;patl@users.sourceforge.net&gt;</pre>
          and dislikes <pre class="code">From:&nbsp;patl@users.sourceforge.net</pre>.</li>
        </ol>

      <hr />

      <a name="9_2"></a><h3>[9.2] Why script-update is no longer working?</h3>
      <p>Sourceforge changed their CVS setup. You need to get the newer version of
       <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/tools/script-update"
        rel="external">script-update</a></p>
EOT;

include ('page.inc');
?>
