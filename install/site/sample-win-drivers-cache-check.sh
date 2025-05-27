#! /bin/sh
#
# Purpose: check that windows search drivers caches are still up-to-date
#          regarding files.
#          This check only already existing cache files.
#
# A good idea is to run it periodically (eg in a crontab):
#
#  MAILTO=an_email@address
#  56 04   *  *  sun /path/to/this/script/win-drivers-cache-check.sh
#

## ROOTDRIVERs: where to find search-win-drivers.cache file(s)
## CACHEGEN: full path to search-win-drivers.pl 

ROOTDRIVERS=/distrib/windows/unattended/install/site/drivers
CACHEGEN=/distrib/windows/unattended/install/dosbin/search-win-drivers.pl

if [ ! -d "${ROOTDRIVERS}" ]; then
  echo "ERROR: root driver path does not exist. exiting"
  echo "       (${ROOTDRIVERS})"
  exit 1
fi

if [ ! -x "${CACHEGEN}" ]; then
  echo "ERROR: cache file generator not found. exiting"
  echo "       (${CACHEGEN})"
  exit 1
fi

# list existing cache files
CACHELIST=`find ${ROOTDRIVERS} -type f -name search-win-drivers.cache`

# on each cache file, recompute it and diff against existing one.
for cfile in ${CACHELIST}
do
  tmpfile=/tmp/search-win-drivers.cache.tmp
  ${CACHEGEN} -d `dirname ${cfile}` -g > ${tmpfile}
  # comparison: avoid comments
  diff -q -I "^#" ${cfile} ${tmpfile} > /dev/null
  if [ $? -ne 0 ]; then
    # output only if a difference has been found
    echo "*** WARNING : Cache file does not seem up-to-date ****************"
    diff -u -I "^#" ${cfile} ${tmpfile}
    echo "******************************************************************"
    echo
    echo
    echo "==> Update your cache file with a command like:"
    echo "      ${CACHEGEN} -d `dirname ${cfile}` -g > ${cfile}"
    echo 
  fi
  rm -f ${tmpfile}
done
