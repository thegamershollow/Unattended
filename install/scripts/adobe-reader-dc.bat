:: OPTIONAL: Install Adobe Reader Document Cloud (DC) 23.003.20284
@Echo Off
:: Note: Newest patches are no longer available on the FTP, link to patches can be found here:
:: https://www.adobe.com/devnet-docs/acrobatetk/tools/ReleaseNotesDC/

:: Acrobat DC Customization Wizard for Windows
:: Tool to create MST-files (transform files) can be found here:
:: https://www.adobe.com/devnet-docs/acrobatetk/tools/Wizard/index.html
:: To use a transforming file, add TRANSFORMS=(filename).mst to the installing command


:: Download Adobe Reader Document Cloud (DC) full version
:: URL|CHS|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_zh_CN.msi|packages/adobereader/acrordrdc_15.007.20033_chs.msi
:: URL|CHT|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_zh_TW.msi|packages/adobereader/acrordrdc_15.007.20033_cht.msi
:: URL|CSY|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_cs_CZ.msi|packages/adobereader/acrordrdc_15.007.20033_csy.msi
:: URL|DAN|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_da_DK.msi|packages/adobereader/acrordrdc_15.007.20033_dan.msi
:: URL|DEU|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_de_DE.msi|packages/adobereader/acrordrdc_15.007.20033_deu.msi
:: URL|ENU|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_en_US.msi|packages/adobereader/acrordrdc_15.007.20033_enu.msi
:: URL|ESN|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_es_ES.msi|packages/adobereader/acrordrdc_15.007.20033_esn.msi
:: URL|FIN|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_fi_FI.msi|packages/adobereader/acrordrdc_15.007.20033_fin.msi
:: URL|FRA|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_fr_FR.msi|packages/adobereader/acrordrdc_15.007.20033_fra.msi
:: URL|HEB|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_he_IL.msi|packages/adobereader/acrordrdc_15.007.20033_heb.msi
:: URL|HUN|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_hu_HU.msi|packages/adobereader/acrordrdc_15.007.20033_hun.msi
:: URL|ITA|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_it_IT.msi|packages/adobereader/acrordrdc_15.007.20033_ita.msi
:: URL|JPN|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_ja_JP.msi|packages/adobereader/acrordrdc_15.007.20033_jpn.msi
:: URL|KOR|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_ko_KR.msi|packages/adobereader/acrordrdc_15.007.20033_kor.msi
:: URL|NLD|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_nl_NL.msi|packages/adobereader/acrordrdc_15.007.20033_nld.msi
:: URL|NOR|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_nb_NO.msi|packages/adobereader/acrordrdc_15.007.20033_nor.msi
:: URL|PLK|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_pl_PL.msi|packages/adobereader/acrordrdc_15.007.20033_plk.msi
:: URL|PTB|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_pt_BR.msi|packages/adobereader/acrordrdc_15.007.20033_ptb.msi
:: URL|RUS|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_ru_RU.msi|packages/adobereader/acrordrdc_15.007.20033_rus.msi
:: URL|SVE|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_sv_SE.msi|packages/adobereader/acrordrdc_15.007.20033_sve.msi
:: URL|TRK|ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_tr_TR.msi|packages/adobereader/acrordrdc_15.007.20033_trk.msi

:: Download the newest patch
:: URL|ALL|https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2400320180/AcroRdrDCUpd2400320180.msp|packages/adobereader/acrordrdcupd_24.003.20180.msp

:: Extra language packs, more info:
:: https://helpx.adobe.com/acrobat/kb/windows-font-packs-32-bit-reader.html
:: Download Spelling dictionary pack
:: URL|ALL|http://ardownload3.adobe.com/pub/adobe/reader/win/AcrobatDC/misc/AcroRdrSD2200120085_all_DC.msi|packages/adobereader/misc/AcroRdrSD_22.001.20085_all_DC.msi
:: Download Font Pack
:: URL|ALL|http://ardownload3.adobe.com/pub/adobe/reader/win/AcrobatDC/misc/FontPack2200120085_XtdAlf_Lang_DC.msi|packages/adobereader/misc/FontPack_22.001.20085_XtdAlf_Lang_DC.msi

:: Uncomment the todo.pl lines if you want to install these language packs.
:: Install Spelling dictionary pack
:: todo.pl "msiexec /qb /i %Z%\packages\adobereader\misc\AcroRdrSD_22.001.20085_all_DC.msi"
:: Install Extended Asian Language Fonts Pack
:: todo.pl "msiexec /qb /i %Z%\packages\adobereader\misc\FontPack_22.001.20085_XtdAlf_Lang_DC.msi"

:: There is no need for a link on the desktop. This is a document-centric application.
todo.pl "unlink.pl special:AllUsersDesktop\"\Acrobat Reader DC.lnk\"" 
:: Accept EULA
todo.pl ".ignore-err 1 reg add \"HKLM\SOFTWARE\Adobe\Acrobat Reader\DC\AdobeViewer\" /f /v \"EULA\" /t REG_DWORD /d 1"

:: This is the actual installer
todo.pl ".ignore-err 194 msiexec /qb /l* %SystemDrive%\netinst\logs\adobereaderdc.txt /i \"%Z%\packages\adobereader\acrordrdc_15.007.20033_%WINLANG%.msi\" PATCH=\"%Z%\packages\adobereader\acrordrdcupd_24.003.20180.msp\" REBOOT=ReallySuppress"
