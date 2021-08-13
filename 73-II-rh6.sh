#!/bin/bash
###
# CAT II
# RHEL-06 - 73
# STIG ID's:
############################################################################

echo "STIG 73 CAT II
To check if the system login banner is compliant, run the following command: 

cat /etc/issue
"

cat /etc/issue

echo "
If the required DoD logon banner is not displayed, this is a finding.
STIG 73 CAT II
50394
"
