#!/bin/bash
###
# RHEL-06 - 78
# STIG ID's:
############################################################################

echo "STIG 78
The status of the "kernel.randomize_va_space" kernel parameter can be queried
by running the following commands:

sysctl kernel.randomize_va_space
grep kernel.randomize_va_space /etc/sysctl.conf
" 

sysctl kernel.randomize_va_space
grep kernel.randomize_va_space /etc/sysctl.conf

echo "
The output of the command should indicate a value of at least '1'
(preferably '2').
STIG 78 - 50397
50397
"
