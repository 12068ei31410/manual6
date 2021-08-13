#!/bin/bash
###
# CAT II
# RHEL-06 - 270
# STIG ID's:
############################################################################

echo "STIG 270 CAT II
To verify the nosuid option is configured for all NFS mounts, run the 
following command: 

mount | grep nfs
"

mount | grep nfs

echo "
All NFS mounts should show the nosuid setting in parentheses, along with other mount options. 
If the setting does not show, this is a finding.
STIG 270 CAT II
"
