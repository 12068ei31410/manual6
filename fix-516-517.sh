#!/bin/bash

grep '^.....U' rpm.results | awk '{print $2}' > 516-517-1.results
grep '^.....U' rpm.results | awk '{print $3}' >> 516-517-1.results
grep '^......G' rpm.results | awk '{print $2}' >> 516-517-1.results
grep '^......G' rpm.results | awk '{print $3}' >> 516-517-1.results

awk '/[/]/' 516-517-1.results | while read line;do rpm -qf $line;done > 516-517-2.results

sort 516-517-2.results | uniq | while read line;do rpm --setugids $line;done

rm -f 516-517-1.results
rm -f 516-517-2.results
