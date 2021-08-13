#!/bin/bash
###
# CAT III
# RHEL-06 - 337
# STIG ID's:
############################################################################

echo "STIG 337 CAT III
The following command will discover and print world-writable 
directories that are not owned by a system account, given the assumption 
that only system accounts have a uid lower than 500. Run it once for 
each local partition [PART]: 
find [PART] -xdev -type d -perm -0002 -uid +499 -print
#find / -path /afs -prune -o -xdev -type d -perm -0002 -uid +499 -print
"

for i in `grep ext4 /proc/mounts | cut -d" " -f2`
do
find $i -xdev -type d -perm -0002 -uid +499 -print -ls
done

echo "
If there is output, this is a finding.
STIG 337 CAT III
"
