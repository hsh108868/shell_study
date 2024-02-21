#! /bin/bash

read -p "file name:" name
read -p "add text:" text

echo $text >> $name
