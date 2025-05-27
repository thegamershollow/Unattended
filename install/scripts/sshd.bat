:: Install sshd, set it up as a service, etc.

:: Note: This script presupposes the presense of the Resource Kit (for
:: ntrights.exe) and Cygwin (for cygrunsrv and sshd).

:: Also note: The "curlbot" account is used internally for performing
:: builds.  Any account could be used.

:: Grant curlbot the right to log on as a service.  Create the
:: cygwin-sshd service to run as curlbot.
@Echo off
todo.pl "ntrights -u CURL\curlbot +r SeServiceLogonRight" "c:\cygwin\bin\bash --login -c 'cygrunsrv -I cygwin-sshd -p /usr/local/etc/cygwin-sshd.sh -o -c / -u CURL\\\\curlbot'"
