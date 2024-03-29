#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	if [ -d "$SCRIPTPATH/$dir" ]
	then
		cd "$SCRIPTPATH/$dir" &&
		go build &&
		echo &&
		echo "go/$dir" &&
		time ./$dir
		#echo $?
	fi
done
