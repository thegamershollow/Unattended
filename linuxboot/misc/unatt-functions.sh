#
# This file is released under GPL version 2
#
# the funtions 'parse_ini_file' and 'write_ini_entry'
# are copied from one of Mario Gzuk's unattended-gui scripts 
# Mari Gzuk is the orginal author and therefore the copyright holder.
# (http://unattended.technikz.de or http://unattended-gui.sourceforge.net)
#

function parse_ini_file ()
	{
	# options are
	# 1 the ini file
	# 2 the sektion name
	# 3 the key name
	if [ -r $1 ]
	then
		cat $1 |  sed 's/;/#/' | sed -e 's/[[:space:]]*\=[[:space:]]*/=/g'  -e 's/;.*$//'  -e 's/[[:space:]]*$//'  -e 's/^[[:space:]]*//'  -e "s/^\(.*\)=\([^\"']*\)$/\1=\"\2\"/" | sed -n -e "/^\[$2\]/,/^\s*\[/{/^[^;].*\=.*/p;}" | sed 's/\\/\\\\/g' | while read LINE
		do
			MATCH=`echo $LINE | awk -F\= '{print $1}'`
			M1=`echo $MATCH | tr '[A-Z]' '[a-z]'`
			M2=`echo $3 | tr '[A-Z]' '[a-z]'`
			if [ "$M1" == "$M2" ]
			then
				echo $LINE | awk -F\= '{print $2}' | sed 's/^"//' | sed 's/"$//'
			fi
		done
	fi
	}

# replace_ini(file, section, key, value)
#
# Write $key with $value into $section from $file.
# If it already exists, overwrite it.
#
# Unwanted side-effects:
#	* Double entries within a section get killed!
#	  (They shouldn't be there anyway, though...)
#	* Entries may lose their order
#
function write_ini_entry()
	{
	local myfile=$1 mysec=$2 mykey=$3 myval=`echo $4 | sed 's#\\\\#\\\\\\\\#g'` tmp=$1.$$
	cat /dev/null > $tmp
	awk "
		BEGIN	{
			# Indicate if we are within the right section
			in_desired_section = 0;

			# Indicate if we should write the entry as
			# fast as possible.
			write_now = 0;

			# If 1, delete any further occurences
			have_written = 0;
			}

		# Section matching
		/\[.*\]/ {
			if (\$1 ~ /\[$mysec\]/) {
				in_desired_section = 1;
				write_now = 1;
			} else {
				in_desired_section = 0;
			}

			print \$0;
		}

		# Key assignment matching
		/.*=.*/ {
			if (\$1 ~ /$mykey/) {
				if (in_desired_section == 0) {
					print \$0;
				} else {
					# Skip HERE to purge old value
				}
			} else {
				print \$0;
			}
		}

		# Run on every line
		{
			if (write_now == 1) {
				printf \"$mykey = \\\"$myval\\\"\n\";
				write_now = 0;
				have_written = 1;
			}
		}
		END	{
			if (have_written == 0)
				{
				printf \"[$mysec]\n$mykey = \\\"$myval\\\"\n\";
				}
			}
				
	" $myfile >> $tmp
	mv $tmp $myfile
	}


