<?php
$title         = 'The [_meta] section';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'timezones.php';
$page['next']  = 'dynamic.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Partitioning and formatting', 'part');
$sections[]    = array ('Post-install scripts, Local Administrators, NTP servers, final edits', 'scripts');
$sections[]    = array ('Other keys', 'other');
$content       = <<<EOT
      <h1 id="start" style="border-top: none; padding-top: 0;">The  [_meta]  section</h1>
      <p>Unattended adds some functionality on top of  <strong>Windows&nbsp;Setup</strong
        >.   This functionality is controlled by a new section of the  answer  file,  the
        <code>[_meta]</code>  section.   This   section    is    ignored    by    <strong
        >Windows&nbsp;Setup</strong>; it exists solely to let you provide answers to some
        of the new questions <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
        ><code>install.pl</code></a> asks.</p>

      <h2 id="part">Partitioning and formatting</h2>
      <p>The installation script begins by partitioning and formatting the disk.</p>
      <p>To automatically answer the &quot;Use large disk support&quot; question, set the
        <code>fdisk_lba</code> key to 1 for &quot;yes&quot; and 0 for &quot;no&quot;.</p>

      <p>To automatically partition the drive, use the <code>fdisk_cmds</code> key.  This
        is a semicolon-separated list of <a href="http://usuarios.lycos.es/fenris2003/panicdsk/fdisk_HELP.TXT"
        rel="external">commands</a>  invoking  <a  href="http://www.23cc.com/free-fdisk/"
        rel="external">FreeDOS FDISK</a>.  Keep in mind that the result of these commands
        must be a  partition  table  with  an  active  FAT  partition.  To  suppress  the
        confirmation for disk partitioning, set <code>fdisk_confirm</code> to 0.</p>

      <p>To automatically format the drive, set the <code>format_cmd</code> key.  This is
        normally an invocation of the <a href="http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/dos/format/"
        rel="external">FreeDOS format</a> utility.</p>

      <p>Finally,  to automatically replace the Master Boot Record (MBR) or not,  use the
        <code>replace_mbr</code> key.   Set  it  to  1  for  &quot;yes&quot;  and  0  for
        &quot;no&quot;.</p>

      <p>For example,  to use large disk support,  partition the drive as a single  large
        partition (without confirmation), format it, and replace the MBR:</p>

<pre class="code">
[_meta]
    fdisk_lba=1
    fdisk_cmds=&quot;fdisk /clear 1;fdisk /pri:4000;fdisk /activate:1&quot;
    fdisk_confirm=0
    format_cmd=&quot;format /y /z:seriously /q /u /a /v: c:&quot;
    replace_mbr=1
</pre>

      <h2 id="scripts">Post-install scripts,  Local Administrators,  NTP servers,   final
        edits</h2>

      <p>To  configure  which  top-level  post-installation  script  to  run,   set   the
        <code>top</code> key.</p>

      <p>To   configure   which   &quot;optional&quot;   scripts   to   run,    set   the
        <code>middle</code> key.</p>

      <p>To configure a script to run last, just before the final cleanup and reboot, set
        the <code>bottom</code> key (normally unset).</p>

      <p>To configure which domain accounts are added to the local Administrators  group,
        set the  <code>local_admins</code>  key to a  semicolon-separated  list  of  user
        names.  An empty list is allowed, but it must be quoted.  User names may be fully
        qualified (DOMAIN\\user),  or they may be bare (user);   in the latter case,  the
        [Identification]/JoinDomain value will be used as the domain.</p>

      <p>To configure the NTP servers, set the ntp_servers key. This is a space-separated
        list.</p>

      <p>To control the final question, where you are asked if you want to make any final
        edits, use the edit_files key. Set it to 0 to avoid being asked the question.</p>

      <p>For example,  to perform a base install,  add Spybot&nbsp;Search&amp;Destroy and
        the Sun JRE, configure NTP servers named &quot;ntp-0&quot; and &quot;ntp-1&quot;,
        not add any accounts to the  local  Administrators  group,  and  skip  the  final
        question:</p>

<pre class="code">
[_meta]
    top=base.bat
    middle=&quot;spybot.bat;sun-jre.bat&quot;
    local_admins=&quot;&quot;
    ntp_servers=&quot;ntp-0 ntp-1&quot;
    edit_files=0
</pre>

      <h2 id="other">Other keys</h2>

      <p>There are several other keys which appear in the  <code>[_meta]</code>  section,
        like <code>macaddr</code> and <code>ipaddr</code>.  Most of these  are  generated
        automatically from sane defaults, so unless you  are  sure  about  what  you  are
        doing,   you  should  probably  omit  them  from  your  <code>unattend.txt</code>
        file.</p>

EOT;

include ('page.inc');
?>
