#!/bin/bash
str="hello world"
count=$1
if [ $# -eq 0 ] ; then
	count=10
fi

for (( i=0; i<${count}; i++ ))
do
	echo ${str}
done
