#!/bin/bash
###
# CAT III
# RHEL-06 - 138
# STIG ID's:
############################################################################

echo "STIG 138 CAT III
Run the following commands to determine the current status of the 'logrotate' service: 

grep logrotate /var/log/cron*
"

grep logrotate /var/log/cron*

echo "
If the logrotate service is not run on a daily basis by cron, this is a finding.
STIG 138 CAT III
"
