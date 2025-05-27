# Makefile to create bootable DOS images for various network cards.

# We use bash-isms
SHELL = /bin/bash

# Timeout value
timeout := 10

# Normal drivers
drivers   := $(shell grep ^[[:alnum:]] DRIVERS.txt \
		| grep -w -i -v universal | cut -f1 -d' ')
# Universal drivers
universal := $(shell grep ^[[:alnum:]] DRIVERS.txt \
		| grep -w -i universal | cut -f1 -d' ')
# Default universal driver
univ_driver := $(shell grep ^[[:alnum:]] DRIVERS.txt \
		| grep -w -i universal | head -1 | cut -f1 -d' ')

# Compressed disk image files (images/*.imz)
images := $(patsubst %,images/%.imz,$(drivers) $(universal))

# Hack to get a single space into a variable
nullstring :=
space := $(nullstring) # one space

all: images iso tftpboot dvd

images: $(images)

# Detect updates to template files.
.stamp-template: FORCE
	@[ -e $@ ] || touch $@
	@find template -newer $@ -print | sed s/.\*/$@/ | xargs -r touch

# Special rule for updating version.bat.
template/version.bat: FORCE
	version=`../linuxboot/tools/version.pl` &&	\
	echo -e "SET VERSION=$$version\r" > $@.tmp
	cmp -s $@.tmp $@ || mv $@.tmp $@
	rm -f $@.tmp

# Images targets
images/%.imz: .stamp-template template/version.bat empty-boot.img.gz \
		drivers/%.dos
	@echo -n "Making $@..."
	@destdir=`dirname "$@"` &&					\
	driver=`basename "$@" .imz` &&					\
	driver_uc=`echo $$driver | tr [[:lower:]] [[:upper:]]` &&	\
	mtoolsrc=`mktemp /var/tmp/mtoolsrc.XXXXXX` &&			\
	echo 'drive x:' > $$mtoolsrc &&					\
	echo file=\"`pwd`/"$$destdir/$$driver.img"\" >> $$mtoolsrc &&	\
	export MTOOLSRC=$$mtoolsrc &&					\
	gzip -d -c empty-boot.img.gz >| $$destdir/$$driver.img &&	\
	(cd template &&							\
	 find . -mindepth 1 -name CVS -prune -o -print | sort |		\
		while read filename ; do				\
			if [ -d $$filename ] ; then			\
				mmd x:/$$filename ;			\
				continue ;				\
			fi ;						\
			case $$filename in				\
			  *.ini | *.in_ )				\
			    sed s/@driver@/$$driver_uc/g < $$filename |	\
			    mcopy - x:/$$filename	;;		\
			  *) mcopy $$filename x:/$$filename;;		\
			esac;						\
		done) &&						\
	mcopy drivers/$$driver.dos x:/net/$$driver.dos &&		\
	rm $$mtoolsrc &&						\
	zip -9 -m -q -j $@.tmp $$destdir/$$driver.img &&		\
	mv $@.tmp $@
	@echo "done"

# ISO CD-ROM targets
iso: bootdisk.iso

iso/isolinux/%.imz: images/%.imz
	cp $< $@

iso/isolinux/memdisk: memdisk
	cp $< $@

bootdisk.iso: $(patsubst images/%.imz,iso/isolinux/%.imz,$(images)) \
			iso/isolinux/memdisk iso/isolinux/isolinux.cfg \
			iso/isolinux/isoboot.msg iso/isolinux/isolinux.bin
	@echo -n "Making $@..."
	@mkisofs -quiet -o $@.tmp -m CVS				\
                -b isolinux/isolinux.bin -c isolinux/boot.cat		\
                -no-emul-boot -boot-load-size 4 -boot-info-table	\
		iso > /dev/null
	@mv $@.tmp $@
	@echo "...done making $@"

iso/isolinux/isolinux.cfg: isolinux.cfg DRIVERS.txt
	@echo -n "Making $@..."
	@cat $< >| $@.tmp
	@for driver in $(drivers) ; do					\
		echo >> $@.tmp ;					\
		echo "label $$driver" >> $@.tmp ;			\
		echo "        kernel memdisk" >> $@.tmp ;		\
		echo "        append initrd=$$driver.imz" >> $@.tmp ;	\
	done
	@mv $@.tmp $@
	@echo "done"

iso/isolinux/isoboot.msg: isoboot.msg DRIVERS.txt
	@echo -n "Making $@..."
	@cat isoboot.msg >| $@.tmp
	@echo >> $@.tmp
	@grep ^[[:alnum:]] DRIVERS.txt >> $@.tmp
	@mv $@.tmp $@
	@echo "done"

iso/isolinux/isolinux.bin: isolinux.bin
	@echo -n "Making $@..."
	@cat $< >| $@.tmp
	@mv $@.tmp $@
	@echo "done"

