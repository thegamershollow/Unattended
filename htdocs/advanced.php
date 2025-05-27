<?php
$title         = 'Advanced topics';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'apps.php';
$page['next']  = 'advanced.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Integrate a service pack', 'slipstream');
$sections[]    = array ('Integrate other hotfixes', 'hotfixes');
$sections[]    = array ('Modifying the boot disk', 'modify');
$sections[]    = array ('Booting from the network', 'netboot');
$content       = <<<EOT
      <h1 id="slipstream" style="border-top: none; padding-top: 0;">Integrate  a  service
        pack into the OS distribution point</h1>
      <p>This step is optional; you can apply a service pack  just  like  you  apply  any
        other hotfix later. But combining the service pack into  the  distribution  point
        now will make installation faster and let the OS have a smaller footprint on  the
        harddisk of your computer.</p>

      <p><strong>NOTE</strong>: You <strong>cannot</strong>  do  this  with  certain  OEM
        versions of Windows XP (we are  unsure  about  Windows 2000).  The  process  will
        appear to work, but after the first  reboot  the  installer  will  abort  saying,
        &quot;The file vga.sys is corrupted&quot;.  For an OEM installation of  XP,  your
        only option is to apply the service pack after installing the OS; see the <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/winxp-updates.bat?rev=HEAD&amp;view=auto"
        >winxp-updates.bat</a> script and the <a href="apps.php">application installation
        document</a> for more information.</p>

      <p><strong>NOTE</strong>: On 2005-06-28, Microsoft published  a  rollup package for
        Windows 2000 SP4. Although it is possible to slipstream this package into Windows
        2000 with Service Pack 4, <strong>we do not recommend</strong> it. The problem is
        that this  package  contains  fixes  for  Internet Explorer 6 SP1  which  is  not
        included in  Windows  2000  and  installed  after  the  Windows  installation  by
        Unattended. Windows update will demand that package again. For  more information,
        <a rel="external" href="http://www.heise.de/security/news/foren/go.shtml?read=1&amp;msg_id=8296723&amp;forum_id=80992"
        >see here</a> (sorry, only in german).</p>

      <p>If you are using a retail or volume-licensed OS, read on.</p>

      <p>To   apply   the   service   pack   to   the   installation   point,   use   the
        &quot;slipstreaming&quot; feature.  You can find details in Microsoft's <a href="http://www.microsoft.com/windows2000/downloads/servicepacks/sp4/spdeploy.htm#the_integrated_installation_fmay"
        rel="external"><strong>Windows 2000 Service Pack 4  Installation  and  Deployment
        Guide</strong></a> or <a href="http://www.microsoft.com/WindowsXP/pro/downloads/servicepacks/sp1/spdeploy.asp#the_integrated_installation_fmay"
        rel="external"><strong>Windows XP Service  Pack  1  Installation  and  Deployment
        Guide</strong></a>.</p>

      <p>The procedure is the same for Windows 2000 and XP. Using Windows XP Service Pack
        2 as an example:</p>

      <ol>
        <li>Copy or rename <code>Z:\\os\\winxp</code>  to  <code>Z:\\os\\winxpsp2</code>.
          This name is not accurate yet, but it will be in a few minutes.</li>
        <li>Download <a href="http://www.microsoft.com/downloads/details.aspx?displaylang=en&amp;familyid=049c9dbe-3b8e-4f30-8245-9e368d3cdb5a"
          rel="external">the service pack (network installation)</a> from Microsoft. This
          will be a package file, say <code>WindowsXP-KB835935-SP2-ENU.exe</code>.</li>
        <li>Run
<pre class="code">
    WindowsXP-KB835935-SP2-ENU.exe /u /x:c:\\xpsp2
</pre>

        <p>This will extract the service pack files to the folder <code>c:\\xpsp2</code>.
         Any folder will do.</p>
        </li>
        <li>Run
<pre class="code">
    c:\\xpsp2\\i386\\update\\update.exe /s:z:\\os\\winxpsp2
