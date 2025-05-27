dready %1:
if not %errorlevel%==0 goto end
if not exist %1:\dosbin\install.pl goto end

set DOS_ZDRV=%1:
set errorlevel=0

:end
