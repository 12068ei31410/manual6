#!/bin/bash
###
# CAT III
# RHEL-06 - 339
# STIG ID's:
############################################################################

echo "STIG 339 CAT III
If vsftpd is started by xinetd the following command will indicate the 
xinetd.d startup file. 

grep vsftpd /etc/xinetd.d/*
"

grep vsftpd /etc/xinetd.d/*

echo "
If vsftpd isn't present this isn't a finding.
STIG 339 CAT III
"
