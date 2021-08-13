#!/bin/bash
###
# CAT II
# RHEL-06 - 134
# STIG ID's:
############################################################################

echo "STIG 134 CAT II
The group-owner of all log files written by 'rsyslog' should be root. These 
log files are determined by the second part of each Rule line in '/etc/rsyslog.conf'
and typically all appear in '/var/log'. To see the group-owner of a given log 
file, run the following command:

ls -l /var/log
grep /var/log/ /etc/rsyslog.conf
"

grep /var/log/ /etc/rsyslog.conf
ls -l /var/log

echo "
Some log files referenced in /etc/rsyslog.conf may be created by other 
programs and may require exclusion from consideration.

If the group-owner is not root, this is a finding.
STIG 134 CAT II
50320
"
