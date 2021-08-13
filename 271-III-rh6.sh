#!/bin/bash
###
# CAT III
# RHEL-06 - 271
# STIG ID's:
############################################################################

echo "STIG 271 CAT III
To verify that binaries cannot be directly executed from removable media, run 
the following command: 

grep noexec /etc/fstab
"

cat /etc/fstab
grep noexec /etc/fstab

echo "
The output should show noexec in use. 
If it does not, this is a finding.
STIG 271 CAT III
"
