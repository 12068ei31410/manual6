#!/bin/bash
###
# CAT III
# RHEL-06 - 25
# STIG ID's:
############################################################################

echo "STIG 25 CAT III
To check for unlabeled device files, run the following command:

ls -RZ /dev | grep unlabeled_t
"

ls -RZ /dev | grep unlabeled_t

echo "
It should produce no output in a well-configured system.
If there is output, this is a finding.
STIG 25 CAT III
65589
"
