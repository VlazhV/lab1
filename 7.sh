#!/bin/bash


gcc $1 -o $2 
if test $? -eq 0 
then
	./$2
else
	echo -e "\n ====================\n ERROR OF COMPILATION\n ====================\n"
fi
