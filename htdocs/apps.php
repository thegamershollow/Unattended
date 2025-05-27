<?php
$title         = 'The Applications';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'installers.php';
$page['next']  = 'advanced.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Goals', 'goals');
$sections[]    = array ('Overview', 'overview');
$sections[]    = array ('The todo.pl driver script', 'todo');
$sections[]    = array ('Examples', 'examples');
$sections[]    = array ('Database of &quot;unattended&quot; switches', 'database');
$sections[]    = array ('Other utility scripts', 'scripts');
$content       = <<<EOT
      <h1 id="goals" style="border-top: none; padding-top: 0;">Goals</h1>
      <p>Our objective is to create a set of scripts which automatically install  all  of
        the applications we want. Important design goals for these scripts include:</p>

      <ul>
        <li>Independence from the OS install
        <p>It should be possible (though  not  necessary)  to  install  the  applications
          independently of the automated OS installation,  because  sometimes  automating
          the OS installation is more trouble than it is  worth.  For  example,  in  many
          organizations, there are a large standard suite of applications, but  sometimes
          sysadmins are asked to configure a single unusual PC. In such cases, they  want
          to install the OS by hand but still have an automated procedure for loading the
          applications.</p>
        </li>

        <li>Composability
        <p>We should be able  to  define  collections  of  software  in  terms  of  other
          collections.  For instance, we should be able to express:</p>
        <blockquote><p>A  <strong>base</strong>  installation  consists  of  applications
          <strong>A</strong>,  <strong>B</strong>,  and  <strong>C</strong>.   A  <strong
          >developer  workstation</strong>  consists  of  a  base  installation  plus   a
          development environment.  A <strong>sales laptop</strong> consists  of  a  base
          installation plus the salesforce automation tools.</p></blockquote>
        <p>And so on.</p>
        <p>In short,  these  installation  scripts  need  to  be  able  to  invoke  other
          installation scripts.  You might expect this to be trivial, until you  remember
          that installing some software requires rebooting the machine.  So  if  (say) <a
          href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/sales.bat"
          >sales.bat</a> begins by invoking <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/base.bat"
          >base.bat</a>,  which needs to reboot the machine halfway through,  how exactly
          do you resume where you left off? <a href="#todo">See below</a> for the answer.
          </p>
        </li>
        <li>Simplicity
        <p>However this system works, it must be as simple  to  understand  as  possible.
          Sysadmins are busy people. In fact, I am amazed you have read this far&nbsp;:-)
          . Anyway, if you can think of a simpler approach for anything here,  please let
          me know.</p>
        </li>
      </ul>

      <h1>Overview</h1>
      <p>The process goes like this:</p>
      <ol>
        <li>Map the <code>install</code> share as the <code>Z:</code> drive.</li>
        <li>Install Perl.</li>
        <li>Install everything else.</li>
      </ol>

      <p>Perl is required because the handy utility scripts are written in Perl.  You  do
        not need to know Perl to use the scripts,  but you should learn it anyway because
        it is a good tool.</p>

      <p>Note that this process is normally invoked immediately after the <a href="documentation.php#osinst"
        >unattended OS installation</a> by the <code>GuiRunOnce</code> section in the  <a
        href="unattendtxt.php"><code>unattend.txt</code></a> file.   In particular,  this
        process assumes that the machine is already configured to automatically log on as
        the local Administrator after every reboot.  To invoke this procedure standalone,
        you can use the <a href="#autolog">autolog.pl</a> script  to  enable  or  disable
        automatic logon.</p>

      <h2>Structure of the <code>install</code> share</h2>
      <p>The <code>install</code> share is the one you created when you  set  up  the  <a
        href="documentation.php#osinst">automated OS installation</a>,  by simply copying
        the <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/"
        ><code>install</code></a> directory from the Unattended distribution.</p>

      <p>Application  installation  relies  on  these   subdirectories   of   the   <code
        >install</code> share:</p>

      <dl>
      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/"
        >bin</a></dt>
      <dd>Contains various utility binaries and scripts.  You should not need  to  modify
        these; if you do, please consider submitting a feature request or a patch.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/packages/"
        >packages</a></dt>
      <dd>Contains the installers for the  applications  themselves.  You  will  need  to
        populate this directory with the installers for your site's applications.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/"
        >scripts</a></dt>
      <dd>Contains the  scripts  for  installing  individual  applications  and  sets  of
        applications.  The contents of this directory  provides  a  fairly  rich  set  of
        examples. You will probably need to edit these or write new ones;  feel  free  to
        contribute changes and additions.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/site/"
        >site</a></dt>
      <dd>Contains site-specific configuration data like license keys. You will  need  to
        populate this directory with the data for your site before  some  of  the  sample
        scripts will work.</dd>
      </dl>

      <h1 id="todo">The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/todo.pl">todo.pl</a>
        driver script</h1>

      <h2>One script to rule them all</h2>
      <p>One master Perl script,  <code>todo.pl</code>,  oversees the entire installation
        process.  All  of  the  other  scripts  are  designed  to  be  invoked  by  <code
        >todo.pl</code>.</p>

      <p><code>todo.pl</code>  maintains  a  &quot;to-do  list&quot;  on  disk   in   the
        plain-text file <code>C:\\netinst\\todo.txt</code>.  You can edit this file  with
        an ordinary text editor, but normally you will not,  because <code>todo.pl</code>
        itself takes any number of commands as arguments and inserts them at the  <strong
        >front</strong> of the to-do list. (As you will see, this is what you want.) When
        invoked as <kbd>todo.pl&nbsp;--go</kbd>, the script  removes  the  first  command
        from the to-do list and executes it, then removes the next command from the  list
        and executes it, and so on until the list is empty.</p>

      <p>There are multiple advantages to this design:</p>

      <ul>
        <li>It provides a consistent environment (e.g.,  <code>PATH</code>)  for  running
          the other scripts.</li>
        <li>It notices any errors returned by the other  scripts,  halting  execution  so
          that you can debug the problem.</li>
        <li>It provides controlled reboots.</li>
        <li>It lets us satisfy the &quot;composability&quot; goal in a very natural  way.
          Programmers  will  recognize  the  to-do   list   as   a   simple   stack   (or
          &quot;continuation&quot;).  Since it is stored on disk, it  naturally  survives
          reboots.</li>
      </ul>

      <p>In  addition  to  simple  commands,   the   to-do  list   may  contain   <strong
        >directives</strong> for <code>todo.pl</code>. Directives always start with a dot
        and include:</p>

      <h3>The .ignore-err directive</h3>

      <p>Like its author,  <code>todo.pl</code>  is  nigh-pathologically  cautious  about
        error checking.  Any command which exits with a non-zero status  will  cause  the
        script to halt and print a diagnostic.</p>

      <p>Some installers always exit with zero status, even when they fail.  There is not
        much we can do about this, and it keeps us awake at night.</p>

      <p>Contrariwise,  some installers always exit with a non-zero status even when they
        succeed.  For such installers, you can use the <code>.ignore-err</code> directive
        to ignore only the expected  exit status,   while still halting if any unexpected
        errors occur.</p>

      <p>For example, suppose you have an  installer  <code>foo.exe</code>  which  always
        exits with status 37. You would schedule it for invocation like this:</p>
