#!/bin/bash
###
# CAT II
# RHEL-06 - 45
# STIG ID's:
############################################################################

echo "FIXING -> STIG 45 CAT II
System-wide shared library files, which are linked to executables during process 
load time or run time, are stored in the following directories by default: 

/lib
/lib64
/usr/lib
/usr/lib64

find -L /lib -perm /022 -type f -print0 | xargs -0 chmod 644
"

find -L /lib -perm /022 -type f -print0 | xargs -0 chmod 644

echo "find -L /lib64 -perm /022 -type f -print0 | xargs -0 chmod 644
"

find -L /lib64 -perm /022 -type f -print0 | xargs -0 chmod 644

echo "find -L /usr/lib -perm /022 -type f -print0 | xargs -0 chmod 644
"

find -L /usr/lib -perm /022 -type f -print0 | xargs -0 chmod 644

echo "find -L /usr/lib64 -perm /022 -type f -print0 | xargs -0 chmod 644
"

find -L /usr/lib64 -perm /022 -type f -print0 | xargs -0 chmod 644

echo "
If any of these files (excluding broken symlinks) are group-writable or
world-writable, this is a finding.
COMPLETED FIXING STIG 45 CAT II
"

/usr/local/etc/stig/scripts/45-II-rh6.sh
