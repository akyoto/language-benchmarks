#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "$SCRIPTPATH"

for dir in *; do
	[ -d "$SCRIPTPATH/$dir" ] &&
	cd "$SCRIPTPATH/$dir" &&
	nasm -f elf64 -o $dir.o $dir.s &&
	ld --strip-all -n -o $dir $dir.o &&
	rm $dir.o &&
	echo "asm/$dir" &&
	time ./$dir
done
