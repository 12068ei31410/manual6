#!/bin/bash
###
# CAT III
# RHEL-06 - 297
# STIG ID's:
############################################################################


echo "STIG 297 CAT III - Manual Check
For every temporary account, run the following command to obtain its
account aging and expiration information: 

chage -l [USER]

Verify each of these accounts has an expiration date set as documented. 
If any temporary accounts have no expiration date set or do not expire 
within a documented time frame, this is a finding.
STIG 297 CAT III - Manual Check
"
