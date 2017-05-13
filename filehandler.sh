#!/usr/bin/env bash

read -r line
line=$(sed 's,^GET \(.*\) HTTP/1.1.*,\1,'<<<$line)

if [ "$line" == "/" ]; then
	cat index.html
else
	fname=".$line"
	cat $fname
fi