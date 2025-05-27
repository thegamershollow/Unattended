<?php
$title         = 'Frequently Asked Questions';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = 'lists.php';
$page['next']  = '';
$page['last']  = '';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Related sites', 'related');
$sections[]    = array ('Extra documents', 'extra');
$content       = <<<EOT
      <h1  id="related"  style="border-top:  none;  padding-top:  0; ">Related sites</h1>
      <p>You  can  obtain  information  and  inspiration  from  these  other   sites:</p>
      <ul>
        <li><a   href="http://ani.sourceforge.net/"   rel="external">Automated    Network
          Installations</a><br /> aka.  &quot;our  friendly  competition&quot;.  An  open
          source project with similar goals but different design.</li>
        <li><a href="http://isg.ee.ethz.ch/tools/realmen/" rel="external">Real Men  Don't
          Click</a><br />Once upon a time, in spring 2000 to be exact, a  merry  band  of
          system managers from the Department of  Electrical  Engineering  at  the  Swiss
          Federal Institute of Technology set out on  a  mission,  to  apply  their  well
          tempered Unix knowledge to Windows 2000.  Against  all  odds,  they  came  back,
          mission accomplished (sort of) and were still able to tell their story.</li>
        <li>labmice.net [ <a href="http://www.labmice.net/windows2000/install/unattend_install.htm"
          rel="external">Windows 2000</a> | <a href="http://www.labmice.net/windowsxp/Install/unattend.htm"
          rel="external">Windows XP</a> ]<br />An index-website to Windows 2000  /  XP  /
          .NET information resources.</li>
        <li><a     href="http://appdeploy.com/"       rel="external">AppDeploy.com</a><br
        />AppDeploy does not sell products or services,  but  serves  as  an  independent
        resource on the topic of desktop management.</li>
        <li><a    href="http://www.willowhayes.co.uk/"     rel="external">Windows    2000
          Unattended Installations and related utilities</a><br />by Oli Restorick</li>
        <li><a href="http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg00107.html"
          rel="external">Little rant about TXTSETUP.OEM</a></li>
        </ul>

      <h1 id="extra" style="border-top: none; padding-top: 0;">Extra documents</h1>
      <p>You may find these extra documents helpful:</p>
      <ul>
        <li>The <a href="cygwin.html">Using Cygwin</a> guide will show  you how   to  use
          Cygwin  to  run  the  handy  <span  class="code-inline">prepare</span>  script,
          rebuild the DOS boot disk images, and other things.</li>
        <li>Tyler   Hepworth   has   contributed   a   document   on   setting   up    <a
          href="pxe-win2k.html">PXE without RIS on Windows 2000 Server</a>.</li>
        </ul>

EOT;

include ('page.inc');
?>
