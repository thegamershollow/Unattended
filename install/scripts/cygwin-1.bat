:: Perform post-install Cygwin configuration.
@Echo off
:: Set up mounts (/projects, /releases, etc.)
todo.pl "c:\cygwin\bin\mount.exe -b -f -s P: /projects" "c:\cygwin\bin\mount.exe -b -f -s R: /releases" "c:\cygwin\bin\mount.exe -b -f -s S: /software" "c:\cygwin\bin\mount.exe -b -f -s U: /u"

:: Give ownership of everything to Administrators *group*.  This is
:: legal on Windows.
todo.pl "C:\cygwin\bin\bash.exe --login -c 'cd / && chown -R Administrators .'"

:: Copy over our local additions to the tree
todo.pl "c:\cygwin\bin\bash.exe --login -c 'cp -a `cygpath -u %Z%`/packages/curlstuff/. /.'"

:: Configure sshd
todo.pl "c:\cygwin\bin\bash.exe --login -c 'ssh-host-config --no'"

:: Add curlbot entry to /etc/passwd.  The messy string comes from
:: running "mkpasswd -d -u curlbot" under Cygwin.  Unfortunately, this
:: must be run from a valid domain account, so we cannot do this while
:: building the workstation.  Hm, perhaps we could do it when we start
:: ssh...  FIXME
todo.pl "c:\cygwin\bin\bash.exe --login -c 'grep -q curlbot /etc/passwd || echo curlbot:unused_by_nt/2000/xp:11427:10513:Curl Q. Robot,U-CURL\\curlbot,S-1-5-21-223763145-1258644291-1338337383-1427:/u/curlbot:/bin/bash >> /etc/passwd'"

:: Populate /etc/group similarly (mkgroup -d)
todo.pl "c:\cygwin\bin\bash.exe --login -c 'grep -q 10513 /etc/group|| echo Domain Users:S-1-5-21-223763145-1258644291-1338337383-513:10513: >> /etc/group'"
