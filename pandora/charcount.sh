#!/bin/bash

if [ $# -lt 1 ] || ![ -f $1 ]
then
    echo "Hiba">&2
    exit 1
fi

cat $1 | while read line
	 do
	     echo "$(echo -n $line | wc -c) : $line"
	 done

exit 0
