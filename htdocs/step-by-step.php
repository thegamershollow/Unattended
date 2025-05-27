<?php
$title         = 'Step-by-step installation guide';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'step-by-step.php';
$page['next']  = 'faq.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Step 0: Requirements', 'step0');
$sections[]    = array ('Step 1: Download', 'step1');
$sections[]    = array ('Step 2: Unpack', 'step2');
$sections[]    = array ('Step 3: Configure DNS', 'step3');
$sections[]    = array ('Step 4: Prepare the Unattended Server', 'step4');
$sections[]    = array ('Step 5: Prepare the OS distribution point', 'step5');
$sections[]    = array ('Step 6: Create the bootdisk', 'step6');
$content       = <<<EOT
      <h1 id="start" style="border-top: none; padding-top: 0;">Step-by-step guide</h1>
      <p>Welcome to your step-by-step guide for installing and customizing Unattended.</p
        >

      <h2 id="step0">Step 0: Requirements</h2>
      <p>Your network environment must meet the following requirements:</p>
      <ul>
        <li>a DHCP server,</li>
        <li>a DNS server,</li>
        <li>a file-server that will host Unattended and all installation files.  From now
          on, this server will be referred to as &quot;Unattended server&quot;.</li>
        </ul>

      <h2 id="step1">Step 1: Download the distribution</h2>
      <p>Please download the distribution of Unattended. You will find the download links
        on the right side of this page. You will need all of them.</p>

      <h2 id="step2">Step 2: Unpack the distribution</h2>
      <p>Next unpack the distribution. Choose a appropriate location on your server (e.g.
        <code>/path/to/unattended</code>) for the os distribution point.</p>
        <pre class="code">$ unzip unattended-&lt;version&gt;.zip
[... output ...]
$ unzip unattended-&lt;version&gt;-dosboot.zip
[... output ...]
$ unzip unattended-&lt;version&gt;-linuxboot.zip
[... output ...]
$</pre>

      <h2 id="step3">Step 3: Configure DNS</h2>
      <p>Now please extend the configuration of your dns server.  The  Unattended  server
        must be reachable  with  the  name  &quot;ntinstall&quot;.  Please  configure  an
        appropriate alias (CNAME). There may be problem when connecting to Windows 2000 or
        Windows Server 2003-based computer using this alias. Please look at following 
        <a href="http://support.microsoft.com/kb/281308" rel="external">MS article</a></p>
      <p>You will find plenty of documentation about this on the net.</p>

      <h2 id="step4">Step 4: Prepare the Unattended server</h2>
      <p>Next you have to create a file share named &quot;install&quot;.</p>
      <h3>Unix server with samba</h3>
      <p>A Unix/Linux system is the preferred solution as all our scripts  run  on  these
        platform without installing additional software like Cygwin.  If you use Unix and
        Samba, apply these settings to your smb.conf:</p>
      <pre class="code">[global]
...
guest account   = guest
unix extensions = no
...
[install]
   comment  = Unattended
   writable = no
   locking  = no
   path     = /path/to/unattended/install
   guest ok = yes
</pre>
      <p>Make sure that the share is reachable with the  username  &quot;guest&quot;  and
        the password &quot;guest&quot;.</p>
      <h3>Windows server</h3>
      <p>Create the SMB file share:</p>
      <pre class="code">c:\\> net share install=c:\\path\\to\\unattended\\install
