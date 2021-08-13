#!/bin/bash
###
# CAT II
# RHEL-06 - 279
# STIG ID's:
############################################################################

echo "STIG 279 CAT II
The following command will list which audit files on the system have ownership 
different from what is expected by the RPM database: 

rpm -V audit | grep '^.....U'
"

rpm -V audit | grep '^.....U'

echo "
If there is output, this is a finding.
STIG 279 CAT II
"
