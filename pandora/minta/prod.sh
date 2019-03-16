#!/bin/bash

if [ $# -lt 2 ] || [ $2 -lt $1 ]
then
    echo "Hianyzo parameterek/Hibas parameterek." >&2
    exit 1
fi

prod=1
for i in $(seq $1 $2)
do
    prod=$(($prod*$i))
done
echo $prod

exit 0
