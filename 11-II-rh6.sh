#!/bin/bash
###
# CAT II
# RHEL-06 - 11
# STIG ID's:
############################################################################

echo "STIG 11 CAT II
If the system is joined to the Red Hat Network, a Red Hat 
Satellite Server, or a yum server which provides updates, 
invoking the following command will indicate if updates are available: 

yum check-update

If the system is not configured to update from one of these sources, 
run the following command to list when each package was last updated:

rpm -qa -last

If updates are not installed, this is a finding.

Interview question -> CONOPS: System Updates
STIG 11 CAT II
50281
"
