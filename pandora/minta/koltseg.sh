#!/bin/bash

if [ $# -lt 1 ] || ! [ -f $1 ]
then
    echo "Hiba..." >&2
    exit 1
fi

sum=0

while read line
do
    sum=$(($sum + $(echo $line | cut -f2 -d",")))
    #echo $sum
done < $1

echo $sum

exit 0
