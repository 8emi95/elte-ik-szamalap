#!/bin/bash

if [ $# -lt 1 ] || [ ! -f $1 ]
then
    echo "Hiba. Kell egy parameter, ami fajl." >&2
    exit 1
fi

cat $1 | while read line
	 do
	     sum=0
	     for i in $line
	     do
		 sum=$(($sum + $i))
		 if [ $sum -gt 45 ] #ketjegyunel 45-nel tobb az osszeg
		 then
		     echo "Nem lehet ketjegyu szam.">&2
		     exit 2
		 fi
		 echo $line | sed 's/ //g' | grep -q [^1-9]
		 if [ $? = 0 ]
		 then
		     echo "Csak szamokat tartalmazhat 1-tok 9-ig.">&2
		     exit 3
		 fi
		 count=$(echo -n $line | sed 's/ //g' | wc -c) #szokozok nelkul a hossznak 9-nek kell lennie
		 if [ $count -lt 9 ]
		 then
		     echo "Kilenc darab szam kell minden sorba es oszlopba.">&2
		     exit 4
		 fi
		 duplicate=$(echo -n $line | xargs -n1 | sort -u | xargs | sed 's/ //g' | wc -c)
		 if [ $duplicate -lt 10 ] #sorba allitva, dupla elemet torolve a hossznak 10-nek kell lennie (enter)
		 then
		     echo "Nem fordulhat elo egy sorban ketszer ugyanaz a szam.">&2
		     exit 5
		 fi
	     done
	 done
exit 0
