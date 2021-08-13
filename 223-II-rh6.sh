#!/bin/bash
###
# CAT II
# RHEL-06 - 223
# STIG ID's:
############################################################################

echo "STIG 223 CAT II
To check that the tftp service is disabled in system boot configuration, run 
the following command:

rpm -qi tftp
chkconfig tftp --list
"

rpm -qi tftp
chkconfig tftp --list

echo "
Output should indicate the tftp service has either not been installed, or
has been disabled, as shown in the example below:

chkconfig tftp --list
tftp off
OR
error reading information on service tftp: No such file or directory
"

chkconfig tftp --list

echo "
If the service is running, this is a finding.
STIG 223 CAT II
"
