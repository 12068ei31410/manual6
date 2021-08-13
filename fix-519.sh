#!/bin/bash

cat rpm.results | awk '$1 ~ /..5/ && $2 != 'c'' | awk '{print $2}' > 519-1.results
cat rpm.results | awk '$1 ~ /..5/ && $2 != 'c'' | awk '{print $3}' >> 519-1.results

awk '/[/]/' 519-1.results | while read line;do rpm -qf $line;done > 519-2.results

#sort 519-2.results | uniq | while read line;do yum reinstall $line;done
