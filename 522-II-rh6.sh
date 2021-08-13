#!/bin/bash
###
# CAT II
# RHEL-06 - 522
# STIG ID's: 
############################################################################

echo "STIG 522 CAT II
Run the following command to check the group owner of the system audit logs: 

grep '^log_file' /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %G:%n
"

grep "^log_file" /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %G:%n

echo "
Audit logs must be group-owned by root.
STIG 522 CAT II
"
