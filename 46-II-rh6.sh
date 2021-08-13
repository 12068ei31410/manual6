#!/bin/bash
###
# CAT II
# RHEL-06 - 46
# STIG ID's:
############################################################################

echo "STIG 46 CAT II
System-wide shared library files, which are linked to executables during 
process load time or run time, are stored in the following directories 
by default: 

/lib
/lib64
/usr/lib
/usr/lib64
/usr/local/lib
/usr/local/lib64

run the following command:

for i in /lib /lib64 /usr/lib /usr/lib64 /usr/local/lib /usr/local/lib64
do
for j in \`find -L $i \! -user root\`
do
rpm -V -f $j | grep '^.....U'
done
done
"

for i in /lib /lib64 /usr/lib /usr/lib64 
do 
for j in `find -L $i \! -user root` 
do 
rpm -V -f $j | grep '^.....U' 
done 
done

echo "
If the command returns any results, this is a finding.
STIG 46 CAT II
50266
"
