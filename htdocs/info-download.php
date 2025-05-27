<?php
$title         = 'Additional information about downloads';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = 'index.php';
$page['next']  = 'step-by-step.php';
$page['last']  = 'faq.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('unattended-&lt;version&gt;.zip', 'unattended');
$sections[]    = array ('unattended-&lt;version&gt;-dosboot.zip', 'unattended-dosboot');
$sections[]    = array ('unattended-&lt;version&gt;-linuxboot.zip', 'unattended-linuxboot');
$sections[]    = array ('support files', 'supportfiles');
$sections[]    = array ('current code', 'current');
$content       = <<<EOT
      <h1 id="unattended" style="border-top: none; padding-top: 0;">unattended-&lt;version&gt;.zip</h1>
      <p>This is the main distribution file. It contains the complete directory structure
        and all files except the (DOS/Linux) boot images.</p>
      <p>You will need this file anyway.</p>

      <h1 id="unattended-dosboot">unattended-&lt;version&gt;-dosboot.zip</h1>
      <p>This file contains all pre-compiled DOS boot disks.</p>
      <p>If you want to boot your workstations from floppy disks,  you need these images.
        </p>

      <h1 id="unattended-linuxboot">unattended-&lt;version&gt;-linuxboot.zip</h1>
      <p>This file contains the pre-compiled Linux boot disk.</p>
      <p>If you want to boot your workstations from Linux-based CD-ROMs,  you  need  this
        image.</p>

      <h1 id="supportfiles">support files</h1>
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

      <h1 id="current">Current code</h1>
      <p>Everyone, who prefers bleeding edge software, can use the current code <a href="https://sourceforge.net/apps/trac/unattended/wiki/ModifyingTheBootDisk"
        >Modifying the boot disk</a>. Yo will have to compile them by yourself.</p>
EOT;

include ('page.inc');
?>
