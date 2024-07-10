#!/bin/bash

writefile=$1
writestr=$2

if [[ -z $writefile|| -z $writestr ]]; then
    echo "Invalid parameters"
    exit 1
fi 

mkdir -p "$(dirname "$writefile")"
echo $writestr > $writefile

exit 0


