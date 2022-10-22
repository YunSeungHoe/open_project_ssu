#!/bin/bash

if [ ! -d $1 ];
then 
	mkdir -p $1
fi

eval "cd $1"
for i in {0..4}
do
	eval "touch 'file$i.txt'"
done 

eval "tar cf $1'.tar' *"
ls
eval "mkdir $1"

eval "tar xvf $1.tar -C ./$1"

mv $1.tar $1 

exit 0
