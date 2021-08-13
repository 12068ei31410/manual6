#!/bin/bash
###
# CAT II
# RHEL-06 - 18
# STIG ID's:
############################################################################


echo "STIG 18 CAT II
To find the location of the AIDE database file, run the following command:

grep DBDIR /etc/aide.conf

Using the defined values of the [DBDIR] and [database] variables, verify 
the existence of the AIDE database file:
"

echo "ls -l /var/lib/aide/"

ls -l /var/lib/aide/

echo "
If there is no database file, this is a finding.
STIG 18 CAT II
65601
"
