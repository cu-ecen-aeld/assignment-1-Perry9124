#!/usr/bin/bash
writefile=$1
writestr=$2
if [ $# -lt 2 ]
then
	exit 1
fi
mkdir -p ${writefile%/*}
if touch $writefile 2> /dev/null
then
	echo $writestr > $writefile
else
	echo f**k
	exit 1
fi
