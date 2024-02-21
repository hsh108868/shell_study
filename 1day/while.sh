#! /bin/bash


until [ $i -gt 5 ]; do
	echo "Welcome $i times"
	i=$((i+1))
done

