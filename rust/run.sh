#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	if [ -d "$SCRIPTPATH/$dir" ]
	then
		cd "$SCRIPTPATH/$dir" &&
		rustc -O $dir.rs -o $dir &&
		echo &&
		echo "rust/$dir" &&
		time ./$dir
		#echo $?
	fi
done
