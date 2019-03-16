#!/bin/bash

if [ $# -lt 2 ]
then
    echo -n "Mit masoljak? "
    read -e masolando
    echo -n "Hova masoljam? "
    read -e celUtvonal
else
    masolando=$1
    celUtvonal=$2
fi

if [ ! -f $masolando ]
then
    echo "Nem file..." >&2 #>/dev/null
    exit 11 #0 hibatlan futasnal
fi

echo $celUtvonal | grep "/$" > /dev/null #mappaba akarunk masolni, /-rel kell végződnie, #$ elso karakter hatulrol /-e
isDirectoryFormat=$? #jo-e v nem, mappa-e ahova masolunk

if [ $isDirectoryFormat -eq 0 ]
then
    if [ -d $celUtvonal ]
    then
	cp $masolando $celUtvonal
	exit $?
    else
	echo "Ez nem mappa." >&2
	exit 12
    fi    
fi

if [ -f $celUtvonal ]
then
    echo -n "$celUtvonal mar letezik.\n Felulirod? (y/n) "
    read response
    case $response in
	[yY]) #y-ra es Y-ra is lefut
	    echo "Oke. Te tudod..."
	    cp $masolando $celUtvonal
	    exit $?;; #agat elvalasztunk, kilepunk belole
	*)
	    echo "Rendben."
	    exit 13;;
    esac
else
    cp $masolando $celUtvonal
fi

exit 0;
