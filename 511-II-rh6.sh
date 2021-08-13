#!/bin/bash
###
# CAT II
# RHEL-06 - 511
# STIG ID's:
############################################################################

echo "STIG 511 CAT II
Inspect '/etc/audit/auditd.conf' and locate the following line to determine 
if the system is configured to take appropriate action when disk errors occur:

grep disk_error_action /etc/audit/auditd.conf
"

grep disk_error_action /etc/audit/auditd.conf

echo "
If the system is configured to 'suspend' when disk errors occur
or 'ignore' them, this is a finding.
STIG 511 CAT II
"
