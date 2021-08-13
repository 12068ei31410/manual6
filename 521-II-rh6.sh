#!/bin/bash
###
# CAT II
# RHEL-06 - 521
# STIG ID's: 
############################################################################

echo "STIG 521 CAT II
Find the list of alias maps used by the Postfix mail server:

postconf alias_maps
"

postconf alias_maps

echo "Query the Postfix alias maps for an alias for 'root':

postmap -q root hash:/etc/aliases
"

postmap -q root hash:/etc/aliases

echo "
If there are no aliases configured for root that forward to a monitored 
email address, this is a finding.
STIG 521 CAT II
"
