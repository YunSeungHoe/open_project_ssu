#!/bin/bash

w=$1
h=$2
min=18.50
max=23.00
bmi=$( echo "$w; $h; 10000" |awk '{printf "%.2f", $1/($2*$2/$3) }' )

if [[ `echo "$bmi <= $min" | bc` -eq 1 ]]
then 
	echo "저체중입니다."
elif [[ `echo "$bmi < $max" | bc` -eq 1 ]]
then
	echo "정상체중입니다."
else
	echo "과체중입니다."
fi
