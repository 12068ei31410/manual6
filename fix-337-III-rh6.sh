#!/bin/bash
###
# CAT III
# RHEL-06 - 337
# STIG ID's:
############################################################################

echo "STIG 337 CAT III - FIXING
"

for i in `grep ext4 /proc/mounts | cut -d" " -f2`
do
find $i -xdev -type d -perm -0002 -uid +499 -print0 | xargs -0 chmod 775
done

echo "
STIG 337 CAT III - FIXED
"

