#!/usr/bin/env bash
ls -ld $PWD/*/ | awk '$1 !~/r/{print$NF}' >> to-change.log
for i in $(cat to-change.log)
do
  output_date=$(date --iso)
	output_change=$(chmod +r -v $i)
  echo "$output_date $output_change" >> change-droit.log
done
rm to-change.log
