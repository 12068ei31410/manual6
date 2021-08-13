#!/bin/bash
###
# CAT III
# RHEL-06 - 197
# STIG ID's:
############################################################################

echo "STIG 197 CAT III
To verify that the audit system collects unauthorized file accesses, run the 
following commands: 

grep EACCES /etc/audit/audit.rules
"

grep EACCES /etc/audit/audit.rules

echo "
grep EPERM /etc/audit/audit.rules
"

grep EPERM /etc/audit/audit.rules

echo "
If either command lacks output, this is a finding.
STIG 197 CAT III
"
