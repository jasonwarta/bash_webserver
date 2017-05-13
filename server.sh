#!/usr/bin/env bash

function cleanup {
	exit
}
trap cleanup SIGHUP SIGINT SIGKILL SIGTERM SIGSTOP

while true; do
	netcat -l -p 80 -e ./filehandler.sh
done