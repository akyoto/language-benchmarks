#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	if [ -d "$SCRIPTPATH/$dir" ]
	then
		cd "$SCRIPTPATH/$dir" &&
		q build &&
		echo &&
		echo "q/$dir" &&
		time ./$dir
		#echo $?
	fi
done
