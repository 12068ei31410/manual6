#!/bin/bash
###
# CAT III
# RHEL-06 - 9
# STIG ID's:
############################################################################

echo "STIG 9 CAT III
If the system uses RHN or an RHN Satellite, this is not applicable.

To check that the rhnsd service is disabled in system boot 
configuration, run the following command:

chkconfig rhnsd --list
"

chkconfig rhnsd --list 

echo "Should be:
 rhnsd 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Run the following command to verify 'rhnsd' is disabled 
through current runtime configuration:

service rhnsd status
"

service rhnsd status

echo "
If the service is running, this is a finding.
STIG 9 CAT III
50278
"

