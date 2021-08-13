#!/bin/bash

# Previously, this rpm command was being run repetitively. The goal of this script is to streamline the search for faster overall scans of the machine.

rpm -Va > rpm.results

echo "
STIG 516 CAT III
The following command will list which files on the system have ownership
different from what is expected by the RPM database:

rpm -Va | grep '^.....U'
"
grep '^.....U' rpm.results
echo "
If any output is produced, verify that the changes were due to STIG application
and have been documented with the ISSO.
STIG 516 CAT III
"
echo "
STIG 517 CAT III
The following command will list which files on the system have group-ownership
different from what is expected by the RPM database

rpm -Va | grep '^......G'
"
grep '^......G' rpm.results
echo "
If any output is produced, verify that the changes were due to STIG
application and have been documented with the ISSO.
STIG 517 CAT III
"
echo "
STIG 518 CAT III
The following command will list which files and directories on the system have
permissions different from what is expected by the RPM database:

rpm -Va | grep '^.M'
"
grep '^.M' rpm.results > 518-1.results

awk '{print $2}' 518-1.results > 518-2.results
awk '{print $3}' 518-1.results >> 518-2.results

awk '/[/]/' 518-2.results > 518-3.results

sort 518-3.results | uniq | while read line;do rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:perms}\n]" `rpm -qf $line` | grep $line;done > 518-4.results

sort 518-3.results | uniq | while read line;do (echo `ls -d $line` |tr '\n' ' '; echo `stat -c '%A' $line`);done > 518-5.results

grep -vFf 518-5.results 518-4.results > 518-6.results

echo "
~~RPM DEFAULT PERMISSIONS~~~
"
cat 518-4.results
echo "
~~ACTUAL PERMISSIONS ON MACHINE~~~
"
cat 518-5.results
echo "
~~MISMATCH WITH RPM DEFAULTS~~~
"
cat 518-6.results

rm -f 518-1.results
rm -f 518-2.results
rm -f 518-3.results
rm -f 518-4.results
rm -f 518-5.results
rm -f 518-6.results

echo "
STIG 519 CAT III
The following command will list which files on the system have file hashes
different from what is expected by the RPM database.

rpm -Va | awk '$1 ~ /..5/ && $2 != 'c'
"
cat rpm.results | awk '$1 ~ /..5/ && $2 != 'c''
echo "
If any output is produced, verify that the changes were due to STIG
application and have been documented with the ISSO.
STIG 519 CAT III
"
