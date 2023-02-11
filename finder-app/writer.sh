writefile=$1
writestr=$2
if [ $# -lt 2 ]
then
	exit 1
fi
if touch $writefile 2> /dev/null
then
	cat $writestr > $writefile
else
	exit 1
fi
