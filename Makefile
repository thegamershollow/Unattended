SHELL := /bin/bash
default:
	@echo "This Makefile is for the maintainer (sorry)"
	@echo "Please read the documentation under html/"
	@echo "or at http://unattended.sourceforge.net/"
	@echo "(Did you mean to 'cd bootdisk' or 'cd linuxboot' first?)"
	exit 1
sfuser := $$USER
svnroot := https://svn.code.sf.net:/p/unattended/code

cwd := $(shell pwd)

ver := $(shell linuxboot/tools/version.pl)

prev := $(shell linuxboot/tools/version.pl 1)

dir := unattended-${ver}

really := echo XXX

checkver:
	@if [ "${ver}" == "" ] ; then			\
		echo "Unable to determine version" ;	\
		exit 1 ;				\
	fi

release: checkver
	tag=`echo REL_$(ver) | sed s/\\\\./_/g` &&			\
	$(really) svn copy ${svnroot}/trunk ${svnroot}/tags/$$tag  &&	\
	temp=`mktemp -d /var/tmp/unattended.XXXXXX` &&			\
	cd $$temp &&							\
	svn co ${svnroot}/trunk unattended &&				\
	echo -e "$(ver)\r" > unattended/install/version.txt &&		\
	mv unattended $(dir) &&						\
        find $(dir) -name .svn -prune  -exec rm -rf {} \;  &&          \
	find $(dir) -name .svn -prune -o -type f			\
			-not -name .\* -print |				\
		zip $(dir).zip -9 -q -@	&&				\
	sleep 2 &&							\
	pushd ${dir}/bootdisk &&					\
	make && make tidy &&						\
	popd &&								\
	find $(dir) -name .svn -prune -o -newer $(dir).zip		\
			-type f -not -name .\* -print |			\
		zip $(dir)-dosboot.zip -9 -q -@ &&			\
	sleep 2 &&							\
	pushd ${dir}/linuxboot &&					\
	make dest=$(cwd)/linuxboot symlinks &&				\
	make && make tidy &&						\
	popd &&								\
	find $(dir) -name .svn -prune -o -newer $(dir)-dosboot.zip	\
			-type f -not -name .\* -print |			\
		zip $(dir)-linuxboot.zip -9 -q -@ &&			\
	$(really) ncftpput -p ${sfuser}@users.sourceforge.net		\
		upload.sourceforge.net /incoming			\
		${dir}.zip ${dir}-dosboot.zip				\
		${dir}-linuxboot.zip &&					\
	cd / &&								\
	$(really) rm -rf $$temp

diff: checkver
	tag=`echo REL_$(prev) | sed s/\\\\./_/g` &&	\
	svn diff -u -r$$tag

log: checkver
	tag=`echo REL_$(prev) | sed s/\\\\./_/g` &&	\
	svn log -N -S -r$$tag::

.PHONY: default checkver release diff log

