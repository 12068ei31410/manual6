#!/bin/bash
###
# CAT II
# RHEL-06 - 103
# STIG ID's: 103 106 107
############################################################################

echo "STIG's 103 106 107 CAT II
If the system is a cross-domain system, this is not applicable.
If IPv6 is disabled, this is not applicable.
Run the following command to determine the current status of the ip6tables service:

chkconfig ip6tables --list
service ip6tables status
"

chkconfig ip6tables --list
service ip6tables status

echo "
If the service is not running, it should return the following: 

ip6tables: Firewall is not running.

If the service is not running, this is a finding.
STIG's 103 106 107 CAT II
50350 50352 50354
"
