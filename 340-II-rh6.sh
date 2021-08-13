#!/bin/bash
###
# CAT II
# RHEL-06 - 340
# STIG ID's:
############################################################################

echo "STIG 340 CAT II
To ensure only SNMPv3 or newer is used, run the following command: 

grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'
"
grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'

echo "
There should be no output.
If there is output, this is a finding.
STIG 340 CAT II
"
