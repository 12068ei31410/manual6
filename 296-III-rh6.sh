#!/bin/bash
###
# CAT III
# RHEL-06 - 296
# STIG ID's:
############################################################################

echo "STIG 296 CAT III
Run the following command to check for duplicate account names: 

pwck -rq
"

pwck -rq

echo "
If there are no duplicate names, no line will be returned. 
If a line is returned, this is a finding.
STIG 296 CAT III
"
