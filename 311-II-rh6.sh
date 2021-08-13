#!/bin/bash
###
# CAT II
# RHEL-06 - 311
# STIG ID's:
############################################################################

echo "STIG 311 CAT II
Inspect /etc/audit/auditd.conf and locate the following line to determine 
whether the system is configured to email the administrator when disk space 
is starting to run low: 

grep space_left /etc/audit/auditd.conf 
space_left = [num_megabytes]
"

grep space_left /etc/audit/auditd.conf 

echo "
If the num_megabytes value does not correspond to a documented value for 
remaining audit partition capacity or if there is no locally documented value 
for remaining audit partition capacity, this is a finding.
STIG 311 CAT II
"
