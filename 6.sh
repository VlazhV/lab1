#!/bin/bash


if test $# -ne 3 
then
	echo -e "Command file dir ext\n file - file to output\n dir - directory for search\n ext - extension for search"

elif test -d $2 && test -f $1
then
	find $2 -maxdepth 1 -name "*.$3"  | sort > $1
else
	echo "Error: the first param is not a file or the second param is not a directory" >&2	
fi
