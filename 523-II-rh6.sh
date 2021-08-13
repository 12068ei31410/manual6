#!/bin/bash
###
# CAT II
# RHEL-06 - 523
# STIG ID's: 
############################################################################

echo "STIG 523 CAT II
If IPv6 is disabled, this is not applicable.

chkconfig ip6tables --list
"

chkconfig ip6tables --list

echo "
Inspect the file '/etc/sysconfig/ip6tables' to determine the default policy 
for the INPUT chain. It should be set to DROP:

grep ':INPUT' /etc/sysconfig/ip6tables
"

grep ':INPUT' /etc/sysconfig/ip6tables

echo "
If the default policy for the INPUT chain is not set to DROP, this is a finding
:INPUT DROP [0:0]
STIG 523 CAT II
"
