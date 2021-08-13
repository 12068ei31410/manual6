#!/bin/bash
###
# CAT II
# RHEL-06 - 243
# STIG ID's:
############################################################################

echo "STIG 243 CAT II
Only FIPS-approved ciphers should be used. To verify that only FIPS-approved 
ciphers are in use, run the following command: 

grep Ciphers /etc/ssh/sshd_config
"

grep Ciphers /etc/ssh/sshd_config

echo "
The output should contain only those ciphers which are FIPS-approved, namely, 
the AES and 3DES ciphers. 

Ciphers aes128-ctr,aes192-ctr,aes256-ctr


If that is not the case, this is a finding.
STIG 243 CAT II
"
