#!/bin/bash

echo "
STIG 10 CAT I
"

echo "
Verify the version of the operating system is vendor supported.

Check the version of the operating system with the following command:

cat /etc/redhat-release
"

cat /etc/redhat-release

echo "
Red Hat Enterprise Linux Server release 6.10 (Santiago)

Current end of maintenance support for RHEL 6.10 is 30 November 2020.

If the release is not supported by the vendor, this is a finding.

Note: RHEL ELS is available for RHEL 6.10 with a proposed end of support 30 June 2024.
"

echo "
STIG 10 CAT I
"
