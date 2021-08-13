#!/bin/bash
###
# CAT II
# RHEL-06 - 385
# STIG ID's:
############################################################################

echo "STIG 385 CAT II
Run the following command to check the mode of the system audit directories: 

grep '^log_file' /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'|xargs stat -c %a:%n
"

grep "^log_file" /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'|xargs stat -c %a:%n

echo "
Audit directories must be mode 0755 or less permissive.
If any are more permissive, this is a finding.
STIG 385 CAT II
"
