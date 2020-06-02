#!/bin/sh

echo -en "Please guess the magic number"
read x
echo $x | grep "[^0-9]" > /dev/null 2>&1 #grep "[0-9]" finds lines of text which contains digits (0-9), ^ makes it does not contain
if [ "$?" -eq "0" ]; then
	# If the grep found something other than 0-9
	# then it's not an integer.
	echo "Sorry, wanted a number"
else
	# The grep found only 0-9, so it's an integer
	# We can safely do a test on it.
	if [ "$x" -eq "7" ]; then #Check if given number is 7 or not
		echo "You entered the magic number!"
	fi
fi