#!/bin/bash
###
# CAT II
# RHEL-06 - 281
# STIG ID's:
############################################################################

echo "STIG 281 CAT II
The following command will list which audit files on the system have file hashes 
different from what is expected by the RPM database. 

rpm -V audit | awk '$1 ~ /..5/ && $2 != c'
"

rpm -V audit | awk '$1 ~ /..5/ && $2 != "c"'

echo "
If there is output, this is a finding.
STIG 281 CAT II
"
