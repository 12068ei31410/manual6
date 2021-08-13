#!/bin/bash
###
# CAT III
# RHEL-06 - 336
# STIG ID's:
############################################################################

echo "STIG 336 CAT III
To find world-writable directories that lack the sticky bit, run the 
following command for each local partition [PART]:
find [PART] -xdev -type d -perm -002 \! -perm -1000
#find / -path /afs -prune -o -xdev -type d -perm -002 \! -perm -1000
"

for i in `grep ext4 /proc/mounts | cut -d" " -f2`
do
find $i -xdev -type d -perm -002 \! -perm -1000 -ls
done

echo "
If any world-writable directories are missing the sticky bit, this is a 
finding.
STIG 336 CAT III
"
