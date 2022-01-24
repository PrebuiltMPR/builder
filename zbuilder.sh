#! /bin/bash

if test -z "$1";
then
    echo "ERROR: pls specify a software to build!"
    exit 1
fi
git clone https://mpr.makedeb.org/$1.git ~/source

cd ~/source
zabuilder.sh "$1" --container
