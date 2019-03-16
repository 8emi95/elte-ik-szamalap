#!/bin/bash

if [ $# -lt 2 ] || ![ -f $1 ]
then
    echo "Ketto parameter kell, az elso parameter az adatbazis file legyen." >&2
    exit 1
fi

cat $1 | grep $2

exit 0
