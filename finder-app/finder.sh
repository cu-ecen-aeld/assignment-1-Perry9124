#!/bin/bash
filedir=$1
searchstr=$2
if [ $# -lt 2 ]
then
	exit 1
fi
if [ ! -d $filedir ]
then
	exit 1
else
	X=`find $filedir -type f | wc -l` 
	Y=`find $filedir -type f -name "$searchstr" | wc -l` 
	echo The number of files are $X and the number of matching lines are $Y
fi
