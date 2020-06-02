#!/bin/sh

x=0
while [ -n "$x" ]
do
	echo "Enter some text (RETURN to quit)"
	read x
	if [ -n "$x" ]; then
		echo "You said: $x"
	fi
done