#!/bin/bash

#uname -v | awk '{print $5}' | cut -d '-' -f1
ver1=$(echo $(uname -v | awk '{print $5}' | cut -d '-' -f1) | cut -d '.' -f1)
ver2=$(echo $(uname -v | awk '{print $5}' | cut -d '-' -f1) | cut -d '.' -f2)
ver3=$(echo $(uname -v | awk '{print $5}' | cut -d '-' -f1) | cut -d '.' -f3)
echo $ver1 $ver2 $ver3



if (( ${ver1:-0} < 5 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} < 8 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} == 10 && ${ver3:-0} == 102 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} == 10 && ${ver3:-0} == 92 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} == 15 && ${ver3:-0} == 25 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} >= 16 && ${ver3:-0} >= 11 )) ||
   (( ${ver1:-0} == 5 && ${ver2:-0} > 16 ));
then
    echo Not vulnerable
    exit 0
else
    echo Vulnerable
    exit 1
fi