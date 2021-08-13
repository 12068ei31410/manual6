#!/bin/bash

echo "
STIG 21

Verify there are no .shosts or shosts.equiv files on the system.

find / -name '*.shosts' ; find / -name shosts.equiv
"

find / -path /afs -prune -name '*.shosts' ; find / -path /afs -prune -name shosts.equiv

echo "
If any .shosts or shosts.equiv files are found on the system, this is a finding.

STIG 21
"
