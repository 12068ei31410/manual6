#!/bin/bash
###
# CAT II
# RHEL-06 - 528
# STIG ID's:
############################################################################

echo "STIG 528 CAT II
To verify that binaries cannot be directly executed from the /tmp directory,
run the following command:

grep '\s/tmp' /etc/fstab
"
grep '\s/tmp' /etc/fstab

echo "
The resulting output will show whether the /tmp partition has the 'noexec'
flag set. If the /tmp partition does not have the noexec flag set, this 
is a finding.
STIG 528 CAT II
"
