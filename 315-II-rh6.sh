#!/bin/bash
###
# CAT II
# RHEL-06 - 315
# STIG ID's:
############################################################################

echo "STIG 315 CAT II
Prevent the loading of the bluetooth kernel module.

grep -r bluetooth /etc/modprobe.conf /etc/modprobe.d | grep -i \"/bin/true\"| grep -v \"#\"
"

grep -r bluetooth /etc/modprobe.conf /etc/modprobe.d | grep -i "/bin/true"| grep -v "#"

echo "
If no line is returned, this is a finding.

Prevent the loading of the net-pf-31 kernel module.

grep -r net-pf-31 /etc/modprobe.conf /etc/modprobe.d | grep -i \"/bin/true\" | grep -v \"#\"
"

grep -r net-pf-31 /etc/modprobe.conf /etc/modprobe.d | grep -i "/bin/true" | grep -v "#"

echo "
If no line is returned, this is a finding.
STIG 315 CAT II
"
