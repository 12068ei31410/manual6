#!/bin/bash
###
# CAT II
# RHEL-06 - 282
# STIG ID's:
############################################################################


echo "STIG 282 CAT II - Manual Check
To find world-writable files, run the following command for each local 
partition [PART], excluding special filesystems such as /selinux, /proc, 
or /sys:
find [PART] -xdev -type f -perm -002
"

for i in `grep ext4 /proc/mounts | cut -d" " -f2`
do
find $i -xdev -type f -perm -002 -ls
done

echo "
If there is output, this is a finding.
STIG 282 CAT II - Manual Check
"
