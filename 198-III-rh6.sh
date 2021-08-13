#!/bin/bash
###
# CAT III
# RHEL-06 - 198
# STIG ID's:
############################################################################


echo "STIG 198 CAT III - Manual Check
To verify that auditing of privileged command use is configured, 
run the following command once for each local partition [PART] to find 
relevant setuid / setgid programs:

for i in \`find / -path /afs -prune -o -xdev -type f -perm /6000 2>/dev/null\`
do
grep \$i /etc/audit/audit.rules
echo \$? \$i
done
"

for i in `find / -path /afs -prune -o -xdev -type f -perm /6000 2>/dev/null`
do
grep $i /etc/audit/audit.rules
echo $? $i
done

echo "
Run the following command to verify entries in the audit rules for all programs 
found with the previous command:

sudo grep path /etc/audit/audit.rules

It should be the case that all relevant setuid / setgid programs have a line in 
the audit rules. If that is not the case, this is a finding.
STIG 198 CAT III - Manual Check
"
