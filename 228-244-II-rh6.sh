#!/bin/bash

echo "
STIG ID 228 244 CAT II
"

echo "
Check that the SSH daemon is configured to only use MACs employing FIPS 140-2-approved ciphers with the following command:

grep -i macs /etc/ssh/sshd_config
"

grep -i macs /etc/ssh/sshd_config

"
If any ciphers other than hmac-sha2-256 or hmac-sha2-512 are listed or the returned line is commented out, this is a finding.
"

echo "
STIG ID 228 244 CAT II
"
