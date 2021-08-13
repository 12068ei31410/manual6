#!/bin/bash
###
# CAT II
# RHEL-06 - 278
# STIG ID's:
############################################################################

echo "STIG 278 CAT II
The following command will list which audit files on the system have permissions 
different from what is expected by the RPM database: 

rpm -V audit | grep '^.M'
"

rpm -V audit | grep '^.M'

echo "
If there is any output, for each file or directory found, compare the 
RPM-expected permissions with the permissions on the file or directory:

rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:perms}\n]" audit | grep [filename]
ls -lL [filename]

If the existing permissions are more permissive than those expected by RPM, this is a finding.
STIG 278 CAT II
"
