#!/bin/bash

count=0

cd $1
for file1 in *
do
	cd $2
	for file2 in *
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
