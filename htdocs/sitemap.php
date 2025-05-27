<?php
$title         = 'Site map';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = 'index.php';
$page['next']  = 'step-by-step.php';
$page['last']  = 'faq.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('Site map', 'sitemap');
$content       = <<<EOT
      <h1 style="border-top: none; padding-top: 0;">Site map</h1>

      <div id="sitemap">
      <ul>
        <li>Overview
          <ul>
            <li><a href="index.php">Introduction</a></li>
          </ul>
        </li>
        <li>Download
          <ul>
            <li><a href="http://sourceforge.net/project/showfiles.php?group_id=62053">Download the distribution</a></li>
            <li><a href="http://unattended.svn.sourceforge.net/viewvc/unattended/" rel="external">Code Repository</a></li>
          </ul>
        </li>
        <li>Documentation
          <ul>
            <li><a href="step-by-step.php">Step-by-step installation guide</a></li>
            <li><a href="faq.php">Frequently Asked Questions (FAQ)</a></li>
            <li><a href="unattendtxt.php">OS installation process / unattend.txt</a></li>
            <li><a href="winsetup.php">Relevant settings for Windows Setup</a></li>
            <li><a href="timezones.php">Index numbers for [GuiUnattended]/TimeZone</a></li>
            <li><a href="meta.php">The [_meta] section</a></li>
            <li><a href="dynamic.php">Dynamic configuration with server-side perl scripts</a></li>
            <li><a href="dynamic.php#howitworks">Dynamic configuration: How the installation script works</a></li>
            <li><a href="dynamic.php#database">Dynamic configuration: Using a database</a></li>
            <li><a href="installers.php">How to script the installation of various applications</a></li>
            <li><a href="apps.php">How to install hotfixes and applications</a></li>
            <li><a href="advanced.php#slipstream">Advanced topics: Integrate a service pack into the OS distribution point</a></li>
            <li><a href="advanced.php#hotfixes">Advanced topics: Integrate other hotfixes</a></li>
            <li><a href="advanced.php#modify">Advanced topics: Modifying the boot disk</a></li>
            <li><a href="advanced.php#netboot">Advanced topics: Booting from the network</a></li>
          </ul>
        </li>
        <li>Community
          <ul>
            <li><a href="lists.php">Mailing lists</a></li>
          </ul>
        </li>
        <li>Links
          <ul>
            <li><a href="links.php">Links</a></li>
          </ul>
        </li>
        <li>Wiki
          <ul>
            <li><a href="http://ubertechnique.com/unattended/FrontPage" rel="external">Wiki</a></li>
          </ul>
        </li>
      </ul>
      </div>

EOT;

include ('page.inc');
?>
