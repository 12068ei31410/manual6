#!/bin/bash
###
# CAT II
# RHEL-06 - 29
# STIG ID's:
############################################################################

echo "STIG 29 CAT II
To obtain a listing of all users and the contents of their shadow password field, 
run the command: 

awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow
"

awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow | cut -d: -f1 > temp-29.txt
for i in `cat temp-29.txt`
do
grep $i /etc/passwd
done

rm -f temp-29.txt

echo "
Identify the operating system accounts from this listing. These will primarily
be the accounts with UID numbers less than 500, other than root.
If any default operating system account (other than root) has a valid password hash, 
this is a finding.
STIG 29 CAT II
50297
"
