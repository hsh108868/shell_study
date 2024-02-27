#! /bin/bash

read cond

if [ $cond == "y" ] || [ $cond == "Y" ];
then
    echo "YES"
elif [ $cond == "n" ] || [ $cond == "N" ];
then
    echo "NO"
fi
