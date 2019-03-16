#!/bin/bash

if [ $# -lt 2 ] || ! [ -f $1 ]
then
    echo "Hiba.">&2
    exit 1
fi

sum=0

while read line
do
    sum=$(($sum + $(echo $line | cut -f3 -d",")))
done < $1

if [ $2 -lt $sum ]
then
    echo "Apuveddmeg!">&2
    exit 2
else
    echo "Indulhat a shopping!"
fi

exit 0
