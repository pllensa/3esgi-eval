#!/usr/bin/env bash
for i in $(ls -d $1/*/)
do 
	if [ $(stat -c %a $i | awk '{print$1}' grep "r" ) -z ] then
		echo $i "are ok"
	else
		chmod +r -v $1/*/
	fi
done
