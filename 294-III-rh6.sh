#!/bin/bash
###
# CAT III
# RHEL-06 - 294
# STIG ID's:
############################################################################

echo "STIG 294 CAT III
To ensure all GIDs referenced in /etc/passwd are defined in /etc/group, run 
the following command: 

pwck -r | grep 'no group'
"

pwck -r | grep 'no group'

echo "
There should be no output. 
If there is output, this is a finding.
STIG 294 CAT III
"
