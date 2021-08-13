#!/bin/bash

echo "
STIG 534

If the kernel command line is configured to use FIPS mode, use the following command to verify the system is in FIPS mode::

cat /proc/sys/crypto/fips_enabled 
"

cat /proc/sys/crypto/fips_enabled 

echo "
If a dracut-fips package is not installed, the kernel command line does not have a fips entry, or the system has a value of 0 for fips_enabled in /proc/sys/crypto, this is a finding.

STIG 534
"
