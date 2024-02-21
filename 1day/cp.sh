#! /bin/bash

read -p "file name:" name
read -p "copy name:" cpname

cp "$name" "$cpname"
