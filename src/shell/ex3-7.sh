#!/bin/bash

if [ ! -d $1 ]
then
	mkdir $1 
fi

for i in {0..4}
do 
	mkdir -m 775 $1/file$i
	touch $1/file$i.txt
	ln -s file$i.txt $1/file$i/file$i.txt
done

