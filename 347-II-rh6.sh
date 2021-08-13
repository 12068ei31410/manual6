#!/bin/bash
###
# CAT II
# RHEL-06 - 347
# STIG ID's:
############################################################################

echo "STIG 347 CAT II
To check the system for the existence of any ".netrc" files, run the following command: 

sudo find /root /home -xdev -name .netrc
"
sudo find /root /home -xdev -name .netrc

echo "
If any .netrc files exist, this is a finding.
STIG 347 CAT II
"
