<?php
$title         = 'Welcome';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = '';
$page['next']  = 'documentation.php';
$page['last']  = 'links.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Introduction', 'introduction');
$sections[]    = array ('Why should I use it?', 'motivation');
$sections[]    = array ('How to start', 'howtostart');
$content       = <<<EOT
      <h1 id="introduction"  style="border-top: none;  padding-top: 0;">Introduction</h1>
      <p>This is  a  system  for  fully  automating  the  installation  of  Windows  2000
        Professional and Server, Windows XP, and Windows Server 2003.</p>

      <p><strong>Features include:</strong></p>
      <ul>
        <li>Automated install of operating system, hotfixes and applications.</li>
        <li>Full documentation and source code.</li>
        <li>Support for floppy, CD-ROM, and &quot;nothing but net&quot; installs.</li>
        <li>True unattended installation, <em>not</em> disk imaging.</li>
        <li>No Windows servers required; use your Unix servers instead.</li>
        <li>No Unix servers required; use your Windows servers after all.</li>
        <li>Completely free.</li>
        </ul>

      <p>When you are finished setting up Unattended,   you will be able to boot  any  PC
        from a floppy,  from a CD-ROM,  or  directly  from  the  network,  answer  a  few
        questions,   and  come  back an hour or two later to  a  fully-installed  Windows
        workstation.</p>

      <p>But be warned: This is not  a  <span  class="code-inline">./configure &amp;&amp;
        make install</span> kind of project, and it is not a slick GUI app. You will need
        to understand at least a little of what goes on &quot;under the covers&quot;, and
        you will need to perform some customization for your site.</p>

      <h1 id="motivation">Why should I use it?</h1>

      <p>Microsoft has their own approach to this problem, called <a
        href="http://www.microsoft.com/windows2000/en/datacenter/help/sag_RIS_Default_topnode.htm"
        rel="external">Remote Installation Services</a> (RIS).  You may be wondering  why
        you should use Unattended instead of RIS.</p>

      <p>The main reason is that Unattended is open source.  Using RIS,  just try to  add
        support for a new network card to the boot disk, or  try to create  a  customized
        partitioning scheme,  or try to fix a bug.  With an open source system,  you have
        everything you need to fix any problem or add any feature you want,   and you can
        contribute your changes back to the project so that others may benefit.</p>

      <p>Unattended does have other advantages, like using whatever servers you happen to
        have handy,  whether Windows or Unix.   But really, other than being open source,
        Unattended is not all that different from RIS.  Perhaps  I  should have  named it
        OpenRIS...</p>

      <h2 id="diskimaging">What about disk imaging?</h2>

      <p>Whether you use Unattended,  RIS,  or some other system for Windows  deployment,
        one technique which you should absolutely avoid is disk imaging.</p>

      <p>Also called "cloning", disk imaging means taking a snapshot of the hard drive of
        one machine and restoring it onto the hard drive of another.   Microsoft provides
        tools like <a href="http://www.microsoft.com/resources/documentation/WindowsServ/2003/all/deployguide/en-us/acicd_sys_overview.asp"
        rel="external">Sysprep</a> and <a href="http://www.microsoft.com/resources/documentation/Windows/XP/all/reskit/en-us/prbc_cai_ogbp.asp"
        rel="external">RIPrep</a> to help you with this task, and it is  a  very  popular
        way to deploy systems.</p>

      <p>But it is usually a bad idea.  Never mind that imaging provides poor support for
        non-uniform hardware; the big problem is that it creates a maintenance nightmare.
        </p>

      <p>For  example,  suppose  you  have  several  system   configurations,   including
        salesperson  laptops,  developer  workstations,  automated  build  servers,   and
        financial systems.  In addition, suppose you are in the process of migrating your
        organization from  Windows 2000 to  Windows XP, so you need to be able to install
        both.</p>

      <p>Even for this simple example,  you will need to create and store eight different
        images, one for each combination of OS and application suite.  To update a common
        application, you will have to modify and re-create all  eight  images.   Add some
        diverse hardware like fancy laptops into  the  picture, and the nightmare becomes
        clear.</p>

      <p>If you are cranking out thousands of   identical  workstations  with  completely
        identical hardware and  software,  imaging  is  a  fine  approach.  But  if  your
        organization  is  like  most, with  heterogenous   hardware  and  software,  true
        unattended installation  will  give  you   better  reliability  and  much  easier
        maintenance.</p>

      <p>(By the way,  another popular but bad idea is application repackaging,  which  I
        discuss <a href="installers.php#repackaging">elsewhere</a>.)</p>

      <h1 id="howtostart">How to start</h1>
      <p>If you would like to give Unattended a try, you can  start  right  now.  We have
        compiled a <a href="step-by-step.php">step-by-step</a> guide for you.</p>
EOT;

include ('page.inc');
?>
