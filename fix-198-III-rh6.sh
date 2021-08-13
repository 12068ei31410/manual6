#!/bin/sh

for fs in $(awk '($3 ~ /(ext[234])|(xfs)/) {print $2}' /proc/mounts) ; do
    find $fs -xdev -type f \( -perm -4000 -o -perm -2000 \) | awk '{print "-a always,exit -F path=" $1 " -F perm=x -k privileged" }' >> /etc/audit/rules.d/audit.rules
done
