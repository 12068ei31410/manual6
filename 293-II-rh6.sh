#!/bin/bash
###
# CAT II
# RHEL-06 - 293
# STIG ID's:
############################################################################


echo "STIG 293 CAT II
This is N/A for systems that do not have wireless network adapters.

Verify that there are no wireless interfaces configured on the system:

ifconfig -a
"

ifconfig -a

echo "
If a wireless interface is configured, it must be documented and approved 
by the local Authorizing Official.

If a wireless interface is configured and has not been documented and approved, 
this is a finding.
STIG 293 CAT II
"
