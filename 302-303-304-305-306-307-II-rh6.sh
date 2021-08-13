#!/bin/bash
###
# CAT II
# RHEL-06 V1R16 - 302
# STIG ID's:
############################################################################

echo "STIG 302,303,304,305,306,307 CAT II
To determine that periodic AIDE execution has been scheduled, run the following command: 

grep aide /etc/crontab /etc/cron.*/*
"

grep aide /etc/crontab /etc/cron.*/*

echo "
If there is no output or if aide is not run at least weekly, this is a finding.
STIG 302,303,304,305,306,307 CAT II
"
