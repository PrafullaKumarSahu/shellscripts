#!/bin/sh

x=0
while [ -n "$x" ]
do
	echo "Enter some text (RETURN to quit)"
	read x
	echo "You said: $x"
done