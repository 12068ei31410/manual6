#!/bin/bash
###
# CAT II
# RHEL-06 - 507
# STIG ID's:
###

echo "STIG 507 CAT II
Verify the value associated with the 'PrintLastLog' keyword in /etc/ssh/sshd_config:

grep -i '^PrintLastLog' /etc/ssh/sshd_config
"

grep -i "^PrintLastLog" /etc/ssh/sshd_config

echo "
If the \"PrintLastLog\" keyword is not present, this is not a finding.
If the value is not set to \"yes\", this is a finding.
STIG 507 CAT II
"
