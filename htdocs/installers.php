<?php
$title         = 'Unattended/Silent Installation Switches for Windows Apps';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'dynamic.php';
$page['next']  = 'apps.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Introduction', 'intro');
$sections[]    = array ('General information', 'general');
$sections[]    = array ('If all else fails...', 'fail');
$sections[]    = array ('Examples', 'examples');
$content       = <<<EOT
      <h1 id="intro" style="border-top: none; padding-top: 0;">Introduction</h1>
      <p>The goal of this document is to collect instructions for performing unattended /
        silent installations of many popular application  installers.  Such  instructions
        are useful for automating these installations.</p>

      <p>A quick word on terminology: Strictly speaking,  an  <strong>unattended</strong>
        installation is one which does  not  require  user  interaction,  and  a  <strong
        >silent</strong> (or <strong>quiet</strong>) installation is one which  does  not
        display any indication of its progress. However,  most  people  use  these  terms
        interchangeably.</p>

      <p>Here, we are interested not only in  performing  unattended  installations,  but
        also in waiting for those installations to finish and suppressing any reboot they
        might want to  perform.  This  is  necessary  for  reliably  installing  multiple
        applications.</p>

      <h1 id="general">General information</h1>
      <p>There are several systems which vendors  use  to  create  installers  for  their
        applications. To make an educated guess about how to run an installer unattended,
        you need to know which system was used to  create  it.  Sometimes  this  will  be
        obvious from the installer's splash screen; sometimes you can figure  it  out  by
        running <a href="http://sourceware.org/binutils/docs/binutils/strings.html"
        rel="external">strings</a>; and sometimes you will have to guess.</p>

      <p>Of course, you can try running the installer with the  <code>/?</code> switch to
        find out which other switches it supports. But if you really expect this to work,
        then you have not been using Windows for very long.  In my experience,  the  odds
        are about 1 in 4 that <code>/?</code> will tell you  anything  at  all, even when
        there is something to tell.</p>

      <h2 id="msi">MSI packages</h2>
      <p>Microsoft's own <a href="http://msdn.microsoft.com/en-us/library/cc185688(VS.85).aspx"
        rel="external">Windows Installer Service</a> is  the  nominal  standard,  and  if
        everybody used it, there would be  no  need  for  this  document.  Unfortunately,
        Microsoft invented it too late.</p>

      <p>The package files have a <code>.msi</code>  extension,  and  you manipulate them
        using the <a href="http://technet.microsoft.com/es-es/library/bb490936(en-us).aspx"
        rel="external"><code>msiexec</code></a> utility.</p>

      <p>For installation, use the <code>/i</code> and <code>/qb</code> switches. Use the
        <code>/l*</code> switch to produce a log file.  You can provide named options (or
        &quot;<a  href="http://msdn.microsoft.com/en-us/library/aa370889(VS.85).aspx"
        rel="external">properties</a>&quot;) at  the  end  of  the  command  line;  which
        properties are supported depends on the package. For example, this command:</p>
<pre class="code">
    msiexec /qb /l* perl-log.txt /i ActivePerl.msi PERL_PATH=Yes PERL_EXT=Yes
