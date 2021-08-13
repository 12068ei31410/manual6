#!/bin/bash
###
# CAT II
# RHEL-06 - 349
# STIG ID's:
############################################################################


echo "STIG 349 CAT II
Interview the SA to determine if all accounts not exempted by policy are 
using CAC authentication. For DoD systems, the following systems and accounts 
are exempt from using smart card (CAC) authentication: 

Standalone systems
Application accounts
Temporary employee accounts, such as students or interns, who cannot easily 
receive a CAC or PIV 
Operational tactical locations that are not collocated with RAPIDS workstations
to issue CAC or ALT
Test systems, such as those with an Interim Approval to Test (IATT) and use 
a separate VPN, firewall, or security measure preventing access to network and 
system components from outside the protection boundary documented in the IATT.

If non-exempt accounts are not using CAC authentication, this is a finding.
STIG 349 CAT II
"
