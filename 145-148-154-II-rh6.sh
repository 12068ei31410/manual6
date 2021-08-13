#!/bin/bash
###
# CAT II
# RHEL-06 - 145
# STIG ID's: 145 148 154
############################################################################

echo "STIG 145 148 154 CAT II
Run the following command to determine the current status of the auditd service: 

service auditd status
"

service auditd status

echo "
If the service is enabled, it should return the following: 

auditd is running...

If the service is not running, this is a finding.
STIG 145 148 154 CAT II
"