</pre>

        <p>This  applies   the   service   pack   to   the   distribution   point   <code
          >Z:\\winxpsp2</code>,   creating an integrated (&quot;slipstreamed&quot;) WinXP
          SP2 tree. Due to a bug, you must be a local administrator for this  command  to
          work,  even if you have write access to the target folder.   Also,  you must be
          running XP to use the XP service pack installer.</p></li>
      </ol>

      <p>Starting with SP 2 for Windows XP, you can do not need to extract the files from
        the service pack. Simply type:</p>
<pre class="code">
    WindowsXP-KB835935-SP2-ENU.exe -s:z:\\os\\winxpsp2
</pre>

      <h1 id="hotfixes">Integrate other hotfixes</h1>

      <p>Ever since Microsoft introduced slipstreaming for  service  packs,  people  have
        asked if they could do the same thing with  hotfixes.  And  until  mid-2003,  the
        official answer from Microsoft was no.</p>

      <p>Times have changed.  Microsoft  now  documents  how  to  integrate  hotfixes  <a
        href="http://www.microsoft.com/windows2000/downloads/servicepacks/sp4/hfdeploy.htm#the_combination_installation_gxsi"
        rel="external">into Windows 2000</a> and <a href="http://www.microsoft.com/windowsxp/pro/downloads/servicepacks/sp1/hfdeploy.asp#the_combination_installation_gxsi"
        rel="external">into Windows XP</a>. (See also KB articles <a href="http://support.microsoft.com/?id=814847"
        rel="external">814847</a>,    <a   href="http://support.microsoft.com/?id=824994"
        rel="external">824994</a>, and especially <a href="http://support.microsoft.com/?id=828930"
        rel="external">828930</a>.) It is a messy procedure, but it is supported.</p>

      <p>Since the procedure is  messy,  and  since  Unattended  was  written  before  it
        existed, we expect to install hotfixes after the OS installation  has  completed.
        This works  fine  and  is  much  cleaner.  However,  it  does  leave  the  system
        temporarily vulnerable to any exploits which the hotfixes correct.  So if you are
        installing on an insecure network, you may need  to  integrate  certain  hotfixes
        directly into the OS distribution point.  In particular, you  probably  want  the
        fixes for the remotely-exploitable flaws. As of April 2004, they are <a href="http://support.microsoft.com/?id=828741"
        rel="external">828741</a>,   <a    href="http://support.microsoft.com/?id=828035"
        rel="external">828035</a>,   <a    href="http://support.microsoft.com/?id=828749"
        rel="external">828749</a> (2000 only), and <a href="http://support.microsoft.com/?id=835732"
        rel="external">835732</a>.</p>

      <p>See <a href="http://www.mail-archive.com/unattended-info@lists.sourceforge.net/msg00514.html"
        rel="external">this message</a> from the <a href="https://lists.sourceforge.net/lists/listinfo/unattended-info/"
        >mailing list</a> for one user's experience.</p>

      <h1 id="modify">Modifying the boot disk</h1>
      <h2>DOS boot disks</h2>
      <p>The boot disk is just a DOS floppy,  so you can edit its files like those on any
        other floppy. But that is not how we do it,  because  we  want  to  generate  new
        floppy images for every driver, not to mention new ISO and PXE images.</p>

      <p>Modifying the boot disk &quot;correctly&quot; requires a Unix  system  with  the
        appropriate utilities installed. Basic utilities like GNU Make go without saying.
        To   create   the   floppy   disk   images,   you   will   also   need   the   <a
        href="http://mtools.linux.lu/" rel="external">Mtools</a> suite. To update the ISO
        image,    you   will   need   the   <a href="http://www.andante.org/mkisofs.html"
        rel="external">mkisofs</a> utility. Modern Linux systems generally provide all of
        the required tools.</p>

      <p>In the <code>bootdisk</code> directory,  typing <kbd>make&nbsp;images</kbd> will
        generate the floppy disk images.  Typing <kbd>make&nbsp;iso</kbd> will create the
        ISO  image.   Typing  <kbd>make&nbsp;tftpboot</kbd>  will  populate   the   <code
        >tftpboot</code>directory. And simply typing <kbd>make</kbd> will do  all  these.
        </p>

      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/bootdisk/DRIVERS.txt"
        rel="external"><code>DRIVERS.txt</code></a> file defines  the  supported  network
        drivers and the <code>drivers</code> subdirectory contains them.  To  add  a  new
        driver,  put   it   in   the   <code>drivers</code>   directory,   update   <code
        >DRIVERS.txt</code>, and type <kbd>make</kbd>.</p>

      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/bootdisk/template/"
        ><code>template</code></a> subdirectory contains  the  files  on  the  boot  disk
        itself. For example, if you want to change <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/bootdisk/template/autoexec.bat"
        >autoexec.bat</a> or <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/bootdisk/template/config.sys"
        >config.sys</a>,   just  edit  them  under  <code>template</code>  and  run  <kbd
        >make</kbd>.</p>

      <p>For the record, most of the binaries on the bootdisk  are  from  Microsoft's  <a
        href="ftp://ftp.microsoft.com/bussys/Clients/MSCLIENT/"            rel="external"
        >MSCLIENT</a> distribution. The exceptions are <code>random.com</code> and  <code
        >nset.com</code>,    very    handy    utilities    from     <a     rel="external"
        href="http://home.mnet-online.de/horst.muc/horst.htm">Horst   Schaeffer's    nice
        collection</a>.</p>

      <h2>Linux boot disk (CD-ROM)</h2>
      <p>The   CD-ROM   boot   loader   is   <a  href="http://syslinux.zytor.com/iso.php"
        rel="external">ISOLINUX</a>   from   the   <a   href="http://syslinux.zytor.com/"
        rel="external">SYSLINUX</a>     package.     We     use     <a     rel="external"
        href="http://syslinux.zytor.com/memdisk.php">memdisk</a>, also from SYSLINUX,  to
        allow us to chain-boot to a &quot;virtual floppy&quot;.</p>

      <p>The   PXE   boot   loader   is    <a    href="http://syslinux.zytor.com/pxe.php"
        rel="external">PXELINUX</a>,  also from the  <a href="http://syslinux.zytor.com/"
        rel="external">SYSLINUX</a>       package.       It       also       uses      <a
        href="http://syslinux.zytor.com/memdisk.php">memdisk</a> to boot from  a  virtual
        floppy, this time directly over the network.  The universal DOS network driver is
        <code>undis3c.dos</code>       from       3com's       <a          rel="external"
        href="http://support.3com.com/infodeli/tools/nic/mba.htm" >MBA Utility  disk</a>.
        </p>

      <h1 id="netboot">Booting from the network</h1>
      <p>This section is also optional, although &quot;nothing but net&quot; installs are
        my favorite.  Walking into a coworker's office and rebuilding their machine using
        nothing more than your hands and your brain is pretty fun. Also,  when  you  boot
        from the network, you do <strong>not</strong> need to select any  network  driver
        for your card! 3com has kindly written a &quot;universal&quot; DOS network driver
        which works on any PXE implementation,   meaning one floppy image can support any
        PXE-compatible network card. (This also means  that  any  newly-released  network
        card is more likely to work with  DOS  than  with  any  other  operating  system,
        including Windows or Linux. I find this mildly amusing.)</p>

      <p>However, booting from the network  does  require  the  most  support  from  your
        infrastructure.</p>

      <p>First, you will need a TFTP server. Copy the files and folders  from  the  <code
        >tftpboot</code> directory to the TFTP server's root directory. <a href="http://tftpd32.jounin.net/"
        rel="external">Tftpd32</a> is a good TFTP server  for   Windows  which  has  been
        reported to work. For Linux you could use atftpd which also works fine, under debian for example, you can get it with "apt-get install atftpd". be sure that you edit your config (especially the tftproot) right!</p>

      <p>Second, you will need to configure your DHCP server.  Most modern network  cards
        support booting directly  from  the  network  following  Intel's  <strong>Preboot
        eXecution Environment</strong>  (PXE) specification.  If you are a masochist, you
        can obtain the entire <a href="http://www.pix.net/software/pxeboot/archive/pxespec.pdf"
        rel="external">PXE specification</a>.  But  the  basic  idea  is  pretty  simple:
        Configure your DHCP server to provide  <strong>next-server</strong>  and  <strong
        >filename</strong> DHCP options  (options  number  066  and  067  under  windows)
        identifying your TFTP server and the  <code>pxelinux.0</code> file, respectively.
        (Do not let the name fool you; <code>pxelinux.0</code>  has  nothing  to  do with
        Linux.  It  comes  from  the <a href="http://syslinux.zytor.com/"  rel="external"
        >SYSLINUX</a> package, an excellent general-purpose boot loader.) Get the package and extract pxelinux.0 to your tftproot.</p>
      <p>You can find a bit more info here: <a href="http://www.debian-administration.org/articles/478"  
       rel="external">Setting up a server for PXE network booting</a></p>

        <p><strong>How it could look like, using DNSmasq (don't let the name fool you, it's a dhcp-server) and atfpd</strong>:
        Additional/modified lines for dnsmasq.conf:
