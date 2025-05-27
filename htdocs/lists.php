<?php
$title         = 'Mailing lists';
$page['top']   = 'index.php';
$page['up']    = 'index.php';
$page['first'] = 'index.php';
$page['prev']  = 'index.php';
$page['next']  = 'links.php';
$page['last']  = 'links.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('General informations', 'info');
$sections[]    = array ('Developer mailinglist', 'devel');
$sections[]    = array ('CVS commits', 'cvs');
$content       = <<<EOT
      <h1 id="info"  style="border-top: none;  padding-top: 0;">General  mailinglist</h1>
      <p>If you have any ongoing interest in this project, please consider subscribing to
        the unattended-info mailing list. On this  list  we  announce  new  versions  and
    discuss with and help users.<br />[ <a
    href="https://lists.sourceforge.net/lists/listinfo/unattended-info/"
        title="subscribe to unattended-info" rel="external">subscribe</a> | <a
    href="http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/"
    rel="external">list archive</a> ]</p>

      <h1 id="devel">Developer mailinglist</h1>
      <p>If you want to contribute to the development of this project, you may  find  the
        unattended-devel mailing list interesting as well.<br />[ <a
    href="https://lists.sourceforge.net/lists/listinfo/unattended-devel/"
        title="subscribe to unattended-devel" rel="external">subscribe</a> | <a
    href="http://www.mail-archive.com/unattended-devel%40lists.sourceforge.net/"
    rel="external">list archive</a> ]</p>

      <h1 id="cvs">CVS commit logs</h1>
      <p>If you are a masochist and want to observe this  project's development  in  real
        time, you can subscribe to the CVS commit logs.<br />[ <a
    href="https://lists.sourceforge.net/lists/listinfo/unattended-cvs/"
        title="subscribe to unattended-cvs" rel="external">subscribe</a> | <a
    href="http://sourceforge.net/mailarchive/forum.php?forum_name=unattended-cvs"
    rel="external">list archive</a> ]</p>

      <br /><br />

EOT;

include ('page.inc');
?>