<pre class="code">
    todo.pl &quot;.ignore-err 37 foo.exe&quot;
</pre>

      <p>This will add &quot;<code>.ignore-err&nbsp;37&nbsp;foo.exe</code>&quot;  to  the
        to-do list.  When <code>todo.pl</code> processes this line,  it will invoke <code
        >foo.exe</code>,  silently ignoring exit status zero or 37.  It will still  treat
        other status codes as errors.</p>

      <h3>The .reboot directive</h3>

      <p>The <code>.reboot</code> directive instructs <code>todo.pl</code> to reboot  the
        machine after first patching the registry to cause <strong>itself</strong> to run
        the next time the current user logs in.</p>

      <p>In other words, <code>.reboot</code> provides a  controlled,  fully  synchronous
        mechanism for rebooting the machine and resuming where  you  left  off.  This  is
        important, because uncontrolled reboots create race conditions as  the  OS  kills
        all processes with indeterminate ordering and timing.  When you write a script to
        install an application,  you must suppress any reboots performed by the installer
        and use the <code>.reboot</code> directive instead.</p>

      <h3>The .reboot-on directive</h3>
      <p>The  <code>.reboot-on</code>  directive  tells  <code>todo.pl</code>  to  run  a
        command and compare the exit status to a specified value.  If it  matches,  <code
        >todo.pl</code> behaves as if  it  had  seen  a  <code>.reboot</code>  directive.
        Otherwise,   it  does  nothing  special;  that  is,    it  behaves  as  if  <code
        >.reboot-on</code> were not present.</p>

      <p>This directive is useful because most Microsoft installers exit with status 194
        when they want to reboot the machine, but you suppressed the   automatic  reboot
        with a command-line switch.  (This is by observation;  as far as we know,  it is
        documented nowhere.)  For such installers, you would use <code>.reboot-on</code>
        like so:</p>
