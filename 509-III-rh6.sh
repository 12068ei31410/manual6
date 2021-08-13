#!/bin/bash
###
# CAT III
# RHEL-06 - 509
# STIG ID's:
############################################################################

echo "STIG 509 CAT III
Verify the audispd plugin is active:

grep active /etc/audisp/plugins.d/syslog.conf
"

grep active /etc/audisp/plugins.d/syslog.conf 

echo "
If the \"active\" setting is missing or set to \"no\", this is a finding.
STIG 509 CAT III
"
