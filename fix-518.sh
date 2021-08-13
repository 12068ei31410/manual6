#!/bin/bash

grep '^.M' rpm.results > 518-1.results

awk '{print $2}' 518-1.results > 518-2.results
awk '{print $3}' 518-1.results >> 518-2.results

awk '/[/]/' 518-2.results > 518-3.results

sort 518-3.results | uniq | while read line;do rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:perms}\n]" `rpm -qf $line` | grep $line;done > 518-4.results

sort 518-3.results | uniq | while read line;do (echo `ls -d $line` |tr '\n' ' '; echo `stat -c '%A' $line`);done > 518-5.results

grep -vFf 518-5.results 518-4.results > 518-6.results

awk '{print $1}' 518-6.results | while read line;do rpm -qf $line;done > 518-7.results

cat 518-7.results | while read line;do rpm --setperms $line;done

rm -f 518-1.results
rm -f 518-2.results
rm -f 518-3.results
rm -f 518-4.results
rm -f 518-5.results
rm -f 518-6.results
rm -f 518-7.results
