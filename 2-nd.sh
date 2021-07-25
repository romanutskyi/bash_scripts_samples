#!/bin/bash

count=10
symbols='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVYXWZ~#$&_+-=/\'
for (( i = 1; i <= count; i++ ))
do
#Generating random filenamename 
    printf -v num %02d $i
   	randomString=$( dd if=/dev/urandom bs=15 count=1 | tr -dc 'a-zA-Z0-9' );
	fileName=$randomString"_$num.txt"  
	
#Fill the empty file with 1000 random symbols
	count_symbols=${#symbols}
	(( length = RANDOM % 1 + 999 ))
	randomSymbols=""
	for n in $(seq 1 $length) ; 
		do
       		 randomSymbols+=${symbols:RANDOM % count_symbols:1}
		done
	
echo "$randomSymbols" > $fileName

done
