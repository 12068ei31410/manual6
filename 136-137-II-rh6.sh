#!/bin/bash
###
# CAT II
# RHEL-06 - 136 137
# STIG ID's:
############################################################################


echo "STIG 136 137 CAT II
Rule Title: The operating system must back up audit records on an 
organization defined frequency onto a different system or media than the 
system being audited.

grep @ /etc/rsyslog.conf

Results:
"

grep @ /etc/rsyslog.conf

echo "
Check Text: To ensure logs are sent to a remote host, examine the file 
\"/etc/rsyslog.conf\". If using UDP, a line similar to the following should 
be present: 

*.* @[loghost.example.com]

If using TCP, a line similar to the following should be present: 

*.* @@[loghost.example.com]

STIG 136 137 CAT II
50321 50322
"
