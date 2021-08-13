#!/bin/bash
###
# CAT III
# RHEL-06 - 273
# STIG ID's:
############################################################################

echo "STIG 273 CAT III
If Samba is not in use, this is not applicable.

rpm -qi Samba
"

rpm -qi Samba

echo "
To verify that Samba clients using mount.cifs must use packet signing, 
run the following command: 

grep sec /etc/fstab /etc/mtab
"

grep sec /etc/fstab /etc/mtab

echo "
The output should show either krb5i or ntlmv2i in use. 
If it does not, this is a finding.
STIG 273 CAT III
"