<pre class="code">
    todo.pl &quot;.reboot-on 194 q999999.exe /q /r:n&quot;
</pre>

      <h3>The .sleep directive</h3>
      <p>If you ever have to use this directive,  then you  are  doing  something  wrong,
        because there is no such thing as   a  guaranteed  time  bound  for  any  Windows
        operation.</p>

      <p>Unfortunately, some installers make  it  impossible  to  do  things  right.  For
        example, they might fork a subprocess and exit. In this case, the most convenient
        thing might be to delay a while.</p>

      <p>This directive simply takes an  integer  number  of  seconds  as  argument.  For
        example, to sleep 37 seconds, you would do:</p>
<pre class="code">
    todo.pl &quot;.sleep 37&quot;
</pre>

      <h2>The environment</h2>
      <p><code>todo.pl</code> arranges to run all commands in a  consistent  environment,
        with the following variables set.</p>

      <h3>PATH</h3>
      <p>The    <code>PATH</code>    environment     variable     will     have     <code
        >Z:\\bin;Z:\\scripts</code> prepended to it before any commands are run.  So  the
        scripts may refer to each other and to the utility scripts  without  supplying  a
        full pathname.</p>

      <h3 id="winlang">WINLANG</h3>
      <p>The <code>WINLANG</code> environment variable contains the <a href="http://www.microsoft.com/globaldev/reference/winxp/langtla.mspx"
        rel="external">three-letter language code</a> for the currently  running  version
        of Windows. This is useful for writing language-independent scripts.</p>

      <h3 id="winver">WINVER</h3>
      <p>The  <code>WINVER</code>  environment  variable  will  contain  a  short  string
        representing the version of Windows:</p>
      <dl>
      <dt><strong>win2k</strong></dt>
        <dd>For Windows 2000</dd>
      <dt><strong>win2ksp4</strong></dt>
        <dd>For Windows 2000 Service Pack 4</dd>
      <dt><strong>winxp</strong></dt>
        <dd>For Windows XP</dd>
      <dt><strong>winxpsp1</strong></dt>
        <dd>For Windows XP Service Pack 1</dd>
      <dt><strong>ws2k3</strong></dt>
        <dd>For Windows Server 2003</dd>
      </dl>
      <p>...and so on.  This variable is useful in scripts whose behavior needs  to  vary
        based on OS; e.g., when installing hotfixes.</p>

      <h3>Z</h3>
      <p>The <code>Z</code> environment  variable  contains  the  drive  letter  for  the
        installation share (default <code>Z:</code>). We added this variable after a user
        complained that his site was already using the <code>Z:</code> drive for  another
        purpose.  Unless you are another such user,  you do not need to worry about this.
        </p>

      <h3>Z_PATH</h3>
      <p>The <code>Z_PATH</code> environment variable contains  the full UNC path of  the
        share which is mapped to the <code>Z:</code> drive.  Some applications (e.g., the
        MSDN&nbsp;Library) remember which pathname was used to  install  them,  and  they
        will occasionally search for things there.  Since <code>Z:</code>  is  only  used
        during the installation process, users may not have it mapped, so installing from
        <code>Z:</code> can cause the application to fail later.  For such  applications,
        <code>Z_PATH</code> provides a workaround; see <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/msdn.bat"
        >msdn.bat</a> for an example.</p>

      <h1 id="examples">Examples</h1>
      <p>Some examples should help.  All of these are from the <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/"
        >install/scripts directory</a> in the distribution.</p>

      <h2>Adobe Reader</h2>
      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/adobe-reader.bat"
        >adobe-reader.bat</a> script installs Adobe Reader. This is about as simple as an
        installation script can get.</p>

      <p>To invoke this script manually, you would type:</p>
