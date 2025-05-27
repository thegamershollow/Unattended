:: OPTIONAL: Install OpenOffice.org 

:: Full install sets Localized Binaries for 3.3.0
:: http://download.openoffice.org/other.html

:: URL|ENU|http://download.services.openoffice.org/files/stable/3.3.0/OOo_3.3.0_Win_x86_install_en-US.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_enu.exe
:: URL|DAN|http://download.services.openoffice.org/files/localized/da/3.3.0/OOo_3.3.0_Win_x86_install_da.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_dan.exe
:: URL|DEU|http://download.services.openoffice.org/files/localized/de/3.3.0/OOo_3.3.0_Win_x86_install_de.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_deu.exe
:: URL|ESN|http://download.services.openoffice.org/files/localized/es/3.3.0/OOo_3.3.0_Win_x86_install_es.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_esn.exe
:: URL|FRA|http://download.services.openoffice.org/files/localized/fr/3.3.0/OOo_3.3.0_Win_x86_install_fr.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_fra.exe
:: URL|ITA|http://download.services.openoffice.org/files/localized/it/3.3.0/OOo_3.3.0_Win_x86_install_it.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_ita.exe
:: URL|JPN|http://download.services.openoffice.org/files/localized/ja/3.3.0/OOo_3.3.0_Win_x86_install_ja.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_jpn.exe
:: URL|NOR|http://download.services.openoffice.org/files/localized/nb/3.3.0/OOo_3.3.0_Win_x86_install_nb.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_nor.exe
:: URL|NON|http://download.services.openoffice.org/files/localized/nn/3.3.0/OOo_3.3.0_Win_x86_install_nn.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_non.exe
:: URL|NLD|http://download.services.openoffice.org/files/localized/nl/3.3.0/OOo_3.3.0_Win_x86_install_nl.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_nld.exe
:: URL|KOR|http://download.services.openoffice.org/files/localized/ko/3.3.0/OOo_3.3.0_Win_x86_install_ko.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_kor.exe
:: URL|PLK|http://download.services.openoffice.org/files/localized/pl/3.3.0/OOo_3.3.0_Win_x86_install_pl.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_plk.exe
:: URL|RUS|http://download.services.openoffice.org/files/localized/ru/3.3.0/OOo_3.3.0_Win_x86_install_ru.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_rus.exe
:: URL|SVE|http://download.services.openoffice.org/files/localized/sv/3.3.0/OOo_3.3.0_Win_x86_install_sv.exe|packages/openoffice/ooo_3.3.0_Win_x86_install_sve.exe
:: URL|PTB|http://download.services.openoffice.org/files/localized/pt-BR/3.3.0/OOo_3.3.0_Win_x86_install_pt-BR.exe|packages/openoffice/OOo_3.3.0_Win_x86_install_ptb.exe
:: URL|CHS|http://download.services.openoffice.org/files/localized/zh-CN/3.2.0/OOo_3.2.0_Win_x86_install_zh-CN.exe|packages/openoffice/ooo_3.2.0_Win_x86_install_chs.exe
:: URL|CHT|http://download.services.openoffice.org/files/localized/zh-TW/3.2.0/OOo_3.2.0_Win_x86_install_zh-TW.exe|packages/openoffice/ooo_3.2.0_Win_x86_install_cht.exe


:: ==== EXTENSIONS ====
:: Extension to deactivate First Time Wizard
:: http://wiki.services.openoffice.org/wiki/Documentation/Administration_Guide/Deactivating_Registration_Wizard
:: URL|ALL|http://wiki.services.openoffice.org/w/images/4/40/DisableFirstStartWzd_ooo32.oxt|packages/openoffice/ext/DisableFirstStartWzd_ooo3.2.oxt
:: PDF Import Extension
:: http://extensions.services.openoffice.org/project/pdfimport
:: URL|ALL|http://extensions.services.openoffice.org/e-files/874/26/sun-pdfimport.oxt|packages/openoffice/ext/sun-pdfimport.oxt


:: ==== TEMPLATES ====
:: REMEMBER: ENU and DEU have version 1. We forget about those to keep it simple.
:: URL|ESN|http://extensions.services.openoffice.org/e-files/301/1/Sun_ODF_Template_Pack_es.oxt|packages/openoffice/ext/sun-odf-template-pack-esn.oxt
:: URL|ENU|http://extensions.services.openoffice.org/e-files/950/0/Sun_ODF_Template_Pack2_en-US.oxt|packages/openoffice/ext/sun-odf-template-pack-enu.oxt
:: URL|DEU|http://extensions.services.openoffice.org/e-files/955/0/Sun_ODF_Template_Pack2_de.oxt|packages/openoffice/ext/sun-odf-template-pack-deu.oxt
:: URL|FRA|http://extensions.services.openoffice.org/e-files/297/0/Sun_ODF_Template_Pack_fr.oxt|packages/openoffice/ext/sun-odf-template-pack-fra.oxt
:: URL|ITA|http://extensions.services.openoffice.org/e-files/299/0/Sun_ODF_Template_Pack_it.oxt|packages/openoffice/ext/sun-odf-template-pack-ita.oxt

@Echo off

:: VERSION - Sometimes i18n version does not have the most up to date.
set VERSION=3.2.0
if exist "%Z%\packages\openoffice\ooo_3.3.0_Win_x86_install_%WINLANG%.exe" set VERSION=3.3.0

:: Copy templates if they exists
:: FIXME: It ask for confirmation
:: if not exist "%Z%\packages\openoffice\ext\sun-odf-template-pack-%WINLANG%.oxt" goto notemplate
::  todo.pl "start /D\"%ProgramFiles%\OpenOffice.org 3\program\" unopkg.com add --shared %Z%\packages\openoffice\ext\sun-odf-template-pack-%WINLANG%.oxt"
:: :notemplate

::Skip FirstTimeWizard
todo.pl "start /D\"%ProgramFiles%\OpenOffice.org 3\program\" unopkg.com add --shared %Z%\packages\openoffice\ext\DisableFirstStartWzd_ooo%VERSION%.oxt"

:: Remove link from desktop 
todo.pl "unlink.pl special:AllUsersDesktop\"\OpenOffice.org %VERSION%.lnk\"

:: Install Main program 
todo.pl ".ignore-err 2 %Z%\packages\openoffice\ooo_%VERSION%_Win_x86_install_%WINLANG%.exe /S /v /qb \"ALLUSERS=1 SELECT_WORD=1 SELECT_EXCEL=1 SELECT_POWERPOINT=1\""

