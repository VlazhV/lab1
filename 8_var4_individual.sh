#!/bin/bash

count=0

for file1 in $1/*
do
	for file2 in $2/*
	do
		if cmp -c -s $file1 $file2
		then
			echo -e "$file1 == $file2"
		fi
	done
	let count++
done

for file2 in *
do
	let count++
done

echo "count = $count"
