#!/usr/bin/env bash

# a faire par logrotate et cron
# sinon gros deg en reposant sur la conversion en epoch des dates
for i in $(cat $(pwd)/change-droit.log); do
	if [ $($(( ($(date --iso +%s) - $(date --date=$(awk '{print$1}') +%s )) /(60*60*24)))) > 7  ] then
    head -n 1 > change-droit.archive.log
    sed -i '0d' change-droit.log
  fi

for i in $(cat $(pwd)/change-droit.archive.log); do
	if [ $($(( ($(date --iso +%s) - $(date --date=$(awk '{print$1}') +%s )) /(60*60*24)))) > 90  ] then
    sed -i '0d' change-droit.log
  fi
