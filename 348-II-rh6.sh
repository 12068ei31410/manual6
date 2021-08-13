#!/bin/bash
###
# CAT II
# RHEL-06 - 348
# STIG ID's:
############################################################################

echo "STIG 348 CAT II
To verify this configuration, run the following command: 

grep 'banner_file' /etc/vsftpd/vsftpd.conf
"

grep "banner_file" /etc/vsftpd/vsftpd.conf

echo "
The output should show the value of "banner_file" is set to \"/etc/issue\"
or no output
STIG 348 CAT II
"
