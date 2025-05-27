<?php
$title         = 'Settings used by Windows Setup';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'unattendtxt.php';
$page['next']  = 'timezones.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('User, Organization, and Computer Name', 'uname');
$sections[]    = array ('Product Key', 'pkey');
$sections[]    = array ('Local Administrator Password', 'adminpw');
$sections[]    = array ('Joining a domain', 'jdomain');
$sections[]    = array ('Joining a workgroup', 'jwgroup');
$sections[]    = array ('Joining an OU', 'jou');
$sections[]    = array ('Time Zone', 'timezone');
$sections[]    = array ('OEM Plug&amp;Play Drivers', 'drivers');
$sections[]    = array ('Windows XP look and feel', 'themes');
$content       = <<<EOT
      <h1 id="settings" style="border-top: none; padding-top: 0;">Settings    used     by
        Windows&nbsp;Setup</h1>
      <p>Here are examples for how to configure some common settings.  All of  these  are
        used by <strong>Windows&nbsp;Setup</strong>, which means they are fully explained
        in Microsoft's documentation.  These examples are just to help  you  get  started
        quickly.</p>

      <h2 id="uname">User Name, Organization Name, and Computer Name</h2>
      <pre class="code">[UserData]
    FullName=&quot;Jane Doe&quot;
    OrgName=&quot;FooBar Widgets, Incorporated&quot;
    ComputerName=magneto</pre>
      <p>Setting   the    ComputerName    to    <code>*</code>    tells   <strong>Windows
      Setup</strong> to pick a random name.</p>

      <h2 id="pkey">Product Key</h2>
      <pre class="code">[UserData]
    ProductKey=XXXXX-YYYYY-ZZZZZ-00000-11111</pre>
      <p><strong>Note</strong>: Prior to Windows XP, this key was named "ProductID".</p>

      <h2 id="adminpw">Local Administrator Password</h2>
      <p>To set the local Administrator account password:</p>
      <pre class="code">[GuiUnattended]
    AdminPassword=sekrit</pre>

      <h2 id="jdomain">Joining a domain</h2>
      <p>To   join   the  d omain   <code>FOOBAR</code>   using   the    account    <code
        >FOOBAR\\wsadmin</code> and password <code>verysekrit</code>:</p>
      <pre class="code">[Identification]
    JoinDomain=FOOBAR
    DomainAdmin=FOOBAR\\wsadmin
    DomainAdminPassword=&quot;verysekrit&quot;</pre>

      <p>If you do not want to  store  the  password  in  cleartext,  you  can  omit  the
        DomainAdminPassword entry; remember that the installation script will prompt  you
        for any required values which you do not already provide.</p>

      <h2 id="jwgroup">Joining a workgroup</h2>
      <p>To join the workgroup FOOBAR:</p>
      <pre class="code">[Identification]
    JoinWorkgroup=FOOBAR</pre>

      <p>Note that you are required to join either a domain or a workgroup.</p>
      <h2>Joining an OU</h2>
      <p>To specify the Organizational Unit to join within an  Active  Directory  domain:
        </p>
      <pre class="code">[Identification]
    MachineObjectOU="OU=Foo,OU=FooParent,DC=department,DC=example,DC=com"</pre>

      <p>See also  <a href="http://support.microsoft.com/?id=226315">KB article 226315</a
        >.</p>

      <h2 id="timezone">Time Zone</h2>
      <p>To set the workstation's time zone:</p>
      <pre class="code">[GuiUnattended]
    ; U.S. Pacific
    TimeZone=004</pre>
      <p>The time zone setting is numeric; see the <a href="timezones.php">table of index
        numbers</a> for a complete list.  The default value for Unattended is  035  (U.S.
        Eastern).</p>

      <h2 id="drivers">OEM Plug&amp;Play Drivers</h2>
      <p>You may specify additions to the search path for Plug&amp;Play drivers. Elements
        of  this path are separated by semicolons.  Windows uses this path when searching
        for a driver for a piece of hardware. These elements are relative  to  the  <code
        >C:</code>  drive,   and  are  usually  used   in   conjunction   with   the   <a
        href="step-by-step.php#drivers" ><code>\$oem\$/\$1</code></a> mechanism.</p>
      <p>For example:</p>
      <pre class="code">[Unattended]
    OemPnPDriversPath="drivers\\net\\eepro;drivers\\video\\nVidia"</pre>

      <h2 id="themes">Windows XP look and feel</h2>
      <p>The <code>[Shell]</code> section controls the general look and feel  of  Windows
        XP. To use the classic Windows Start menu (with <strong>My&nbsp;Computer</strong>
        and   <strong>My&nbsp;Documents</strong>   on  the  desktop),   and  to  use  the
        &quot;classic Windows visual style&quot;:</p>
      <pre class="code">[Shell]
    ; Use classic start menu
    DefaultStartPanelOff=Yes
    ; Use classic visual style
    DefaultThemesOff=Yes</pre>

EOT;

include ('page.inc');
?>
