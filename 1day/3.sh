#! /bin/bash

read -p "file name:" name

if find . -maxdepth 1 -name "$name" | grep -q .; then
	echo "The file exists."
else
	echo "The file does not exist."
fi
