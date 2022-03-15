#!/bin/bash

#Debian 10


kernel=$1
ver1=$(echo ${kernel:-$(uname -v | awk '{print $4}' | cut -d '-' -f1)} | cut -d '.' -f1)
ver2=$(echo ${kernel:-$(uname -v | awk '{print $4}' | cut -d '-' -f1)} | cut -d '.' -f2)
ver3=$(echo ${kernel:-$(uname -v | awk '{print $4}' | cut -d '-' -f1)} | cut -d '.' -f3)
echo $ver1 $ver2 $ver3


if (( ${ver1:-0} < 4 )) ||
   (( ${ver1:-0} == 4 && ${ver2:-0} == 19 && ${ver3:-0} == 232 )) ||
   (( ${ver1:-0} == 4 && ${ver2:-0} == 19 && ${ver3:-0} == 208 ));

then
    echo Not vulnerable
    exit 0
else
    echo Vulnerable
    exit 1
fi
