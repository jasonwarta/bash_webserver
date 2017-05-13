#!/usr/bin/env bash

read -r line
echo "$line" >> requests.txt
line=$(sed 's,^GET \(.*\) HTTP/1.1.*,\1,;s,\.\.,,g'<<<$line)

if [ "$line" == "/" ]; then
	echo "index.html" >> files.txt
	cat index.html
else
	fname=".$line"
	echo "$fname" >> files.txt
	cat $fname
fi