#!/bin/bash
###
# CAT II
# RHEL-06 - 161
# STIG ID's:
############################################################################

echo "STIG 161 CAT II
Inspect /etc/audit/auditd.conf and locate the following line to determine if 
the system is configured to rotate logs when they reach their maximum size:

grep max_log_file_action /etc/audit/auditd.conf
max_log_file_action = rotate
"

grep max_log_file_action /etc/audit/auditd.conf

echo "
If the keep_logs option is configured for the max_log_file_action line in 
/etc/audit/auditd.conf and an alternate process is in place to ensure audit data 
does not overwhelm local audit storage, this is not a finding.

If the system has not been properly set up to rotate audit logs, this is a finding.
STIG 161 CAT II
"
