#!/bin/bash


gcc $1 -o $2 && ./$2 && exit
echo -e "\n ====================\n ERROR OF COMPILATION\n ====================\n"

