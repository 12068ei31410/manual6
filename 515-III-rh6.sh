#!/bin/bash
###
# CAT III
# RHEL-06 - 515
# STIG ID's:
############################################################################

echo "STIG 515 CAT III
If the NFS server is read-only, in support of unrestricted access to 
organizational content, this is not applicable.

The related "root_squash" option provides protection against remote 
administrator-level access to NFS server content. Its use is not a finding.

grep all_squash /etc/exports
"

grep all_squash /etc/exports

echo "
If there is output, this is a finding.
STIG 515 CAT III
"
