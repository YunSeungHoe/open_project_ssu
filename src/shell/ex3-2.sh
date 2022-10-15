#!/bin/bash
if [ $2 == '+' ] ; then
	let add=$1+$3
	echo $add
fi
if [ $2 == '-' ] ; then
	let div=$1-$3
	echo $div
fi
