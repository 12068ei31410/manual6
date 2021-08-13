#!/bin/bash
###
# CAT II
# RHEL-06 - 320
# STIG ID's:
############################################################################

echo "STIG 320 CAT II
Run the following command to ensure the default "FORWARD" policy is "DROP": 

grep \":FORWARD\" /etc/sysconfig/iptables
"

grep ":FORWARD" /etc/sysconfig/iptables

echo "
The output must be the following: 
:FORWARD DROP [0:0]

If it is not, this is a finding.
STIG 320 CAT II
"
