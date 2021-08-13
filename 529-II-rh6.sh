#!/bin/bash
###
# CAT II
# RHEL-06 - 529
# STIG ID's:
############################################################################

echo "STIG 529 CAT II
If passwords are not being used for authentication, this is Not Applicable.

egrep '^[^#]*NOPASSWD' /etc/sudoers /etc/sudoers.d/* 
"

egrep '^[^#]*NOPASSWD' /etc/sudoers /etc/sudoers.d/* 

echo "
egrep '^[^#]*!authenticate' /etc/sudoers /etc/sudoers.d/*
"

egrep '^[^#]*!authenticate' /etc/sudoers /etc/sudoers.d/* 

echo "
If the 'NOPASSWD' or '!authenticate' options are configured for use in '/etc/sudoers'
or associated files, this is a finding.
STIG 529 CAT II
"
