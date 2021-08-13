#!/bin/sh

for i in `grep /var/log/ /etc/rsyslog.conf`
do
  if [[ $i == "/var/log"* ]]; then
    if [ ! -e $i ]; then
      break
    fi
  chown root:root $i
  chmod 0600 $i
  fi
done
