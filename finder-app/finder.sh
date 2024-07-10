#!/bin/bash

filesdir=$1
searchstr=$2

if [[ -z $filesdir || -z $searchstr ]]; then
    echo "Invalid parameters"
    exit 1
fi 

if [ ! -d "$filesdir" ]; then
    echo "$filesdir is not a directory"
    exit 1
fi


X=`find $filesdir -type f |wc -l`
Y=`grep $searchstr -r $filesdir -n |wc -l`
echo "The number of files are $X and the number of matching lines are $Y"

exit 0
