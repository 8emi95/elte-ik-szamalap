#!/bin/bash

if [ $# -lt 1 ] || ! [ -f $1 ]
then
    echo "Hiba..." >&2
    exit 1
fi

arak=$(cat $1 |cut -f2 -d",")
sum=0

for i in $arak
do
    sum=$(($sum + $i))
    echo $sum	
done < $1
echo $sum

exit 0
