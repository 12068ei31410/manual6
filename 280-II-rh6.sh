#!/bin/bash
###
# CAT II
# RHEL-06 - 280
# STIG ID's:
############################################################################

echo "STIG 280 CAT II
The following command will list which audit files on the system have 
group-ownership different from what is expected by the RPM database: 

rpm -V audit | grep '^......G'
"

rpm -V audit | grep '^......G'

echo "
If there is output, this is a finding.
STIG 280 CAT II
"
