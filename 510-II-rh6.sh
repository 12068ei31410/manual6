#!/bin/bash
###
# CAT II
# RHEL-06 - 510
# STIG ID's:
############################################################################

echo "STIG 510 CAT II
Inspect '/etc/audit/auditd.conf' and locate the following line to determine 
if the system is configured to take appropriate action when the audit storage 
volume is full:

grep disk_full_action /etc/audit/auditd.conf
"

grep disk_full_action /etc/audit/auditd.conf

echo "
If the system is configured to 'suspend' when the volume is full or
'ignore' that it is full, this is a finding.
STIG 510 CAT II
"
