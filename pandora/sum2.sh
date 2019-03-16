#!/bin/bash

if [ $# -lt 2 ] || [ $2 -lt $1 ]
then
    echo "Hiba" >&2
    exit 1
fi

sum=0

for((i=$1;i<=$2;++i))
do
    sum=$((sum+$i))
done

echo $sum

exit 0
