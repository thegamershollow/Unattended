<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-AU">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=iso-8859-1" />
    <meta name="author" content="haran" />
    <meta name="generator" content="haran" />

    <!-- Navigational metadata for large websites (an accessibility feature): -->
    <link rel="top" href="<?= $page['top'] ?>" title="Homepage" />
    <link rel="up" href="<?= $page['up'] ?>" title="Up" />
    <link rel="first" href="<?= $page['first'] ?>" title="First page" />
    <link rel="previous" href="<?= $page['prev'] ?>" title="Previous page" />
    <link rel="next" href="<?= $page['next'] ?>" title="Next page" />
    <link rel="last" href="<?= $page['last'] ?>" title="Last page" />
    <link rel="toc" href="<?= $page['toc'] ?>" title="Table of contents" />
    <link rel="index" href="<?= $page['index'] ?>" title="Site map" />
    <link rel="author" href="http://sourceforge.net/project/memberlist.php?group_id=62053" title="Author" />

    <link rel="stylesheet" type="text/css" href="screen.css" media="screen" title="screen" />
    <link rel="stylesheet" type="text/css" href="print.css" media="print" title="print" />

    <title>Unattended, A Windows deployment system: <?= $title ?></title>
    <script type="text/javascript">
        <!-- taken from http://www.sitepoint.com/article/standards-compliant-world -->
        <!--
        function externalLinks() {
            if (!document.getElementsByTagName) return;
            var anchors = document.getElementsByTagName("a");
            for (var i=0; i<anchors.length; i++) {
                var anchor = anchors[i];
                if (anchor.getAttribute("href") &&
                    anchor.getAttribute("rel") == "external")
                    anchor.target = "_blank";
            }
        }
        window.onload = externalLinks;
        // -->
    </script>

  </head>

  <body>
    <!-- For non-visual user agents: -->
      <div id="top"><a href="#main-copy" class="doNotDisplay doNotPrint">Skip to main content.</a></div>

    <!-- ##### Header ##### -->

    <div id="header">
      <p class="headerTitle doNotPrint">
        The two basic principles of Windows system administration:</p>
      <ul class="header doNotPrint">
        <li>For minor problems, reboot</li>
        <li>For major problems, reinstall</li>
        </ul>
      <p class="doNotDisplay">
        This document is part of Unattended, a Windows deployment system. &lt;http://unattended.sf.net/&gt;</p>

      <div class="subHeader">
        <span class="doNotDisplay">Navigation: </span>
        <a href="index.php">Introduction</a> |
        <a href="https://sourceforge.net/projects/unattended/files/"
           >Download</a> |
        <a href="step-by-step.php">Installation</a> |
        <a href="documentation.php">Documentation</a> |
        <a href="http://sourceforge.net/p/unattended/code/HEAD/tree/trunk/"
           rel="external">Repository</a> |
        <a href="lists.php">Mailing lists</a> |
        <a href="links.php">Links</a> |
        <a href="faq.php">FAQ</a> |
        <a href="http://sourceforge.net/p/unattended/wiki/Home/" rel="external">Wiki</a>
      </div>
    </div>

    <div id="side-bar">

      <!-- ##### Left Sidebar ##### -->

      <div class="leftSideBar">
        <p class="sideBarTitle">This Page</p>
        <ul>
<?php
foreach ($sections as $section)
    printf ("          <li><a href=\"#%s\">%s</a></li>\n", $section[1], $section[0]);
?>
        </ul>

        <p class="sideBarTitle">Sourceforge.net</p>
        <ul>
          <li><a href="http://sourceforge.net/"><img
              src="http://sourceforge.net/sflogo.php?group_id=62053&amp;type=2"
              width="125" height="37" alt="SourceForge Logo" /></a></li>
          <li><a href="http://sourceforge.net/projects/unattended">Project page</a></li>
        </ul>

        <p class="sideBarTitle">Comments</p>
        <span class="sideBarText">
          Comments and criticism are welcome
          <a href="mailto:unattended-info@lists.sourceforge.net" title="Email">via email</a>.
        </span>
      </div>

<?php include ('rightsidebar.inc'); ?>
    </div>

    <!-- ##### Main Copy ##### -->

    <div id="main-copy">
<?= $content ?>
    </div>

    <!-- ##### Footer ##### -->

    <div id="footer">
      <div class="doNotPrint">
        <a href="http://www.gnu.org/copyleft/gpl.html" rel="external">License</a> |
        <a href="sitemap.php">Site Map</a> |
        <a href="mailto:unattended-info@lists.sourceforge.net">Feedback</a>
      </div>

      <div>
        <span class="cvs"><?= $cvs ?></span>
        <span class="webdesign doNotPrint">Original webdesign <a
          href="http://www.oswd.org/design/information/id/1192/" rel="external">Gila</a>  by
          <a href="http://www.oswd.org/user/profile/id/3013" rel="external">haran</a
          > taken from <a href="http://www.oswd.org/" rel="external"><acronym
          title="Open Source Web Design">OSWD</acronym></a></span>
      </div>
    </div>
<!-- Piwik -->
<script type="text/javascript">
var pkBaseURL = (("https:" == document.location.protocol) ? "https://sourceforge.net/apps/piwik/unattended/" : "http://sourceforge.net/apps/piwik/unattended/"); document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
piwik_action_name = '';
piwik_idsite = 1;
piwik_url = pkBaseURL + "piwik.php";
piwik_log(piwik_action_name, piwik_idsite, piwik_url);
</script>
<object><noscript><p><img src="http://sourceforge.net/apps/piwik/unattended/piwik.php?idsite=1" alt="piwik"/></p></noscript></object>
<!-- End Piwik Tag -->
  </body>
</html>
