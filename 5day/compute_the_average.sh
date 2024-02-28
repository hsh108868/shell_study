#! /bin/bash

read n
x=0

for i in $(seq 0 $n);
do
    read j
    (( x += j ))
done

printf "%.3f\n" `echo $x / $n | bc -l`
