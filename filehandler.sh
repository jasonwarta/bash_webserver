#!/usr/bin/env bash

read -r line
#echo "$line" >> requests.txt
line=$(sed 's,^GET \(.*\) HTTP/1.1.*,\1,;s,\.\.,,g'<<<$line)

if [ "$line" == "/" ]; then
#	echo "index.html" >> files.txt
	cat ./content/index.html
else
	fname="./content$line"
#	echo "$fname" >> files.txt
	cat $fname
fi