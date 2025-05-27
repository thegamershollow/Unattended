<?php
$title         = 'Index numbers for [GuiUnattended]/TimeZone';
$page['top']   = 'documentation.php';
$page['up']    = 'documentation.php';
$page['first'] = 'step-by-step.php';
$page['prev']  = 'winsetup.php';
$page['next']  = 'meta.php';
$page['last']  = 'advanced.php';
$page['toc']   = 'sitemap.php';
$page['index'] = 'sitemap.php';
$sections[]    = array ('', '');
$sections[]    = array ('', '');
$sections[]    = array ('', '');
$sections[]    = array ('', '');
$sections[]    = array ('', '');
$content       = <<<EOT
      <h1 id="start" style="border-top: none; padding-top: 0;">Index      numbers     for
        [GuiUnattended]/TimeZone</h1>
      <p>The answer file uses  a  parameter  named  <code>TimeZone</code>  in  the  <code
        >[GuiUnattended]</code> section to set the computer's time  zone.  The  value  of
        this parameter is an &quot;index&quot; which does not correspond to anything else
        on earth, as far as I can tell.</p>

      <p>The index numbers are documented in  (some of)  <a  href="unattendtxt.php#msdoc"
        >Microsoft's guides</a> to the answer file.  You  can  also  find  them  in  your
        registry under <code>HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows&nbsp;NT\\CurrentVersion\\Time&nbsp;Zones</code
        >, in the <code>Index</code> value below each time zone key.</p>

      <p>For a long time, I could not find these anywhere on the World  Wide  Web,  so  I
        created the table below.  Nowadays, Microsoft includes them in the on-line Server
        2003 documentation for the <a href="http://www.microsoft.com/Resources/Documentation/windowsserv/2003/all/techref/en-us/w2k3tr_s_guiunattended.asp"
        rel="external">[GuiUnattended] section</a>. But  I  am  leaving  this  page  here
        anyway.</p>

      <table>
      <tr><th>Index</th><th>Time Zone</th><th>Display Name</th></tr>
      <tr><td>000</td><td>Dateline Standard Time (GMT-12:00)</td><td>International Date Line West</td></tr>
      <tr><td>001</td><td>Samoa Standard Time (GMT-11:00)</td><td>Midway Island, Samoa</td></tr>
      <tr><td>002</td><td>Hawaiian Standard Time (GMT-10:00)</td><td>Hawaii</td></tr>
      <tr><td>003</td><td>Alaskan Standard Time (GMT-09:00)</td><td>Alaska</td></tr>
      <tr><td>004</td><td>Pacific Standard Time (GMT-08:00)</td><td>Pacific Time (US and Canada); Tijuana</td></tr>
      <tr><td>010</td><td>Mountain Standard Time (GMT-07:00)</td><td>Mountain Time (US and Canada)</td></tr>
      <tr><td>013</td><td>Mexico Standard Time 2 (GMT-07:00)</td><td>Chihuahua, La Paz, Mazatlan</td></tr>
      <tr><td>015</td><td>U.S. Mountain Standard Time (GMT-07:00)</td><td>Arizona</td></tr>
      <tr><td>020</td><td>Central Standard Time (GMT-06:00)</td><td>Central Time (US and Canada)</td></tr>
      <tr><td>025</td><td>Canada Central Standard Time (GMT-06:00)</td><td>Saskatchewan</td></tr>
      <tr><td>030</td><td>Mexico Standard Time (GMT-06:00)</td><td>Guadalajara, Mexico City, Monterrey</td></tr>
      <tr><td>033</td><td>Central America Standard Time (GMT-06:00)</td><td>Central America</td></tr>
      <tr><td>035</td><td>Eastern Standard Time (GMT-05:00)</td><td>Eastern Time (US and Canada)</td></tr>
      <tr><td>040</td><td>U.S. Eastern Standard Time (GMT-05:00)</td><td>Indiana (East)</td></tr>
      <tr><td>045</td><td>S.A. Pacific Standard Time (GMT-05:00)</td><td>Bogota, Lima, Quito</td></tr>
      <tr><td>050</td><td>Atlantic Standard Time (GMT-04:00)</td><td>Atlantic Time (Canada)</td></tr>
      <tr><td>055</td><td>S.A. Western Standard Time (GMT-04:00)</td><td>Caracas, La Paz</td></tr>
      <tr><td>056</td><td>Pacific S.A. Standard Time (GMT-04:00)</td><td>Santiago</td></tr>
      <tr><td>060</td><td>Newfoundland Standard Time (GMT-03:30)</td><td>Newfoundland</td></tr>
      <tr><td>065</td><td>E. South America Standard Time (GMT-03:00)</td><td>Brasilia</td></tr>
      <tr><td>070</td><td>S.A. Eastern Standard Time (GMT-03:00)</td><td>Buenos Aires, Georgetown</td></tr>
      <tr><td>073</td><td>Greenland Standard Time (GMT-03:00)</td><td>Greenland</td></tr>
      <tr><td>075</td><td>Mid-Atlantic Standard Time (GMT-02:00)</td><td>Mid-Atlantic</td></tr>
      <tr><td>080</td><td>Azores Standard Time (GMT-01:00)</td><td>Azores</td></tr>
      <tr><td>083</td><td>Cape Verde Standard Time (GMT-01:00)</td><td>Cape Verde Islands</td></tr>
      <tr><td>085</td><td>GMT Standard Time (GMT)</td><td>Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London</td></tr>
      <tr><td>090</td><td>Greenwich Standard Time (GMT)</td><td>Casablanca, Monrovia</td></tr>
      <tr><td>095</td><td>Central Europe Standard Time (GMT+01:00)</td><td>Belgrade, Bratislava, Budapest, Ljubljana, Prague</td></tr>
      <tr><td>100</td><td>Central European Standard Time (GMT+01:00)</td><td>Sarajevo, Skopje, Warsaw, Zagreb</td></tr>
      <tr><td>105</td><td>Romance Standard Time (GMT+01:00)</td><td>Brussels, Copenhagen, Madrid, Paris</td></tr>
      <tr><td>110</td><td>W. Europe Standard Time (GMT+01:00)</td><td>Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</td></tr>
      <tr><td>113</td><td>W. Central Africa Standard Time (GMT+01:00)</td><td>West Central Africa</td></tr>
      <tr><td>115</td><td>E. Europe Standard Time (GMT+02:00)</td><td>Bucharest</td></tr>
      <tr><td>120</td><td>Egypt Standard Time (GMT+02:00)</td><td>Cairo</td></tr>
      <tr><td>125</td><td>FLE Standard Time (GMT+02:00)</td><td>Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius</td></tr>
      <tr><td>130</td><td>GTB Standard Time (GMT+02:00)</td><td>Athens, Istanbul, Minsk</td></tr>
      <tr><td>135</td><td>Israel Standard Time (GMT+02:00)</td><td>Jerusalem</td></tr>
      <tr><td>140</td><td>South Africa Standard Time (GMT+02:00)</td><td>Harare, Pretoria</td></tr>
      <tr><td>145</td><td>Russian Standard Time (GMT+03:00)</td><td>Moscow, St. Petersburg, Volgograd</td></tr>
      <tr><td>150</td><td>Arab Standard Time (GMT+03:00)</td><td>Kuwait, Riyadh</td></tr>
      <tr><td>155</td><td>E. Africa Standard Time (GMT+03:00)</td><td>Nairobi</td></tr>
      <tr><td>158</td><td>Arabic Standard Time (GMT+03:00)</td><td>Baghdad</td></tr>
      <tr><td>160</td><td>Iran Standard Time (GMT+03:30)</td><td>Tehran</td></tr>
      <tr><td>165</td><td>Arabian Standard Time (GMT+04:00)</td><td>Abu Dhabi, Muscat</td></tr>
      <tr><td>170</td><td>Caucasus Standard Time (GMT+04:00)</td><td>Baku, Tbilisi, Yerevan</td></tr>
      <tr><td>175</td><td>Afghanistan Standard Time (GMT+04:30)</td><td>Kabul</td></tr>
      <tr><td>180</td><td>Ekaterinburg Standard Time (GMT+05:00)</td><td>Ekaterinburg</td></tr>
      <tr><td>185</td><td>West Asia Standard Time (GMT+05:00)</td><td>Islamabad, Karachi, Tashkent</td></tr>
      <tr><td>190</td><td>India Standard Time (GMT+05:30)</td><td>Chennai, Kolkata, Mumbai, New Delhi</td></tr>
      <tr><td>193</td><td>Nepal Standard Time (GMT+05:45)</td><td>Kathmandu</td></tr>
      <tr><td>195</td><td>Central Asia Standard Time (GMT+06:00)</td><td>Astana, Dhaka</td></tr>
      <tr><td>200</td><td>Sri Lanka Standard Time (GMT+06:00)</td><td>Sri Jayawardenepura</td></tr>
      <tr><td>201</td><td>N. Central Asia Standard Time (GMT+06:00)</td><td>Almaty, Novosibirsk</td></tr>
      <tr><td>203</td><td>Myanmar Standard Time (GMT+06:30)</td><td>Rangoon</td></tr>
      <tr><td>205</td><td>S.E. Asia Standard Time (GMT+07:00)</td><td>Bangkok, Hanoi, Jakarta</td></tr>
      <tr><td>207</td><td>North Asia Standard Time (GMT+07:00)</td><td>Krasnoyarsk</td></tr>
      <tr><td>210</td><td>China Standard Time (GMT+08:00)</td><td>Beijing, Chongqing, Hong Kong SAR, Urumqi</td></tr>
      <tr><td>215</td><td>Singapore Standard Time (GMT+08:00)</td><td>Kuala Lumpur, Singapore</td></tr>
      <tr><td>220</td><td>Taipei Standard Time (GMT+08:00)</td><td>Taipei</td></tr>
      <tr><td>225</td><td>W. Australia Standard Time (GMT+08:00)</td><td>Perth</td></tr>
      <tr><td>227</td><td>North Asia East Standard Time (GMT+08:00)</td><td>Irkutsk, Ulaan Bataar</td></tr>
      <tr><td>230</td><td>Korea Standard Time (GMT+09:00)</td><td>Seoul</td></tr>
      <tr><td>235</td><td>Tokyo Standard Time (GMT+09:00)</td><td>Osaka, Sapporo, Tokyo</td></tr>
      <tr><td>240</td><td>Yakutsk Standard Time (GMT+09:00)</td><td>Yakutsk</td></tr>
      <tr><td>245</td><td>A.U.S. Central Standard Time (GMT+09:30)</td><td>Darwin</td></tr>
      <tr><td>250</td><td>Cen. Australia Standard Time (GMT+09:30)</td><td>Adelaide</td></tr>
      <tr><td>255</td><td>A.U.S. Eastern Standard Time (GMT+10:00)</td><td>Canberra, Melbourne, Sydney</td></tr>
      <tr><td>260</td><td>E. Australia Standard Time (GMT+10:00)</td><td>Brisbane</td></tr>
      <tr><td>265</td><td>Tasmania Standard Time (GMT+10:00)</td><td>Hobart</td></tr>
      <tr><td>270</td><td>Vladivostok Standard Time (GMT+10:00)</td><td>Vladivostok</td></tr>
      <tr><td>275</td><td>West Pacific Standard Time (GMT+10:00)</td><td>Guam, Port Moresby</td></tr>
      <tr><td>280</td><td>Central Pacific Standard Time (GMT+11:00)</td><td>Magadan, Solomon Islands, New Caledonia</td></tr>
      <tr><td>285</td><td>Fiji Islands Standard Time (GMT+12:00)</td><td>Fiji Islands, Kamchatka, Marshall Islands</td></tr>
      <tr><td>290</td><td>New Zealand Standard Time (GMT+12:00)</td><td>Auckland, Wellington</td></tr>
      <tr><td>300</td><td>Tonga Standard Time (GMT+13:00)</td><td>Nuku'alofa</td></tr>
      </table>

EOT;

include ('page.inc');
?>
