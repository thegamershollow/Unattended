<?php
$title         = 'unattend.txt';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'faq.php';
$page['next']  = 'winsetup.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Understanding the goal', 'intro');
$sections[]    = array ('Syntax of unattend.txt', 'syntax');
$sections[]    = array ("Microsoft's documentation", 'msdoc');
$content       = <<<EOT
      <h1 id="intro" style="border-top: none; padding-top: 0;">Understanding  the   goal:
        unattend.txt</h1>
      <p><strong>Windows&nbsp;Setup</strong> is the program  which  installs Windows on a
        new computer. To do this, it needs to ask lots of questions: What is  your  name?
        What is your product key? What is your time zone? And so on.</p>

      <p>When you install Windows by hand, <strong>Windows&nbsp;Setup</strong> will  stop
       and put up a dialog box for every question to which it needs an answer.</p>

      <p>To perform an unattended  installation,  we  need  to  provide  an  &quot;answer
        file&quot; with pre-recorded answers to all of  the  questions.  The  traditional
        name for this file is <code>unattend.txt</code>, and its  creation  is  our  main
        goal.  Another way of describing the overall unattended installation process  is:
        </p>

      <ol>
        <li>Obtain access to the OS installation media</li>
        <li>Obtain access to the destination hard drive</li>
        <li>Generate <code>unattend.txt</code></li>
        <li>Run <strong>Windows&nbsp;Setup</strong> with appropriate switches to make  it
          get answers from <code>unattend.txt</code> instead of dialog boxes</li>
      </ol>

      <p>These are the steps which Unattended automates. It uses DOS to provide access to
        the  OS  installation media  and  hard drive; it uses a Perl script to create the
        <code>unattend.txt</code>  file;   and   it   knows   how   to   invoke   <strong
    >Windows&nbsp;Setup</strong> appropriately.</p>

      <p>You do not need to understand the contents of <code>unattend.txt</code>  to  use
        Unattended, but you should learn about it eventually anyway.</p>

      <h1 id="syntax">Syntax of unattend.txt</h1>
      <p>The general syntax of an answer file is the same as  any  <code>.ini</code>  (or
        <code>.inf</code>) file. It looks something like this:</p>
      <pre class="code">[SECTION 1]
  ; COMMENT
  KEY1=VALUE1
  KEY2
  KEY3="funny;quoted=value"

[SECTION 2]
.
.
.
</pre>
      <p>That is, it consists of <strong>sections</strong>, each headed by a section name
        in square brackets.  Each section has zero or more <strong>entries</strong> (also
        called <strong>settings</strong>). Each entry assigns a <strong>value</strong> to
        a <strong>key</strong>, or else consists of a <strong>key</strong> by itself. Any
        line beginning with a semicolon,  or  whitespace  followed by a semicolon,  is  a
        <strong>comment</strong>.</p>

      <p>If the value contains any special characters, or if it is the empty  string,  it
         must   be   placed   in   quotation   marks.   Which   characters   qualify   as
         &quot;special&quot; is undocumented; the <code>.ini</code> file parser/generator
         in Unattended tries to be fairly conservative,  and  will  exit  with  an  error
         message if it encounters an unrecognized line. Quotes are allowed even when they
         are not required, so when in doubt, use them.</p>

      <p>For a complete sample <code>unattend.txt</code> file,  use Unattended to install
        Windows and then examine  <code>C:\\NETINST\\UNATTEND.TXT</code>.   For a partial
        file     containing     some     of     Unattended's    defaults,      see     <a
        href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/lib/unattend.txt"
        >Z:\\lib\\unattend.txt</a> from the distribution.</p>

      <h1 id="msdoc">Microsoft's documentation</h1>
      <p>The most thorough documentation for the  answer  file  is  Microsoft's own,  but
        unfortunately,  it is a bit annoying to obtain.  There are different versions for
        Windows 2000 and Windows XP, although the answer files are very similar.</p>

      <dl>
      <dt>Windows 2000 Guide to Unattended Setup</dt>

      <dd>Microsoft    put     the    SP1     version    of    this     document       <a
        href="http://www.microsoft.com/technet/prodtechnol/windows2000pro/deploy/unattend/default.mspx"
        rel="external">on the Web</a>,   but they seem to have stopped with later service
        packs.  The canonical way to obtain this document is to download and install  the
        <a href="http://www.microsoft.com/windows2000/downloads/servicepacks/sp4/supporttools.asp"
        rel="external">Windows 2000 SP4 Support Tools</a>,  then use Internet Explorer to
        extract  the  <code>unattend.doc</code>  file  from  the  <code>deploy.cab</code>
        archive.

      <p>You can also find an earlier version of  <code>deploy.cab</code>  on the Windows
        2000 CD in the <code>\\support\\tools</code> folder.</p>
      </dd>

      <dt>Microsoft Windows Preinstallation Reference</dt>

      <dd>As far as we know, this document is not available directly on the Web. You must
        first download the <a href="http://www.microsoft.com/WindowsXP/pro/downloads/servicepacks/sp1/deploytools.asp"
        rel="external">Windows   XP   SP1a   Corporate   Deployment   Tools</a>,    <code
        >deploy.cab</code>. Then use Internet Explorer to extract <code>ref.chm</code>, a
        a Windows &quot;Compiled Help&quot; file, which you can double-click to browse.

      <p>Here again,  <code>deploy.cab</code>  may also be found on the Windows XP CD  in
        the <code>\\support\\tools</code> folder.</p>
      </dd>

      <dt>Windows Server 2003</dt>

      <dd>For Windows Server 2003,
       <a href="http://technet.microsoft.com/en-us/library/cc757642(WS.10).aspx">Unattended Installation Tools and Settings</a>
      Seems to be the document.
      </dd>

      </dl>

EOT;

include ('page.inc');
?>
