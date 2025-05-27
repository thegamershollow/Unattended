:: The idea for this awful hack is from
:: <http://www.ericphelps.com/batch/charactr/>.  Arguments are
:: comma-separated individual letters output by "choice".
:: Sets %domain% to domain part and %user% to user part.

@echo off

set user=
set domain=

:start

:: Next arg is either first (bogus) or already processed.
shift

:: Check for termination conditions: Empty argument (paranoia) or
:: end-of-arguments marker.
if %1. == . goto end
if %1 == =]? goto end

if %1 == \ goto :backslash

:: Accumulate letters
set user=%user%%1
goto :start

:backslash
:: We got a backslash, so put %user% into %domain% and reset %user%.
set domain=%user%
set user=
goto :start

:end
