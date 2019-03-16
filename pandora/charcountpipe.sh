#!/bin/bash

sum=0

cat | while read line
      do
	  len=$(echo -n $line | wc -c)
	  sum=$(($sum+$len))
	  echo "$len : $line"
      done

echo "osszes karakter: $sum"

exit 0