# TFTP boot (PXE) targets
tftpboot: tftpboot/unattended/memdisk tftpboot/msgs/boot.msg tftpboot/msgs/additional.msg tftpboot/pxelinux.cfg/default

tftpboot/unattended/memdisk: memdisk
	cp $< $@

tftpboot/msgs/boot.msg: DRIVERS.txt
	@echo -n "Making $@..."
	@echo "" > $@.tmp
	@echo >> $@.tmp
	@echo "                     09Welcome to 0cUnattended09 Installer!07" >> $@.tmp
	@echo >> $@.tmp
	@echo "0aChoose your network driver, or press 0f<ENTER>0a to boot from hard drive" >> $@.tmp
	@echo "(will automatically trigger in ${timeout} seconds unless you press any key).07" >> $@.tmp
	@echo "" >> $@.tmp
	@grep '^\($(subst $(space),\|,$(universal))\)' DRIVERS.txt >> $@.tmp
	@echo >> $@.tmp
	@echo "(You can also press 05<F2>07 to see the list of additional drivers available)." >> $@.tmp
	@echo >> $@.tmp
	@echo "05[F1-Main] [F2-Additional] [F3-Information]07" >> $@.tmp
	@mv $@.tmp $@
	@echo "done"

tftpboot/msgs/additional.msg: DRIVERS.txt
	@echo -n "Making $@..."
	@echo "" > $@.tmp
	@echo >> $@.tmp
	@echo "                       09Additional Network Drivers07" >> $@.tmp
	@echo >> $@.tmp
	@echo "0aThese are additional network drivers that you can choose:07" >> $@.tmp
	@echo "" >> $@.tmp
	@grep '^\($(subst $(space),\|,$(drivers))\)' DRIVERS.txt >> $@.tmp
	@echo >> $@.tmp
	@echo "05[F1-Main] [F2-Additional Drivers] [F3-Information]07" >> $@.tmp
	@mv $@.tmp $@
	@echo "done"

tftpboot/pxelinux.cfg/default: tftpboot/msgs/information.msg
	@echo -n "Making $@..."
	@echo "default local" > $@.tmp
	@echo "timeout ${timeout}0" >> $@.tmp
	@echo "prompt 1" >> $@.tmp
	@echo "display msgs/boot.msg" >> $@.tmp
	@echo "F1 msgs/boot.msg" >> $@.tmp
	@echo "F2 msgs/additional.msg" >> $@.tmp
	@echo "F3 msgs/information.msg" >> $@.tmp
	@echo >> $@.tmp
	@echo "label local" >> $@.tmp
	@echo "  localboot 0" >> $@.tmp
	@for driver in $(drivers) ; do					     \
		echo >> $@.tmp ;					     \
		echo "label $$driver" >> $@.tmp ;			     \
		echo "    kernel unattended/memdisk" >> $@.tmp ;	     \
		echo "    append initrd=unattended/$$driver.imz" >> $@.tmp ; \
	done
	@for driver in $(universal) ; do						\
		echo >> $@.tmp ;							\
		echo "label $$driver" >> $@.tmp ;					\
		echo "    kernel unattended/memdisk" >> $@.tmp ;			\
		echo "    append initrd=unattended/$$driver.imz keeppxe" >> $@.tmp ;	\
	done
	@mv $@.tmp $@
	@echo "done"

# DVD bootdisk images target
dvd: dvdboot.imz

dvdboot.imz: .stamp-template template/version.bat empty-boot.img.gz
	@echo -n "Making $@..."
	@destdir=`dirname "$@"` &&					\
	image=`basename "$@" .imz` &&					\
	mtoolsrc=`mktemp /var/tmp/mtoolsrc.XXXXXX` &&			\
	echo 'drive x:' > $$mtoolsrc &&					\
	echo file=\"`pwd`/"$$destdir/$$image.img"\" >> $$mtoolsrc &&	\
	export MTOOLSRC=$$mtoolsrc &&					\
	cp empty-boot.img.gz $$destdir/$$image.img.gz &&		\
	gzip -d -n -f $$destdir/$$image.img.gz &&			\
	mcopy -n -o template/*.* x:/ &&					\
	mcopy -n -o dvd-template/* x:/ &&				\
	rm $$mtoolsrc &&						\
	zip -9 -m -q -j $@.tmp $$destdir/$$image.img &&			\
	mv $@.tmp $@
	@echo "done"

# Remove intermediate files which we do not want to ship
tidy:
	-rm -f iso/isolinux/{isolinux.cfg,isoboot.msg,*.imz,memdisk,isolinux.bin}

clean:	tidy
	@-rm -f .stamp-template
	-rm -f images/*.imz
	-rm -f bootdisk.iso
	-rm -f tftpboot/msgs/{boot,additional}.msg
	-rm -f tftpboot/unattended/{*.imz,memdisk}
	-rm -f tftpboot/pxelinux.cfg/default
	-rm -f dvdboot.imz

FORCE:

.PHONY: FORCE clean images iso tidy tftpboot
