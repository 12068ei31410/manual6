#!/bin/bash
###
# CAT III
# RHEL-06 - 299
# STIG ID's:
############################################################################

echo "STIG 299 CAT III
To check the maximum value for consecutive repeating characters, run the 
following command: 

grep pam_cracklib /etc/pam.d/system-auth
grep pam_cracklib /etc/pam.d/password-auth
"

grep pam_cracklib /etc/pam.d/system-auth
grep pam_cracklib /etc/pam.d/password-auth

echo "
Look for the value of the "maxrepeat" parameter. The DoD requirement is 3. 
If maxrepeat is not found or not set to the required value, this is a finding.
STIG 299 CAT III
"
