<?php
$title         = 'Documentation';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = 'index.php';
$page['next']  = 'lists.php';
$page['last']  = 'links.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('OS installation process', 'osinst');
$sections[]    = array ('Relevant settings for Windows Setup', 'settings');
$sections[]    = array ('Dynamic configuration with server-side perl scripts', 'dynamic');
$sections[]    = array ('How to script the installation of various applications', 'installers');
$sections[]    = array ('How to install hotfixes and applications', 'apps');
$sections[]    = array ('Advanced topics', 'advanced');
$content       = <<<EOT
      <h1 id="osinst" style="border-top: none; padding-top: 0;">OS  installation  process
        </h1>
      <p>The installation process of  Windows  is  controlled  by  a  file  called  <code
        >unattend.txt</code>.</p>
      <ul>
        <li><a href="unattendtxt.php#intro">Understanding the goal: unattend.txt</a></li>
        <li><a href="unattendtxt.php#syntax">Syntax of unattend.txt</a></li>
        <li><a href="unattendtxt.php#msdoc">Microsoft's documentation</a></li>
      </ul>

      <h1 id="settings">Relevant settings for Windows Setup</h1>
      <p>Here are examples for how to configure some common settings. All  of  these  are
        used by Windows Setup, which  means  they  are  fully  explained  in  Microsoft's
        documentation. These examples are just to help you get started quickly.</p>
      <ul>
        <li><a href="winsetup.php">Settings used by Windows Setup</a></li>
        <li><a href="timezones.php">Index numbers for [GuiUnattended]/TimeZone</a></li>
      </ul>

      <h1 id="dynamic">Dynamic configuration with server-side perl scripts</h1>
      <p>If the static configuration options provided  by  <code>unattend.txt</code>  are
        not   sufficient,    you   can   create   arbitrarily   complex    rules    using
        <code>Z:\\site\\config.pl</code>. This is a Perl file which <a href="http://unattended.svn.sourceforge.net/viewvc/unattended/trunk/install/dosbin/install.pl"
        ><code>install.pl</code></a> reads.</p>
      <ul>
        <li><a href="dynamic.php">Dynamic configuration with server-side perl scripts</a></li>
        <li><a href="meta.php">The [_meta] section</a></li>
        <li><a href="dynamic.php#howitworks">How the installation script works</a></li>
        <li><a href="dynamic.php#database">Using a database</a></li>
      </ul>

      <h1 id="installers">How to script the installation of various applications</h1>
      <p>The goal of this document is to collect instructions for performing unattended /
        silent installations of many popular installers.</p>
      <ul>
        <li><a href="installers.php">Introduction</a></li>
        <li><a href="installers.php#general">General information</a>
        <ul>
          <li><a href="installers.php#msi">MSI packages</a></li>
          <li><a href="installers.php#installshield">InstallShield</a></li>
          <li><a href="installers.php#wise">Wise InstallMaster</a></li>
          <li><a href="installers.php#inno">Inno Setup</a></li>
          <li><a href="installers.php#nsis">Nullsoft Scriptable Install System</a></li>
          <li><a href="installers.php#ghost">Ghost installer</a></li>
          <li><a href="installers.php#hotfixes">Microsoft hotfixes and older packages</a></li>
        </ul></li>
        <li><a href="installers.php#fail">If all else fails...</a>
         <ul>
          <li><a href="installers.php#repackaging">Repackaging</a></li>
          <li><a href="installers.php#autoit">AutoIt</a></li>
         </ul></li>
        <li><a href="installers.php#examples">Script examples</a></li>
      </ul>

      <h1 id="apps">How to install hotfixes and applications</h1>
      <ul>
        <li><a href="apps.php">Goals</a></li>
        <li><a href="apps.php#overview">Overview</a></li>
        <li><a href="apps.php#todo">The todo.pl driver script</a></li>
        <li><a href="apps.php#examples">Examples</a></li>
        <li><a href="apps.php#scripts">Other utility scripts</a></li>
      </ul>

      <h1 id="advanced">Advanced topics</h1>
      <ul>
        <li><a href="advanced.php">Integrate a service pack into the OS distribution point</a></li>
        <li><a href="advanced.php#hotfixes">Integrate other hotfixes</a></li>
        <li><a href="advanced.php#modify">Modifying the boot disk</a></li>
        <li><a href="advanced.php#netboot">Booting from the network</a></li>
      </ul>
EOT;

include ('page.inc');
?>