</pre>
      <p>...is how you install ActiveState Perl,  instructing  the  MSI  package  to  add
        Perl.exe to your <code>PATH</code> and to associate <code>.pl</code>  files  with
        it.</p>

      <p>Perhaps the most important common property is the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/msi/setup/reboot.asp"
        rel="external">REBOOT property</a>, which you can use to suppress  any  automatic
        reboot the MSI package might try to perform.  So in general,  you want to provide
        the  <code>/i</code>,  <code>/qb</code>,  and  <code>REBOOT=ReallySuppress</code>
        parameters to <code>msiexec</code>.</p>

      <p><code>msiexec</code> can do many other things, like uninstall  software or apply
        patches. Neat, huh? Too bad nobody uses it.</p>

      <h2 id="installshield">InstallShield</h2>
      <p><a href="http://www.installshield.com/" rel="external">InstallShield</a> is  one
        of the oldest and most widely used application packaging systems.</p>

      <p>Installers  created  by  InstallShield  recognize  the  <code>/r</code>,   <code
        >/s</code>, <code>/sms</code>, <code>/f1</code>, and  <code>/f2</code>  switches.
        The installer itself is invariably named <code>setup.exe</code>.</p>

      <p>To perform  a  silent  installation,  you  need  an  InstallShield  &quot;answer
        file&quot;, customarily named <code>setup.iss</code>. Some applications ship with
        such a file, but if yours does not, you can use the graphical installer itself to
        create one.</p>

      <p>Here  is  how  it  works.   Run   the   installer   with   the   <code>/r</code>
        (&quot;record&quot;) switch.   Proceed  through  the  dialogs  and  complete  the
        installation.  This will create a <code>setup.iss</code> file and place it in the
        <code>C:\\WINDOWS</code> directory (yes, really).  This file will include all  of
        your responses to the  InstallShield dialogs,  allowing you to perform unattended
        installations as if you were giving the same answers  again.  Simply  copy  <code
        >setup.iss</code> to the same directory as the installer executable.</p>

      <p>Once you have a <code>setup.iss</code> file, run the installer  with  the  <code
        >/s</code>  (&quot;silent&quot;)  option.  This  will   perform   an   unattended
        installation.</p>

      <p>Unfortunately, the installer will fork a separate process and exit,  meaning  it
        will return immediately even if you run it  under  <code>start&nbsp;/wait</code>.
        This makes it useless for scripting purposes.  Luckily, there is another  switch,
        <code>/sms</code>, which will cause the installer to pause until the installation
        completes.</p>

      <p>Hence, for an InstallShield application, you want  to  provide  both  the  <code
        >/s</code> and the <code>/sms</code> switches.</p>

      <p>The  <code>/f1<var>filename</var></code>  switch  allows  you   to   specify   a
        fully-qualified alternate name for the  <code>setup.iss</code>  file.  Note  that
        there must be <strong>no</strong> space between the <code>/f1</code>  switch  and
        the file name. This switch works both with <code>/r</code> to create the file and
        with <code>/s</code> to read it.</p>

      <p>The <code>/f2<var>filename</var></code> switch specifies a log file. Once again,
        there must be <strong>no</strong> space between the switch and the file name.</p>

      <p><strong>WARNING</strong>: Be careful what  characters  you  use  in  these  file
        names, because InstallShield  silently  strips  certain  non-alphanumerics  (like
        hyphens).</p>

      <p>Oh,  one more thing.  The <code>/r</code> and <code>/s</code> switches only work
        if  the  release  engineer  is  competent.  Many   packages   have   &quot;custom
        dialogs&quot; which are not supported by <code>setup.iss</code>, which means  the
        dialogs will always appear no matter what you do.  For such packages,  I  suggest
        asking the vendor to fix their installer.  If that does not work, I suggest doing
        what you can to deprive them of business.</p>

      <h3 id="pftw">PackagefortheWeb</h3>
      <p><a href="#installshield">InstallShield</a> has a relatively new  add-on  product
        called      <a      href="http://www.installshield.com/pftw/"      rel="external"
        >PackagefortheWeb</a>, or PFTW for short.  This  is  basically  an  InstallShield
        tree bundled up as a single-file executable.</p>

      <p>When you run this executable, it extracts  a  bunch  of  files  to  a  temporary
      directory and launches the <code>setup.exe</code> within.</p>

      <p>The PFTW package recognizes  the  <code>/s</code>  and  <code>/a&nbsp;...</code>
        switches. The <code>/s</code> switch instructs the PFTW package to run  silently,
        although this does not necessarily mean that the underlying <code>setup.exe</code
        >will run silently.</p>

      <p>The <code>/a&nbsp;...</code> (&quot;add&quot;) switch allows you to add switches
        to the command line of the underlying  <code>setup.exe</code>  process.  You  may
        provide any of the normal InstallShield switches here, including <code>/r</code>,
        <code>/s</code>, and <code>/sms</code>.</p>

      <p>Thus, to automate the installation of a PFTW package named <code>foo.exe</code>,
        you would first perform one installation by hand to create the answer file:</p>
