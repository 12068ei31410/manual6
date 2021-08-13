#!/bin/bash
###
# RHEL-06 - 341
# STIG ID's:
############################################################################

echo "STIG - 341
To ensure the default password is not set, run the following command: 

grep -v '^#' /etc/snmp/snmpd.conf| grep public
"
grep -v "^#" /etc/snmp/snmpd.conf| grep public

echo "
There should be no output. 
If there is output, this is a finding.
STIG - 341
"
