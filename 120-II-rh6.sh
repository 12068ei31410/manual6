#!/bin/bash
###
# CAT II
# RHEL-06 - 120
# STIG ID's:
############################################################################


echo "STIG 120 CAT II
Run the following command to ensure the default "INPUT" policy is "DROP":

iptables -nvL | grep -i input
"

iptables -nvL | grep -i input

echo "
Should be Chain INPUT (policy DROP 0 packets, 0 bytes)

If the default policy for the INPUT chain is not set to DROP, this is a finding.

STIG 120 CAT II
50314
"
