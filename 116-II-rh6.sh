#!/bin/bash
###
# CAT II
# RHEL-06 - 116
# STIG ID's:
############################################################################

echo "STIG 116 CAT II
If the system is a cross-domain system, this is not applicable.

Run the following command to determine the current status of the "iptables" service: 

service iptables status
"

service iptables status

echo "
If the service is not running, it should return the following: 

iptables: Firewall is not running.

If the service is not running, this is a finding.
STIG 116 CAT II
50361
"
