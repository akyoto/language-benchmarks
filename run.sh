#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	[ -d "$SCRIPTPATH/$dir" ] &&
	[ -f "$SCRIPTPATH/$dir/run.sh" ] &&
	cd "$SCRIPTPATH/$dir" &&
	./run.sh
done
