#!/bin/bash
###
# CAT III
# RHEL-06 V1R16 - 182
# STIG ID's:
############################################################################

echo "STIG 182 CAT III
If you are running x86_64 architecture, determine the values for sethostname:
uname -m; ausyscall i386 sethostname; ausyscall x86_64 sethostname

If the values returned are not identical verify that the system is configured 
to monitor network configuration changes for the i386 and x86_64 architectures:

sudo egrep -w 
'(sethostname|setdomainname|/etc/issue|/etc/issue.net|/etc/hosts|/etc/sysconfig/network)' 
/etc/audit/audit.rules

Example:
-a always,exit -F arch=b32 -S sethostname -S setdomainname -k audit_network_modifications
-w /etc/issue -p wa -k audit_network_modifications
-w /etc/issue.net -p wa -k audit_network_modifications
-w /etc/hosts -p wa -k audit_network_modifications
-w /etc/sysconfig/network -p wa -k audit_network_modifications

-a always,exit -F arch=b64 -S sethostname -S setdomainname -k audit_network_modifications
-w /etc/issue -p wa -k audit_network_modifications
-w /etc/issue.net -p wa -k audit_network_modifications
-w /etc/hosts -p wa -k audit_network_modifications
-w /etc/sysconfig/network -p wa -k audit_network_modifications
End Example
"

sudo egrep -w '(sethostname|setdomainname|/etc/issue|/etc/issue.net|/etc/hosts|/etc/sysconfig/network)' /etc/audit/audit.rules

echo "
If the system is configured to watch for network configuration changes, a 
line should be returned for each file specified for both (and -p wa should be indicated 
for each).

If the system is not configured to audit changes of the network configuration, this is a finding.
STIG 182 CAT III
"