<pre class="code">
    Z:\\bin\\todo.pl adobe-reader.bat
    Z:\\bin\\todo.pl --go
</pre>

      <p>Obviously, you could just invoke the Adobe installer directly.  But  that  would
        lose  the  consistent  environment  and  error  checking   performed   by   <code
        >todo.pl</code>.</p>

      <h2>Office XP</h2>
      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/officexp.bat"
        >officexp.bat</a> script installs Microsoft Office XP and  reboots  the  machine.
        First, it pushes the <code>.reboot</code> directive onto the to-do list.  Then it
        pushes directives to install each update for  Office XP.  Finally,  it pushes the
        directive to install Office itself.</p>

      <p>To invoke this script manually, you would type:</p>
<pre class="code">
    Z:\\bin\\todo.pl officexp.bat
    Z:\\bin\\todo.pl --go
</pre>

      <h2>Combining scripts</h2>
      <p>To perform both the Office XP and Adobe Reader installations at once,  you would
        type:</p>

<pre class="code">
    Z:\\bin\\todo.pl officexp.bat adobe-reader.bat
    Z:\\bin\\todo.pl --go
</pre>

      <p>The first line adds officexp.bat and adobe-reader.bat to  the  to-do  list.  The
        second command processes the list.  The  <code>todo.pl</code>  script  begins  by
        removing <code>officexp.bat</code> from the front of the to-do list and executing
        it.   The  <code>officexp.bat</code>  script   itself  starts  by  pushing  <code
        >.reboot</code> onto the front of the to-do list.</p>

      <p>At this point, the to-do list contains <code>.reboot</code>  followed  by  <code
        >adobe-reader.bat</code>, and we are still in the middle of executing  the  <code
        >officexp.bat</code> script itself.</p>

      <p>Next, <code>officexp.bat</code> pushes the updates  onto  the  to-do  list,  and
        finally it pushes the instruction to install Office itself and exits.  Then <code
        >todo.pl</code> regains control and continues processing the to-do list; that is,
        it installs office  followed  by  its  updates.  Next,  it  processes  the  <code
        >.reboot</code> directive, by arranging to run itself after the  next  logon  and
        rebooting the machine.  After the reboot, <code>todo.pl</code> starts  up  again,
        removes <code>adobe-reader.bat</code> from the to-do list and executes it. And so
        on.</p>

      <p>The final result is that Office XP and Adobe Reader  are  both  installed,  even
        though the machine had to reboot in the middle.</p>

      <h2>A more complex example</h2>
      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/winxpsp2-updates.bat"
        >winxpsp2-updates.bat</a> script installs all of Microsoft's &quot;critical&quot;
        and &quot;recommended&quot; updates for Windows XP Service Pack&nbsp;2.  All this
        script does is push a bunch    of  items  onto  the  to-do  list,  including  the
        occasional <code>.reboot</code> directive.</p>

      <p>This example illustrates how to add a command with arguments to the  to-do  list
        by putting it in quotes.  Without the  quotes,  spaces  would  separate  multiple
        commands.</p>

      <p>This example also illustrates the use of the <code>.ignore-err</code> directive.
        </p>

      <p>Finally, this example illustrates an important consequence of the &quot;last in,
        first out&quot; semantics of <code>todo.pl</code>.  Since it always adds items to
        the <strong>front</strong> of the  to-do  list,  commands  will  execute  in  the
        <strong>opposite</strong> order from which they are added.  On  the  other  hand,
        <code>todo.pl</code> will preserve the order of the commands if you pass  several
        of  them   on   a   single   command   line.   Put   another   way,   &quot;<code
        >todo.pl&nbsp;X</code>&quot;  followed by &quot;<code>todo.pl&nbsp;Y</code>&quot;
        has same effect as &quot;<code>todo.pl&nbsp;Y&nbsp;X</code>&quot;.</p>

      <h2>A high-level example</h2>
      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/base.bat"
        >base.bat</a> script performs a &quot;base workstation&quot; installation  for  a
        organization. This includes a bunch of free software.</p>

      <p>This example illustrates the use of the <a href="#winver">WINVER</a> environment
        variable.  The <kbd>%WINVER%-updates.bat</kbd> name, for example,  will expand to
        <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/win2ksp4-updates.bat"
        >win2ksp4-updates.bat</a> on Windows 2000 Service Pack 4 and <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/winxpsp2-updates.bat"
        >winxpsp2-updates.bat</a> on Windows XP Service Pack 2.</p>

      <h2>A higher-level example</h2>
      <p>The <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/sales.bat"
        >sales.bat</a> script performs a &quot;salesperson laptop&quot; installation  for
        a organization. As you can see, this just performs a base installation, then adds
        Microsoft Office, Lotus Notes, the AT&amp;T global network dialer,  and the Shiva
        VPN client (now technically  the  Intel  Netstructure  VPN  client,  but  I  fear
        change).</p>

      <p>These last two examples also illustrate how easily you   can  compose  low-level
        scripts into high-level ones, no matter how many reboots  the  low-level  scripts
        perform.  Observe that if you make a change to the configuration in <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/base.bat"
        >base.bat</a>, the <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/sales.bat"
        >sales.bat</a> script will automatically inherit it.</p>

      <p>Unlimited composability is nice.</p>

      <h1 id="database">Database of &quot;unattended&quot; switches for various applications</h1>

      <p>To create an installation script for an application, you need  to  know  how  to
        install that application in &quot;unattended&quot; mode.  To  help  you,  we  are
        collecting a <a href="installers.php">list of  unattended/silent  mode  installer
        switches</a> for common installers and applications.  Contributions to this  list
        are most welcome.</p>

      <h1 id="scripts">Other utility scripts</h1>
      <p>Although <code>todo.pl</code> is the most important script, there are others in
        <code>Z:\\bin</code> which you might find useful.</p>

      <p>Many of these scripts are good examples of how to use <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/wmi_reference.asp"
        rel="external">WMI</a>, which can do <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/operating_system_classes.asp"
        rel="external">quite a few things</a>. WMI is a standard part of Windows 2000 and
        XP, and it is available as a free download for NT.</p>

      <dl>
      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/auconfig.pl"
        name="auconfig">auconfig.pl</a></dt>

        <dd>Configures the Automatic Updates feature introduced with Windows 2000 Service
          Pack 3.  The registry   settings  it  tweaks  are  not  really  documented;  <a
          href="http://ntfaq.com/articles/?articleid=26221"           rel="external">this
          third-party   article</a>    is    all    we    could    find.    Run     <code
          >auconfig.pl&nbsp;--help</code> for full usage instructions. Reboot to make the
          changes take effect.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/autolog.pl"
        name="autolog">autolog.pl</a></dt>

        <dd>Patches the registry to enable or  disable  the  &quot;automatic  logon&quot;
          facility.    Can  also  set  the  default  user  name  and  domain.   Run  <kbd
          >autolog.pl&nbsp;--help</kbd> for complete documentation.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/bootini.pl"
        name="bootini">bootini.pl</a></dt>

        <dd>For some reason,  all of my unattended installations end up displaying a boot
          menu with an unbootable &quot;Previous Operating System on  C:\\&quot;  option.
          This even happens if I wipe the disk with zeroes
          first. This script edits the hidden system file  <code>boot.ini</code>  to  get
          rid of the useless menu option.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/cert.pl"
        name="cert">cert.pl</a></dt>

        <dd>This script adds a certificate to the <code>ROOT</code> certificate store. It
          depends on the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/seccrypto/security/cryptography_portal.asp"
          rel="external">CryptoAPI COM interface (CAPICOM)</a>,  which  you  must install
          first. This means just copying the DLL to the right place and  registering  it;
          see <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/capicom.bat"
          >capicom.bat</a> for a sample installation script.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/enu/defrag.aut"
        >defrag.aut</a></dt>

        <dd>This is an <a href="installers.php#autoit">AutoIt</a>  script  to  defragment
          the primary hard drive from a command prompt.  Since we  use  a  FAT  partition
          which is converted to NTFS, the  initial  installation  tends  to  be  somewhat
          fragmented. I like to run a disk defragmentation before installing any software
          or hotfixes (to collect the free space),  then again just before delivering the
          machine to the user.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/hidepw.pl"
        >hidepw.pl</a></dt>

        <dd>According to  Microsoft's  <a  href="unattendtxt.php#msdoc"><strong>Guide  to
          Unattended Setup</strong></a>,  passwords in the <code>unattend.txt</code> file
          are erased when the installation finishes. I have not found this to be true. So
          I wrote this script to replace all passwords in <code>unattend.txt</code>  with
          X marks.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/instances.pl"
        name="instances">instances.pl</a></dt>

        <dd>WMI has many useful <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/wmi_classes.asp"
          rel="external">classes</a>. This is a generic script to enumerate the instances
          of any WMI class.

          <p>Running  <kbd>instances.pl&nbsp;--help</kbd>   will  give  you  brief  usage
            instructions.  Try running it with arguments like <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_process.asp"
            rel="external">Win32_Process</a>, <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_operatingsystem.asp"
            rel="external">Win32_OperatingSystem</a>, <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_bios.asp"
            rel="external">Win32_BIOS</a>, or <a href="http://msdn.microsoft.com/library/en-us/wmisdk/wmi/win32_baseboard.asp"
            rel="external">Win32_BaseBoard</a>.</p>
        </dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/instsrv.pl"
        >instsrv.pl</a></dt>

        <dd>The      <a      href="http://www.microsoft.com/windows2000/techinfo/reskit/"
          rel="external">Windows 2000  Resource  Kit</a>  includes  a  tool  named  <code
          >instsrv.exe</code> which lets you install a service from the command line.  It
          is the only such tool we could find, but  invoking  it  requires  including the
          password on the command line.  The <code>instsrv.pl</code> script uses  WMI  to
          perform the same task, but it prompts you for the password instead of  using  a
          command-line argument.

        <p>Yes, strictly speaking, using this script  means  your  installation  will  no
          longer be &quot;fully unattended&quot;.  But I do not like embedding  passwords
          in world-readable scripts, and I hate using the GUI.</p>
        </dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/rdconfig.pl"
        name="rdconfig">rdconfig.pl</a></dt>

        <dd>This script enables or disables the Remote Desktop service (formerly known as
          &quot;Terminal Services&quot;). It simply invokes the <a href="http://msdn.microsoft.com/library/en-us/termserv/termserv/win32_terminalservicesetting_setallowtsconnections.asp"
          rel="external">SetAllowTSConnections method</a> of the <a href="http://msdn.microsoft.com/library/en-us/termserv/termserv/win32_terminalservicesetting.asp"
          rel="external">Win32_TerminalServiceSetting</a>   WMI   class.     Run     <kbd
          >rdconfig.pl&nbsp;--allow=1</kbd>  to  enable  the  Remote  Desktop  and   <kbd
          >rdconfig.pl&nbsp;--allow=0</kbd> to disable it. As usual, the <kbd>--help</kbd
          > switch will yield full documentation.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/setenv.pl"
        name="setenv">setenv.pl</a></dt>

        <dd>This script takes two arguments, a variable name and a  value.  It  sets  the
          corresponding &quot;System&quot; environment variable to have that value,  just
          as if you had set it from the GUI.  This script  can  also  set  variables  for
          specific users and variables on remote machines; run it with  <kbd>--help</kbd>
          for more information.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/shortcut.pl"
        name="shortcut">shortcut.pl</a></dt>

        <dd>This script creates a Windows shortcut.  What makes it interesting is that it
          uses  <a   href="http://msdn.microsoft.com/scripting/"   rel="external">Windows
          Script Host</a> so that it can locate the various <a href="http://technet.microsoft.com/en-us/library/ee156616.aspx"
          rel="external">special folders</a> for you. So,  for  example,  you  could  use
          <code >shortcut.pl&nbsp;"C:\\Foo\\foo.exe"&nbsp;special:AllUsersDesktop</code >
          to create a desktop shortcut for all users.

        <p>Run <code>shortcut.pl&nbsp;--help</code> for documentation.</p></dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/shutdown.pl"
        name="shutdown">shutdown.pl</a></dt>

        <dd>Once upon a time, you could get <code>shutdown.exe</code> from the NT or 2000
          Resource  Kit.  Now  with  XP,  there   is   no   Resource   Kit,   but   <code
          >shutdown.exe</code> is standard.  Of course, the new <code>shutdown.exe</code>
          uses completely different command-line switches from the old Resource Kit tool,
          making it annoying and confusing to use in a script.

        <p><code>shutdown.pl</code> is a full-featured shutdown utility in  65  lines  of
          Perl. Most of those lines are documentation and, of course, error checking. Run
          <code>shutdown.pl&nbsp;--help</code> for details.</p>

        <p>(Note that the installation scripts do not use  this  program;  they  use  the
          <code>.reboot</code> directive to <a href="#todo">todo.pl</a> instead. But I am
          including it anyway for the heck of it.)</p></dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/startup-type.pl"
        name="startup-type">startup-type.pl</a></dt>

        <dd>This  script   lets   you   set   the   &quot;startup   type&quot;   (<strong
          >automatic</strong>, <strong>manual</strong>, <strong>disabled</strong>,  etc.)
          for a service from the command-line.  There are probably other tools out  there
          to do this, but I got tired of looking for them and wrote my own.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/win2ksp4-notips.pl"
        name="2k-notips">win2ksp4-notips.pl</a></dt>

        <dd>As you are no doubt aware, Windows displays lots of annoying first-time logon
          junk (&quot;tips&quot;).  This script gets rid of them for Windows 2000 Service
          Pack 4.   Note:  This script represents my taste in things to disable;  you may
          want to modify it for your site.

        <p>Incidentally, this script includes examples of editing the  registry  settings
          for the <strong>default user</strong>; that is, the settings inherited by every
          new user who logs into the machine. Mostapproaches I have seen to  this involve
          copying <code>NTUSER.DAT</code> from some  other  profile  to  the default user
          profile, but with Perl, you can edit this registry hive directly.</p></dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/winxpsp2-notips.pl"
        name="xp-notips">winxpsp2-notips.pl</a></dt>

        <dd>Similarly, but for Windows XP Service Pack 2.</dd>

      <dt><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/bin/with-env.pl"
        name="with-env">with-env.pl</a></dt>

        <dd>This script allows the output of one command to specify the environment for a
          second command.  The script takes two arguments, which are the commands to run.
          The first command should output one or more lines of lines of the form:
<pre class="code">
  VAR=VALUE
</pre>

      <p>The script will parse this output,  set the corresponding variables in the local
        environment, and execute the second command.</p>

      <p>You might be wondering why anybody would want this.  Well, the Windows  command
        prompt is a pretty weak scripting language,  but I cannot bring myself to depend
        on something else when I have Perl around. So, for example, I have a Perl script
        at  my  site  (<code>z:\\site\\officexp-key.pl</code>)  which   looks   up   the
        Office&nbsp;XP product key  for  the  current  machine  in  a  software  license
        spreadsheet, and prints a single line of the form <code>PIDKEY=xxx</code>.  Then
        I invoke <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/officexp.bat"
        >officexp.bat</a> from <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/sales.bat"
        >sales.bat</a> like this:</p>
<pre class="code">
  with-env.pl z:\\site\\officexp-key.pl officexp.bat
</pre>

      <p>The  result  is  that  the  correct  product  key  for  Office  is  provided  at
        installation time so that the user is not prompted for  it  later. Isn't software
        licensing fun?</p></dd>

      </dl>


EOT;

include ('page.inc');
?>
