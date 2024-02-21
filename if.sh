#! /bin/bash

a=3
b=4

if [ $a -gt $b ]; then
	echo "$a is greater than $b"
elif [ $a -eq $b ]; then
	echo "$a is equal to $b"
else
	echo "$a is less than $b"
fi
