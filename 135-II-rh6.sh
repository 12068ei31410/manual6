#!/bin/bash
###
# CAT II
# RHEL-06 - 135
# STIG ID's:
############################################################################

echo "STIG 135 CAT II
The file permissions for all log files written by rsyslog should be set to 600, 
or more restrictive. These log files are determined by the second part of each 
Rule line in /etc/rsyslog.conf and typically all appear in /var/log. For 
each log file [LOGFILE] referenced in /etc/rsyslog.conf, run the following 
command to inspect the file's permissions: 

ls -l /var/log
grep /var/log/ /etc/rsyslog.conf
"

grep /var/log/ /etc/rsyslog.conf
ls -l /var/log

echo "
The permissions should be 600, or more restrictive. Some log files referenced in 
/etc/rsyslog.conf may be created by other programs and may require exclusion from 
consideration.

If the permissions are not correct, this is a finding.
STIG 135 CAT II
50424
"
