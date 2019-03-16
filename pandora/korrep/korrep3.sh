#!/bin/bash

cat $1 | while read line #kell egy fajl amibol olvassa a sorokat, pl egy txt, ne windowsban ird hanem pl nanoban
do
    echo "sor: $line"
done

exit 0