<pre class="code">
    foo.exe /a /r /f1c:\\temp\\foo.iss
</pre>
      <p>Then, to install the package completely silently, you would run:</p>
<pre class="code">
    start /wait foo.exe /s /a /s /sms /f1c:\\temp\\foo.iss
</pre>
      <p>The first <code>/s</code> is only needed for a completely  silent  installation.
        If you leave it off, the PFTW package will show you a status bar as  it  extracts
        the InstallShield tree to the temporary directory.</p>

      <h3 id="ismsi">InstallShield with MSI</h3>
      <p>Recent versions (7 and above) of InstallShield's tools are able  to  produce  <a
        href="#msi">MSI</a> files. Read <a href="http://documentation.installshield.com/robo/projects/helplibdevstudio9/SilentInstall.htm"
        rel="external">InstallShield's documentation</a> for full details.</p>

      <p>These MSI files may be shipped alone or with a <code>setup.exe</code> installer.
        These  installers  in  turn  come  in  two  flavors,  called  &quot;InstallScript
        MSI&quot;  and   &quot;Basic   MSI&quot;.   InstallScript   MSI   uses   the   <a
        href="#installshield">traditional InstallShield</a>  switches.   Basic   MSI   is
        another story.</p>

      <p>To perform an unattended installation using a Basic MSI installer,  you  provide
        the  <code>/s&nbsp;/v&quot;...&quot;</code>  switches,   where   <code>...</code>
        represents any additional switches you want to pass down to <code>msiexec</code>.
        These should include the <code>/qb</code> (or <code>/qn</code>)  switch  to  make
        the installation non-interactive, so a minimal invocation would be:</p>
<pre class="code">
    setup.exe /s /v&quot;/qb&quot;
</pre>

      <p>Just to make things interesting, any of these mechanisms might be combined  with
        <a href="#pftw">PFTW</a>. For example, we eventually figured out that the <a href="http://www-3.ibm.com/pc/support/site.wss/MIGR-46134.html"
        rel="external">IBM Update  Connector</a>  requires  these  flags  for  unattended
        installation:</p>
<pre class="code">
    updcon532.exe /s /a /s /v&quot;/qb&quot;
