#!/bin/sh

#Accepts variables more than 9
while [ "$#" -gt "0" ]
do
	echo "\$1 is $1"
	shift
done