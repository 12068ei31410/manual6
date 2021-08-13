#!/bin/bash

src='/usr/local/etc/stig/scripts'
date=`date +%Y%m%d`
host=`hostname -s`

rm -f $src/${host}*.results

cat $src/9-III.results  >> ${host}-${date}.results
cat $src/11-II.results  >> ${host}-${date}.results
cat $src/18-II.results  >> ${host}-${date}.results
cat $src/21-I.results >> ${host}-${date}.results
cat $src/25-III.results >> ${host}-${date}.results
cat $src/29-II.results  >> ${host}-${date}.results
cat $src/45-II.results  >> ${host}-${date}.results
cat $src/46-II.results  >> ${host}-${date}.results
cat $src/55-II.results  >> ${host}-${date}.results
cat $src/73-II.results  >> ${host}-${date}.results
cat $src/78-II.results  >> ${host}-${date}.results
cat $src/79-II.results  >> ${host}-${date}.results
cat $src/103-106-107-II.results  >> ${host}-${date}.results
cat $src/116-II.results  >> ${host}-${date}.results
cat $src/120-II.results  >> ${host}-${date}.results
cat $src/134-II.results  >> ${host}-${date}.results
cat $src/135-II.results  >> ${host}-${date}.results
cat $src/136-137-II.results  >> ${host}-${date}.results
cat $src/138-III.results  >> ${host}-${date}.results
cat $src/145-148-154-II.results  >> ${host}-${date}.results
cat $src/161-II.results  >> ${host}-${date}.results
cat $src/182-III.results  >> ${host}-${date}.results
cat $src/197-III.results  >> ${host}-${date}.results
cat $src/198-III.results  >> ${host}-${date}.results
cat $src/223-II.results  >> ${host}-${date}.results
cat $src/228-244-II.results >> ${host}-${date}.results
cat $src/243-II.results  >> ${host}-${date}.results
cat $src/269-II.results  >> ${host}-${date}.results
cat $src/270-II.results  >> ${host}-${date}.results
cat $src/271-III.results  >> ${host}-${date}.results
cat $src/273-III.results  >> ${host}-${date}.results
cat $src/275-276-277-III.results  >> ${host}-${date}.results
cat $src/278-II.results  >> ${host}-${date}.results
cat $src/279-II.results  >> ${host}-${date}.results
cat $src/280-II.results  >> ${host}-${date}.results
cat $src/281-II.results  >> ${host}-${date}.results
cat $src/282-II.results  >> ${host}-${date}.results
cat $src/285-II.results  >> ${host}-${date}.results
cat $src/293-II.results  >> ${host}-${date}.results
cat $src/294-III.results  >> ${host}-${date}.results
cat $src/296-III.results  >> ${host}-${date}.results
cat $src/297-III.results  >> ${host}-${date}.results
cat $src/298-III.results  >> ${host}-${date}.results
cat $src/302-303-304-305-306-307-II.results  >> ${host}-${date}.results
cat $src/311-II.results  >> ${host}-${date}.results
cat $src/315-II.results  >> ${host}-${date}.results
cat $src/320-II.results  >> ${host}-${date}.results
cat $src/324-326-II.results  >> ${host}-${date}.results
cat $src/336-III.results  >> ${host}-${date}.results
cat $src/337-III.results  >> ${host}-${date}.results
cat $src/339-III.results  >> ${host}-${date}.results
cat $src/340-II.results  >> ${host}-${date}.results
cat $src/341-I.results  >> ${host}-${date}.results
cat $src/347-II.results  >> ${host}-${date}.results
cat $src/348-II.results  >> ${host}-${date}.results
cat $src/349-II.results  >> ${host}-${date}.results
cat $src/385-II.results  >> ${host}-${date}.results
cat $src/504-II.results  >> ${host}-${date}.results
cat $src/505-II.results  >> ${host}-${date}.results
cat $src/507-II.results  >> ${host}-${date}.results
cat $src/508-527-II.results  >> ${host}-${date}.results
cat $src/509-III.results  >> ${host}-${date}.results
cat $src/510-II.results  >> ${host}-${date}.results
cat $src/511-II.results  >> ${host}-${date}.results
cat $src/515-III.results  >> ${host}-${date}.results
cat $src/516-517-518-519-III.results >> ${host}-${date}.results
cat $src/521-II.results  >> ${host}-${date}.results
cat $src/522-II.results  >> ${host}-${date}.results
cat $src/523-II.results  >> ${host}-${date}.results
cat $src/528-II.results  >> ${host}-${date}.results
cat $src/529-II.results  >> ${host}-${date}.results
cat $src/533-II.results  >> ${host}-${date}.results
cat $src/534-I.results >> ${host}-${date}.results