</pre>

      <p>The first <code>/s</code> tells the PFTW  installer  to  extract  silently.  The
        <code>/a</code> tells it to provide the  remaining  switches  to  the  underlying
        <code>setup.exe</code>.  The second <code>/s</code> tells  <code>setup.exe</code>
        to run silently, while the <code>/v&quot;/qb&quot;</code> tells it to pass  <code
        >/qb</code> to <code>msiexec</code>, which  causes  <code>msiexec</code>  to  run
        non-interactively but display a basic interface.</p>

      <p>Finally, InstallShield has a <a href="http://support.installshield.com/kb/view.asp?articleid=q105473"
        rel="external">KnowledgeBase article</a> which is less  helpful  than  you  might
        expect. Are we having fun yet?</p>


      <h2 id="wise">Wise InstallMaster</h2>
      <p>InstallMaster   from    <a    href="http://www.wise.com/"    rel="external">Wise
        Solutions</a> is a competitor to InstallShield.  You  can  usually  identify  the
        installers it produces by  running  &quot;strings&quot;  on  the  executable  and
        grepping for &quot;Wise&quot;.</p>

      <p>InstallMaster installers are supposed to recognize the <code>/s</code> switch to
        perform a silent installation. And in our  experience,  they  generally  do.  But
        there is no way to set options, and the exit status is meaningless.</p>

      <p><strong>Note</strong>:   This   product   has   been  rebranded  the  &quot;Wise
        Installation System&quot;. Don't let them confuse you.</p>

      <h2 id="inno">Inno Setup</h2>
      <p><a href="http://www.jrsoftware.org/isinfo.php" rel="external">Inno Setup</a>  is
        an open source competitor in this space.  You can usually identify the installers
        it creates by running &quot;strings&quot; on  the  executable  and  grepping  for
        &quot;Inno&quot;.</p>

      <p>The switches for Inno Setup are fully documented in the  <code>ISetup.hlp</code>
        file in the Inno distribution. 
        <a href="InnoSetup_Switches_ExitCodes.html">Here</a>, is an html version. Thanks to
        <a href="http://sourceforge.net/users/lawmay/">Lawrence Mayer</a> for it.</p>

      <p>In our experience, the <code>/silent</code> switch is usually sufficient  for  a
        basic unattended installation.  But to be completely  sure,  we  recommend  <code
        >/sp-&nbsp;/silent&nbsp;/norestart</code>.</p>

      <p>Note that the <code>/verysilent</code> switch may  reboot  the  machine  without
        prompting, which is pretty much the worst of all possible worlds.  So if you  use
        <code>/verysilent</code>, be sure to use <code>/norestart</code> as well.</p>


      <h2 id="nsis">Nullsoft Scriptable Install System</h2>
      <p>The <a  href="http://nsis.sourceforge.net/"  rel="external">Nullsoft  Scriptable
        Install System</a> (NSIS) is another open  source  installation  system.  It  was
        created by the <a href="http://www.winamp.com/" rel="external">WinAmp</a> authors
        to distribute that application, but it is now a general-purpose system  which  <a
        href="http://www.nullsoft.com/free/nsis/users.html"  rel="external">anyone  might
        use</a>.</p>

      <p>When an NSIS installer runs,  it  creates  a  little  window  which  says  <code
        >verifying&nbsp;installer:&nbsp;N%</code>, where <code>N</code> counts from 0  to
        100. So you can recognize  these  installers  by  this  behavior.  (Actually  the
        verification procedure is optional, but most installers have it  enabled.  As  an
        alternative, you can run &quot;strings&quot; and grep for &quot;NSIS&quot;).</p>

      <p>NSIS   installers   recognize   <code>/S</code>   for    silent    installation,
        <code>/NCRC</code> to suppress the CRC  (verification)  step,  and  <code>/D=<var
        >dir</var></code> to specify the &quot;output directory&quot;, which is where the
        program will be installed. These options are <strong>case-sensitive</strong>,  so
        be sure to type them in upper case.</p>

      <p>Incidentally, all <code>/S</code> does is change the installer script's <a href="http://nsis.sourceforge.net/Docs/Chapter4.html#4.8.1.36"
        rel="external">SilentInstall    attribute</a>    from    &quot;normal&quot;    to
        &quot;silent&quot;. What effect this has, exactly,  depends  on  the  person  who
        wrote the script. If <code>/S</code> does not perform a silent install,  consider
        submitting a bug report to the installer's creator.</p>

      <h2 id="ghost">Ghost installer</h2>
      <p><a href="http://www.ethalone.com/" rel="external">Ethalone's Ghost installer</a>
        is just another commercial product, available in free  and  commercial  editions.
        The free edition is  nothing  but  the  compiler,  which  takes  XML  files;  the
        commercial edition is the compiler plus a graphical editor and wizard  to  create
        these XML files.</p>

      <p>When a Ghost installer runs, it creates a little  graphical  window  which  says
        &quot;Ghost  installer  wizard.  Setup   is   preparing   the   Ghost   Installer
        wizard...&quot; together with a progress bar.</p>

      <p>Ghost  installers  recognize   <code>-s</code>   (case-sensitive)   for   silent
        installation, but that works only if the person who created the installer defined
        a standard installation type (if there are more than one).</p>

      <p>If you have trouble to get it silent you might try to guess  internal  variables
        and pass   new  values  at  the  command  line  using  <code>-var:<var>MyVar</var
        >=value</code>.  Unfortunately,  using  &quot;strings&quot;  will  not  help  you
        guessing. <a href="http://www.ethalone.com/cgi-bin/ib/ikonboard.cgi?act=ST;f=2;t=157"
        rel="external">See here</a>.</p>

      <p><a      href="http://www.ethalone.com/cgi-bin/ib/ikonboard.cgi?act=ST;f=2;t=195"
        rel="external">Other command line parameters</a>  are  <code>-r</code>  (repair),
        <code>-c</code> (add/remove), and <code>-u</code> (uninstall).</p>

      <h2 id="hotfixes">Microsoft hotfixes and older packages</h2>
      <p>Most Microsoft hotfixes respond to the <code>/?</code> switch,  but they do  not
        always tell you everything.</p>

      <p>According to <a href="http://support.microsoft.com/?id=816915" rel="external">KB
        article    816915</a>   and   <a   href="http://support.microsoft.com/?id=824687"
        rel="external">KB article 824687</a>, Microsoft  is  moving towards  standardized
        packaging and naming for hotfixes. But they are not done yet.</p>

      <p>Modern hotfixes support  <code>/passive</code>  (formerly  <code>/u</code>)  for
        unattended installation, <code>/norestart</code>  (formerly  <code>/z</code>)  to
        suppress the automatic reboot, and  <code>/n</code>  to  skip  backing  up  files
        needed for uninstalling the hotfix.</p>

      <p>Some   hotfixes   use   an   old   Microsoft   packaging    technology    called
        &quot;IExpress&quot;, whose switches are more-or-less documented in <a href="http://support.microsoft.com/?id=197147"
        rel="external">KB article 197147</a> and <a href="http://groups.google.com/groups?selm=%23DxIcwcQ%24GA.236%40cppssbbsa02.microsoft.com"
        rel="external">an old USENET post</a>.  These installers first extract some stuff
        to a temporary folder and then run  a  command  from  inside  that  folder.  They
        support the  <code>/t:<var>path</var></code>  switch  to  specify  the  temporary
        folder name and the  <code>/c:<var>command</var></code>  switch  to  specify  the
        command to run. Specifying just <code>/c</code> suppresses running the command at
        all, so you can use <code>/c&nbsp;/t:<var>path</var></code> to extract the hotfix
        just to look at it.</p>

      <p>These packages support the <code>/q</code> switch for  quiet  operation,  except
        sometimes you have to use <code>/q:a</code> instead.  They also support the <code
        >/r:n</code> switch to suppress the reboot.   Sometimes these do not work and you
        have to fiddle with the <code>/c:<var>command</var></code> switch; see the second
        &quot;NOTE&quot;     in     <a     href="http://support.microsoft.com/?id=317244"
        rel="external">KB article 317244</a> for an example.</p>

      <p>Leave it to Microsoft to make systems administration an <a href="http://support.microsoft.com/?id=69563"
        rel="external">experimental science</a>.</p>

      <h1 id="fail">If all else fails...</h1>
      <p>If the application simply has no  unattended  installation  procedure,  you  can
        create your own.  I prefer to avoid these approaches if at  all  possible,  since
        they are relatively unreliable and difficult to maintain.</p>

      <h2 id="repackaging">Repackaging</h2>
      <p>There are several tools around which can take a snapshot of  a  machine's  state
        before and after a manual  installation,  compute  the  differences  between  the
        states, and bundle them up  as  an   &quot;installer&quot;.  The  <a href="#wise"
        >Wise</a> product line provides good support for this, and <a href="http://www.ondemandsoftware.com/FREELE2003/"
        rel="external">Microsoft's free tool</a> provides bad support for it.</p>

      <p>The problem with this approach is that it fundamentally cannot work reliably. An
        installer's behavior may depend on the exact initial state of the  machine,  such
        as the OS version or the presence/absence of other  installed  software.  So  the
        repackaged installer will almost never do exactly the same  thing  that  a  fresh
        installation would, unless the target machine is   completely  identical  to  the
        original machine.</p>

      <p>In addition, for every new release of an application, you will need to repackage
        it again.  And there are  other <a href="http://support.microsoft.com/?id=264478"
        rel="external">disadvantages</a> which even Microsoft recognizes.</p>

      <p>For these reasons, we think repackaging is a  very  bad  idea  and  we  strongly
        advise against it.</p>


      <h2 id="autoit">AutoIt</h2>
      <p><a href="http://www.hiddensoft.com/autoit3/" rel="external">AutoIt</a> is a free
        tool which can  simulate  key  presses  and  mouse  clicks,  following  a  script
        customarily named with a  <code>.aut</code>  or  a  <code>.au3</code>  extension.
        Most installers have a sufficiently simple and consistent interface that  a  very
        short AutoIt script suffices to automate their installation.</p>

      <p>The AutoIt distribution includes very good <a href="http://www.autoitscript.com/autoit3/docs/"
        rel="external">documentation</a>.   The  Unattended  distribution  includes  both
        versions 2 (AutoIt.exe) and  3 (AutoIt3.exe).  These  versions  differ  in  their
        script formats.  Currently,  all scripts that are  shipped  with  Unattended  are
        written for version 2, but we <a href="http://www.mail-archive.com/unattended-devel@lists.sourceforge.net/msg00212.html"
        rel="external">plan</a> to switch to version 3 in the future and advise to create
        new scripts only in version 3.</p>

      <p>AutoIt scripts do have drawbacks.</p>

      <p>First, you must be careful when upgrading to new  releases  of  an  application,
        since the installer's UI may have changed.</p>

      <p>More worryingly, AutoIt scripts are theoretically unreliable because they do not
        let you determine when a sub-process has exited. You can tell when AutoIt  itself
        exits, but that is not the same thing at all. For example,  an  installer's  last
        window might disappear while the installer was still working. Your master script,
        waiting only for the AutoIt executable,  would  then  proceed,  starting  another
        installation or rebooting the machine.</p>

      <p>AutoIt provides <a href="http://www.dx21.com/SCRIPTING/AUTOIT/ViewItem.ASP?NTI=4&amp;SI=3&amp;OID=49"
        rel="external"><code>Run</code></a> and <a href="http://www.dx21.com/SCRIPTING/AUTOIT/ViewItem.ASP?NTI=4&amp;SI=3&amp;OID=50"
        rel="external"><code>RunWait</code></a> primitives, but it does not provide a way
        to wait for the  termination  of  an  application  which  was  invoked  by  <code
        >Run</code>.  If it did, this race condition could be avoided.</p>

      <p>In practice, it does not matter much, because most installers  do  finish  their
        work before destroying their last window.  Just make sure your  <code>.aut</code>
        script uses <a href="http://www.dx21.com/SCRIPTING/AUTOIT/ViewItem.ASP?NTI=4&amp;SI=3&amp;OID=74"
        rel="external"><code>WinWaitClose</code></a> to wait  for  that  last  window  to
        vanish.</p>

      <p>You should make sure that your  script  contains  a  [ADLIB]  section  to  catch
        surprising reboot requests.</p>

      <h1 id="examples">Examples</h1>
      <p>To pique your inspiration  you  should  have  a  closer  look  on  some  of  our
        application installation scripts in the SVN repository:</p>

      <ul>
        <li><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/7-zip.bat?rev=HEAD">7-Zip</a></li>
        <li><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/perl.bat?rev=HEAD">ActiveState Perl (ActivePerl)</a></li>
        <li><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/adobe-reader.bat?rev=HEAD">Adobe Reader 7.0</a></li>
        <li><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/scripts/ie6.bat?rev=HEAD">Microsoft Internet Explorer</a></li>
      </ul>

      <p>And do not forget our <a href="http://sourceforge.net/apps/trac/unattended/"
        rel="external">Wiki</a>, which is  a  very  good  source  of  additional  install
        scripts.</p>
EOT;

include ('page.inc');
?>
