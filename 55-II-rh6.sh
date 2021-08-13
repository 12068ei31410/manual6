#!/bin/bash
###
# CAT II
# RHEL-06 - 55
# STIG ID's:
############################################################################

echo "STIG 55 CAT II
Obtain a list of approved system and application accounts from the ISSO.
For each system and application account identified, run the following command:

for i in \`awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 \":\" $2}' /etc/shadow | cut -d\":\" -f1\`
do 
   echo \$i
   chage -l \$i
   echo
done
"

for i in `awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow | cut -d":" -f1`
do 
   echo $i
   chage -l $i
   echo
done


echo "
If \"Maximum number of days between password change\" is greater than \"365\", this is a finding.
If the date of \"Last password change\" exceeds 365 days, this is a finding.
If the date of \"Password expires\" is greater than 365 days from the date of \"Last password change\", this is a finding.
STIG 55 CAT II
"
