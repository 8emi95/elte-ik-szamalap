#!/bin/bash

mappa="./"
if [ $# -ge 1 ] && [ -d $1 ]
then
    mappa=$1
fi

for i in $(ls $mappa) #atadjuk a mappat
do
    echo "$i: $(echo -n $i | wc -c)" #idezojel kozott kiertekel
done

exit 0
