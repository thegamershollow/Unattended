:: OPTIONAL: Install Adobe Reader 
@Echo Off

:: Download Adobe Reader full version
:: URL|ARA|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/ar_AE/AdbeRdr11000_ar_AE.msi|packages/adobereader/adberdr11000_ara.msi
:: URL|CHS|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/zh_CN/AdbeRdr11000_zh_CN.msi|packages/adobereader/adberdr11000_chs.msi
:: URL|CHT|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/zh_TW/AdbeRdr11000_zh_TW.msi|packages/adobereader/adberdr11000_cht.msi
:: URL|CSY|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/cs_CZ/AdbeRdr11000_cs_CZ.msi|packages/adobereader/adberdr11000_csy.msi
:: URL|DAN|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/da_DK/AdbeRdr11000_da_DK.msi|packages/adobereader/adberdr11000_dan.msi
:: URL|DEU|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/de_DE/AdbeRdr11000_de_DE.msi|packages/adobereader/adberdr11000_deu.msi
:: URL|ELL|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/el_GR/AdbeRdr11000_el_GR.msi|packages/adobereader/adberdr11000_ell.msi
:: URL|ENU|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/en_US/AdbeRdr11000_en_US.msi|packages/adobereader/adberdr11000_enu.msi
:: URL|ESN|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/es_ES/AdbeRdr11000_es_ES.msi|packages/adobereader/adberdr11000_esn.msi
:: URL|FIN|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/fi_FI/AdbeRdr11000_fi_FI.msi|packages/adobereader/adberdr11000_fin.msi
:: URL|FRA|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/fr_FR/AdbeRdr11000_fr_FR.msi|packages/adobereader/adberdr11000_fra.msi
:: URL|HEB|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/he_IL/AdbeRdr11000_he_IL.msi|packages/adobereader/adberdr11000_heb.msi
:: URL|HUN|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/hu_HU/AdbeRdr11000_hu_HU.msi|packages/adobereader/adberdr11000_hun.msi
:: URL|ITA|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/it_IT/AdbeRdr11000_it_IT.msi|packages/adobereader/adberdr11000_ita.msi
:: URL|JPN|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/ja_JP/AdbeRdr11000_ja_JP.msi|packages/adobereader/adberdr11000_jpn.msi
:: URL|KOR|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/ko_KR/AdbeRdr11000_ko_KR.msi|packages/adobereader/adberdr11000_kor.msi
:: URL|NLD|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/nl_NL/AdbeRdr11000_nl_NL.msi|packages/adobereader/adberdr11000_nld.msi
:: URL|NOR|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/nb_NO/AdbeRdr11000_nb_NO.msi|packages/adobereader/adberdr11000_nor.msi
:: URL|PLK|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/pl_PL/AdbeRdr11000_pl_PL.msi|packages/adobereader/adberdr11000_plk.msi
:: URL|PTB|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/pt_BR/AdbeRdr11000_pt_BR.msi|packages/adobereader/adberdr11000_ptb.msi
:: URL|RUS|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/ru_RU/AdbeRdr11000_ru_RU.msi|packages/adobereader/adberdr11000_rus.msi
:: URL|SVE|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/sv_SE/AdbeRdr11000_sv_SE.msi|packages/adobereader/adberdr11000_sve.msi
:: URL|TRK|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/tr_TR/AdbeRdr11000_tr_TR.msi|packages/adobereader/adberdr11000_trk.msi


:: Download Adobe Reader Language Support
:: URL|ALL|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/misc/AdbeRdrSD11000_all.msi|packages/adobereader/misc/AdbeRdrSD11000_all.msi
:: Download Extended Language Support Fonts Package
:: URL|ALL|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.00/misc/FontPack11000_XtdAlf_Lang.msi|packages/adobereader/misc/FontPack11000_xtdalf_lang.msi
:: Download the patch
:: URL|ALL|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.23/misc/AdbeRdrUpd11023.msp|packages/adobereader/adberdrupd11023.msp
:: Download security patch
:: URL|ALL|ftp://ftp.adobe.com/pub/adobe/reader/win/11.x/11.0.22/misc/AdbeRdrUpd11022_incr.msp|packages/adobereader/adberdrupd11022_incr.msp
::if not exist %Z%\packages\adobereader\misc\FontPack11000_xtd_lang.msi goto nolangsupport
:: Install Extended Language Support Fonts Package
::todo.pl "msiexec /qb /i %Z%\packages\adobereader\misc\FontPack11000_xtdalf_lang.msi"

:nolangsupport

:: There is not need for a link on the desktop. It is a document centric application
todo.pl "unlink.pl special:AllUsersDesktop\"\Adobe Reader XI.lnk\"" 

:: Accept EULA
todo.pl ".ignore-err 1 reg add \"HKLM\SOFTWARE\Adobe\Acrobat Reader\11.0\AdobeViewer\" /f /v \"EULA\" /t REG_DWORD /d 1"

:: Please do not start anything unless necesary
todo.pl ".ignore-err 1 reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v \"Adobe ARM\""
todo.pl ".ignore-err 1 reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v \"Adobe Reader Speed Launcher\""

:: This is the actual installer plus patch
todo.pl ".ignore-err 194 msiexec /qn /i \"%Z%\packages\adobereader\adberdr11000_%WINLANG%.msi\" PATCH=\"%Z%\packages\adobereader\adberdrupd11023.msp\" REBOOT=ReallySuppress"