<pre class="code">
        dhcp-option=13,25 //Size of pxelinux.0 in bytes, divided by 512
        dhcp-option=66,192.168.0.20 // IP of the tftp-server
        dhcp-boot=pxelinux.0,ntinstall,192.168.0.20 // Bootfilename, dns & IP of the tftp-server
</pre>

        Line for atftpd @ inetd.conf:
<pre class="code">
  tftp dgram   udp     wait    nobody /usr/sbin/tcpd /usr/sbin/in.tftpd --tftpd-timeout 300 
--retry-timeout 5     --mcast-port 1758 --mcast-addr 192.168.0.0-255 --mcast-ttl 1 --maxthread 100 
--verbose=5  /home/christof/unattended-4.7/linuxboot/tftpboot</p>
</pre>

      <p>Finally, you will need to convince your machine to boot from the  network.  Even
        if your machine has PXE support, actually enabling it can take  some  work.  Many
        network cards have a configuration BIOS of their own which  you  must  access  to
        enable booting via PXE.  For motherboards with integrated network  hardware,  the
        system BIOS itself may have a configuration option  named  &quot;Enable  on-board
        network&quot;   with  <strong>three</strong>  settings  called   something   like
        &quot;Off&quot;, &quot;On&quot;, and &quot;On&nbsp;w/&nbsp;MBA&quot;.</p>

      <p><strong>Note</strong>: Historically (meaning as recently as 2002), many vendors'
        PXE implementations were extremely buggy.  Always update  the  firmware  on  your
        network card to the latest version before attempting a network boot.  For network
        hardware integrated on the motherboard, this means updating the system BIOS.</p>

      <p>Once you have enabled PXE in the network card BIOS, reboot the machine and enter
        the system BIOS again. Examine the &quot;boot order&quot; option. There should be
        a new entry, with a name like &quot;MBA slot 1&quot; or &quot;IBA  slot  3&quot;.
        Note that many BIOSes have a &quot;Network&quot; entry here  which  does  <strong
        >not</strong> work; you may need to experiment.  Configure the boot order to  put
        the network device ahead of the hard disk, and you should be good to go.</p>

      <p>Some systems, including most Dells and  IBM  Thinkpads,  will  respond  to  <kbd
        >F12</kbd> during power-up to let you initiate a network boot. This is convenient
        if you only want to boot from the network once or twice to install  the  OS,  but
        you want all later boots to be from the hard drive.</p>

      <p>If all else fails, contact your vendor and ask them how to perform a PXE network
        boot.  If they say you cannot, shake your head in disgust and boot from floppy or
        CD-ROM instead.</p>

EOT;

include ('page.inc');
?>
