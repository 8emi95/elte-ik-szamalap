#!/bin/bash

if [ $# -lt 2 ]
then
    echo "A program ket parametert var." >&2
    exit 1
fi

if [ $1 -ge $2 ]
then
    echo "A masodiknak nagyobbnak kell lennie az elsonel." >&2
    exit 2
fi

exit 0
