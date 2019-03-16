#!/bin/bash

#zárt intervallumon lévő egész számok minimuma
if [ $# -lt 2 ] || [ $1 -lt $2 ]
then
    echo "Hiba.">&2
    exit 1
fi

if [ $1 -lt $2 ]
then
    echo $1
else
    echo $2
fi

exit 0
