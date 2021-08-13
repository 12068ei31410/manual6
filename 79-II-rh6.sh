#!/bin/bash
###
# RHEL-06 - 79
# STIG ID's:
############################################################################


echo "STIG 79
The status of the "kernel.exec-shield" kernel parameter can be queried by 
running the following command: 

sysctl kernel.exec-shield
grep kernel.exec-shield /etc/sysctl.conf
"

sysctl kernel.exec-shield
grep kernel.exec-shield /etc/sysctl.conf

echo "
The output of the command should indicate a value of '1'.
STIG 79
50398
"