c:\\> cacls c:\\path\\to\\unattended\\install /T /E /G guest:R
c:\\> net user guest /ACTIVE:YES /DOMAIN</pre>

      <h2 id="step5">Step 5:  Prepare  the  Operating  System (and Software) distribution
        point</h2>
      <p>Now it is time to fill the os distribution point with life.</p>
      <p>The <code>install</code> directory tree  from  the  Unattended  distribution  is
        exported read-only with guest access permitted.  You need to fill it with support
        programs and files and the operation systems and software programs  you  want  to
        install unattended.</p>
      <p>When you later boot from the boot disk, it will ask you for the full Windows UNC
        name of this share; the default it assumes is  <code>\\\\ntinstall\\install</code
        >. The boot disk maps this share as the <code>Z:</code> drive, and that is how we
        will refer to it from now on.</p>
      <p>This procedure relies on the following files and   directories  from  the  <code
        >Z:</code> drive:</p>
      <dl>
        <dt><a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/djgpp/"
          >djgpp</a></dt>
        <dd><b>Only needed when boot disk is a floppy.</b> Contains parts of <a
          href="http://www.delorie.com/djgpp/" rel="external">DJGPP</a>,  a collection of
      Unix tools  for DOS.  DJGPP is  required because the master installation script
          is written in Perl. This one is too big to bundle, so you will need to download
      it yourself; see below for instructions.</dd>
        <dt><a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/"
          >dosbin</a></dt>
        <dd>Directory   containing   DOS  utility  programs  (like  fdisk)  from  the  <a
          href="http://www.freedos.org/"   rel="external">FreeDOS</a>    project.    Also
          contains <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
          >install.pl</a>, the master installation script.</dd>
        <dt><a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/"
          >lib</a></dt>
        <dd>Directory containing helper files for the master  installation  script.  This
          includes the default <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/unattend.txt"
          >unattend.txt</a> file and the helper modules <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/Unattend/FoldHash.pm"
          >Unattend::FoldHash</a>, <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/Unattend/HotKey.pm"
          >Unattend::HotKey</a>, <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/Unattend/Promise.pm"
          >Unattend::Promise</a>, <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/Unattend/IniFile.pm"
          >Unattend::IniFile</a>, and <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/Unattend/WinMedia.pm"
          >Unattend::WinMedia</a>.</dd>
        <dt><a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/site/"
          >site</a></dt>
        <dd>Directory  containing  your  site-specific  customizations.   If you place an
          <code>unattend.txt</code> file here, its settings will override  the  defaults.
          More  advanced customization is possible;  see the <a  href="documentation.php"
          >detailed documentation</a> for details.</dd>
        <dt><a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/os/"
          >os</a></dt>
        <dd>Directory   containing  Windows  installation  media  (i.e.,  copies  of  the
          CD-ROMs). You need to populate this with one or  more  copies  of  Windows;  <a
          href="#cd-rom">see below</a>.</dd>
      </dl>
      <h3>Support files and programs</h3>
      <p>The distribution files of  Unattended  include  the  needed  FreeDOS  files  and
        programs.   Additionally you need to download and unpack the following components
        of <a href="http://www.delorie.com/djgpp/" title="DJGPP"  rel="external">DJGPP</a
        >:</p>
      <ul>
        <li>The basic development kit (<a href="http://www.delorie.com/pub/djgpp/current/v2/djdev203.zip"
          >v2/djdev203.zip</a>)</li>
        <li>The DPMI server (<a href="http://www.delorie.com/pub/djgpp/current/v2misc/csdpmi5b.zip"
          >v2misc/csdpmi5b.zip</a>)</li>
        <li>The Perl port (<a href="http://www.delorie.com/pub/djgpp/current/v2gnu/perl561b.zip"
          >v2gnu/perl561b.zip</a>)</li>
        <li>The Pico text editor (<a
          href="http://www.delorie.com/pub/djgpp/current/v2apps/pico396b.zip"
          >v2apps/pico396b.zip</a>)</li>
        </ul>
      <p>Simply unzip all of them  under <code>Z:\\djgpp</code>.</p>
      <p><strong>Unix users please note:</strong> Use the <kbd>-L</kbd> switch  to  <code
        >unzip</code> when you extract these.  Otherwise,  you  may  find that some files
        extract under <code>bin</code> while  others extract under <code>BIN</code>,  and
        this will cause all sorts of trouble when the system tries to  access  them  from
        DOS. Windows users do not need to worry about this, because Windows (like DOS) is
        not case-sensitive.</p>
      <h3 id="install-share">Operation system installation files</h3>
      <p>Create a subdirectory under <code>Z:\\os</code> to hold a copy of  your  Windows
        CD. You should probably give the directory a  meaningful  name  like  <code>winxp
        </code> or  <code>win2ksp4</code>,  and  you  probably  want to limit the name to
        eight characters lest it look strange when viewed from DOS. (The  name  does  not
        matter much because <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
        >install.pl</a> will scan the contents to figure out what it   is.  However,  you
        should limit the name to 8 characters or fewer,   especially if you are using the
        Linux-based boot disk.)</p>
      <p>Next,  copy the <code>i386</code> folder from  your  Windows CD-ROM to  the  new
        directory.   For example,  for Windows XP,   you would copy the <code>i386</code>
        folder to  <code>Z:\\os\\winxp</code>,  thus  creating  <code>Z:\\os\\winxp\\i386
        </code>.</p>
      <h3>Integrate the service pack (optional)</h3>
      <p>This step is optional; you can apply a service pack  just  like  you  apply  any
        other hotfix later. But combining the service pack into  the  distribution  point
        now will make installation faster and let the OS have a smaller footprint on  the
        harddisk of your computer.</p>
      <p>You can find the detailed description <a  href="advanced.php#slipstream">here</a
        >.</p>
      <h3>Integrate other hotfixes (very optional and not recommended)</h3>
      <p>You can also add other hotfixes into your distribution point which is  explained
        <a href="advanced.php#hotfixes">here</a>. However, this  is  not  recommended  as
        this will interfere with our OS-update scripts.</p>
      <h3 id="drivers">Add device drivers</h3>
      <p>This step may be optional, depending on  your  hardware  and  which  version  of
        Windows you are trying to install. Each release of Windows ships  with  a  fairly
        rich collection of drivers, supporting most of the hardware which was  current at
        the time.  However,  if you are installing  an  older  OS  on  a  recent  system,
        especially a laptop, you may find that the OS lacks built-in support for some  or
        all of your hardware.</p>
      <p>You can add device drivers after the OS is installed, of course. But if you want
        to automate both OS and application  installation,  and  your  version of Windows
        lacks built-in support for your network card, you will  need  to  provide  proper
        network drivers on the OS distribution point.  Here is how to do it:</p>
      <p>First, download the driver package from  the  hardware  vendor  and  expand  it.
        There should  be  a  collection  of  <code>.inf</code>  files  in  the  top-level
        directory; that is the directory you need to copy to the OS  distribution  point.
        </p>
      <p>To where should you copy it, exactly? That is a long story...</p>
      <p>Under the <code>i386</code> folder on the distribution point,  create  a  folder
        named  <code>\$oem\$</code>.  Under <strong>that</strong> folder, create a folder
        named <code>\$1</code>.  Yes, really.   <strong>Windows&nbsp;Setup</strong>  will
        copy   everything    below    the    <code>\$1</code>   folder   to   the   <code
        >%SystemDrive%</code>  (normally  <code>C:</code>) during installation. See Microsoft's <a href="http://www.microsoft.com/resources/documentation/WindowsServ/2003/all/deployguide/en-us/acicb_ui_wbgu.asp"
        rel="external">description of the distribution share</a> for the gory details.</p
        >
      <p>You may put your driver folder  anywhere  you  like  under  the  <code>\$1</code>
        folder, and you may add as many driver folders as you like. The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
        >install.pl</a> script will automatically scan for all driver  folders  and offer
        to add  them   to   the   <code>OemPnPDriversPath</code>  setting  in  the  <code
        >unattend.txt</code> file for you.</p>
      <p><strong>Note</strong>: The total absolute length of any file name, including the
        leading <code>\\os\\...\\\$oem\$</code> portion, must not exceed 64 characters or
        winnt.exe will get an error when it tries to copy the file.</p>
      <h3>Populate packages directory</h3>
      <p>All our OS-update scripts and many of our application  install  scripts  contain
        urls for automatic download. Now it is time to perform this task. First you should
        update your scripts to current SVN version, using our <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/tools/script-update"
      >script-update</a> script, and then update packages using
