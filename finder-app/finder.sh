#!/usr/bin/bash
filedir=$1
searchstr=$2
if [ $# -lt 2 ]
then
	exit 1
fi
if [ -d $filedir ]
then
	X=`find $filedir -type f | wc -l`
        Y=`grep -r $filedir -e $searchstr | wc -l`
        echo "The number of files are $X and the number of matching lines are $Y"
else
	echo no directory
	exit 1
fi
