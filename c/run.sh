#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	if [ -d "$SCRIPTPATH/$dir" ]
	then
		cd "$SCRIPTPATH/$dir" &&
		clang -Ofast -march=native $dir.c -o $dir &&
		echo &&
		echo "c/$dir" &&
		time ./$dir
		#echo $?
	fi
done
