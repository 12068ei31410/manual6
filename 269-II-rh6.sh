#!/bin/bash
###
# CAT II
# RHEL-06 - 269
# STIG ID's:
############################################################################

echo "STIG 269 CAT II
To verify the nodev option is configured for all NFS mounts, run the following 
command: 

mount | grep nfs
"

mount | grep nfs

echo "
All NFS mounts should show the nodev setting in parentheses, along with 
other mount options. 

If the setting does not show, this is a finding.
STIG 269 CAT II
"