our <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/tools/prepare"
      >prepare</a> script:</p>
<pre class="code">
    $ cd /path/to/unattended/install/tools
    $ ./script-update
    $ ./prepare
    [... output ...]
    $
</pre>
      <p>If the script is called without a parameter,   it assumes that you want to fetch
        the english version of updates and programs.  If you want to  fetch  a  different
        language,  you must  give  the  appropriate  <a  href="apps.php#winlang">language
        code</a>. E.g. for german, type:</p>
<pre class="code">
    $ cd /path/to/unattended/install/tools
    $ ./prepare deu
    [... output ...]
    $
</pre>
		
      <h2 id="step6">Step 6: Create the bootdisk</h2>
      <p>After you survived the server-side challenge, you can tackle the  bootdisk. </p>
      <p>The goal here is very simple: To boot to DOS  so  we can mount the <code>install
        </code> share as  the  <code>Z:</code>  drive  and  run  the  master installation
        script. There are three ways to do this: By booting from  a  floppy,  by  booting
        from a CD-ROM, or by booting directly from the network.</p>
      <p>The <a  href="advanced.php#bootfloppy"  title="boot floppies">boot  floppies</a>
        are DOS-based and deprecated. The <a href="advanced.php#pxe" title="network-boot"
        >network-boot</a> is an advanced topic and mostly intended for  the  installation
        of diskless workstations.  Your best choice will be the linux-based CD-ROM.</p>
      <p>The <code>bootdisk.iso</code> file is an ISO-9660 image  of  a bootable  CD-ROM.
        Simply burn it to a CD, which you  can  do  with  just  about  any  CD  recording
        utility. Consult your utility's documentation and search  for  ISO-9660  or  just
        ISO.</p>
      <p>Take a deep breath. It is time for testing your work...</p>

      <h2 id="step7">Step 7: The first boot</h2>
      <p>The boot disk's entire purpose in life is to obtain access to the network,  then
      hand off control to the more powerful tools available there. Specifically, the boot
      disk  loads  the  network drivers, mounts the install share as the  <code>Z:</code>
      drive, and then executes the Perl script <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
      ><code>Z:\\dosbin\\install.pl</code></a>. This  script  will  ask you  a  bunch  of
      questions,   generate   <code>unattend.txt</code>,   and   launch   <strong>Windows
      Setup</strong>.</p>
      <p>Follow along in <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/bootdisk/template/autoexec.bat"
      >autoexec.bat</a> if you like.</p>

      <h3>Mounting Z:</h3>
      <p>After loading the network stack, the boot disk asks whether you  want  to  <code
        >Override&nbsp;bootdisk&nbsp;defaults</code> for user name, password, and install
        share.  The  defaults are guest,  guest,  and   <code>\\ntinstall\install</code>,
        respectively.</p>
      <p>Next,  the  boot  disk  uses  the  user  name  and  password  to  invoke   <code
        >NET&nbsp;LOGON</code>, which initializes  the  MSCLIENT  file sharing stack.</p>
      <p>Next, the boot disk invokes <code>NET&nbsp;USE</code> to map the  install  share
      as the <code>Z:</code> drive.</p>
      <p>Finally, the boot disk passes control to the installation script <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
        ><code>Z:\\dosbin\\install.pl</code></a>. This script is a lot more  complicated,
        but you do not need to understand it in order to use it.</p>
      <h3>Partitioning</h3>
      <p>The installation script begins by helping you  partition  the  hard   drive.</p>
      <p>This can be complicated for two reasons. First,  any  change  to  the  partition
        table requires rebooting the system. Second, DOS cannot access  NTFS  partitions,
        but NTFS is almost certainly the file system you want to use.</p>
      <p>The installation script hides this complexity from you by offering a simple menu
        of several automated partitioning schemes.  If  none  of  the  automated  schemes
        appeals  to  you,  one  of  the  menu  options   is   to  run  <code>fdisk</code>
        interactively to let you partition by hand.</p>
      <p>Whether you pick an automated scheme or partition by hand, you need to make sure
        that the <code>C:</code> drive is an  active  2G  FAT  partition.  The  automatic
        choices do this by first creating the NTFS partitions, then  deleting  the  first
        one and replacing it with a 2G FAT partition, then  activating it. (If you choose
        to partition by hand, you will need to perform this  procedure by hand.)</p>
      <p>If any actual changes are made to the partition table, the  script  will  reboot
        the machine so that 2G FAT partition will become the <code>C:</code> drive, which
        is where Windows will be installed. During OS installation, <strong>Windows Setup
        </strong> will convert the FAT partition to NTFS and expand it as far as possible
        without clobbering other partitions.</p>
      <p>Note that the OS is always installed on the first active partition of the drive.
        If this is a problem for you, let us know and maybe we will change it in a future
        release.</p>
      <p>After rebooting, the  installation  script  will  again  start  by  offering  to
        partition the drive. Simply choose the same partitioning scheme  again,  and  the
        script will notice that the partition table is unchanged and continue. Or you can
        manually select the menu option to  <code>Do&nbsp;nothing&nbsp;(continue)</code>.
        </p>
      <h3>Formatting</h3>
      <p>The installation script  will   offer   to   format   the   C:   drive.   Answer
      &quot;yes&quot;.</p>
      <h3>Choosing the operating system</h3>
      <p>The installation script will ask you which operating system you want to install.
        It derives the list of choices from scanning the  directories  under <code>Z:\\os
        </code> looking for Windows media.  To add a new operating system  to  the  list,
        simply create its <a href="#install-share">distribution point</a>.</p>
      <h3>Product key</h3>
      <p>The installation script will ask you for your 25-character product key. Enter it
        exactly as it appears on your software license, with a dash between  every  block
        of five characters (like "12345-6789A-BCDEF-GHIJK-LMNOP").</p>
      <h3>Computer name</h3>
      <p>The script will ask you for the computer's  name.  Entering  &quot;*&quot;  will
        cause <strong>Windows&nbsp;Setup</strong> to pick a random name.</p>
      <h3>Organization and User name</h3>
      <p>The script will ask you for  the  organization  name  and  user  name  for  this
        machine. Provide them.</p>
      <h3>Local Administrator password</h3>
      <p>The script will ask you for the local administrator  password  for  the machine.
        This value will echo (sorry).</p>
      <h3>Joining a domain</h3>
      <p>The script will ask to what domain you wish to join the system.  If  you  do not
        want to join the system to a domain during OS installation, just press Enter.</p>
      <p>If you do provide a domain, the script will ask you  for  an  account  name  and
        password to use to join the system to the domain. You may use a  fully  qualified
        <strong>domain</strong>\\<strong>user</strong> name, or just the user  name.  The
        password will echo (sorry again).</p>
      <p>Also, if you provide a domain, the script will ask you  for  a  list  of  domain
        accounts to add to the local Administrators group.  Many  organizations  add  the
        machine's &quot;owner&quot; to the local Administrators group. If you do not wish
        to add any extra users to the Administrators group, just press  <kbd>Enter</kbd>.
        </p>
      <h3>Joining a workgroup</h3>
      <p>If you choose not to join a domain, the system will offer  to  let  you  join  a
        workgroup.</p>
      <h3>Choosing the application suite</h3>
      <p>Next, the installation script will ask you which script to run,  if  any,  after
        the OS installation is  finished.  This  is  the  hook  to  start  the  automated
        application    installation    process.   The   scripts   live   in   the   <code
        >Z:\\scripts</code> directory,   and  are  discussed  on  the  <a href="apps.php"
        >application installation page</a>.</p>
      <h3>Final edits</h3>
      <p>Finally, the installation script will  generate  the  <code>unattend.txt</code>,
        <code>postinst.bat</code>, and <code>doit.bat</code> scripts, and  offer  to  let
        you edit them. This is  your  chance  to  make  any  manual  alterations  to  the
        scripts before the installation begins.</p>
      <p>When  you  have   finished   making   your   changes,   if   any,   select   the
        &quot;Continue&quot; option.</p>
      <p>And that is all! Your OS installation should be on its way. You probably want to
        automate <a href="apps.php">installing the applications</a> next.</p>
      <p>If  you   get   tired  of  answering  all  these  questions  (or  editing  <code
        >unattend.txt</code>)  by   hand,  you  can  create   a   site  configuration  to
        provide as many of the answers as you like.  See  the <a href="documentation.php"
        >detailed documentation</a> page for details.</p>

EOT;

include ('page.inc');
?>
