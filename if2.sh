#!/bin/sh
echo "Enter a number"
read x
if [ "$x" -lt "0" ]
then
	echo "Number is less than Zero."
fi
if [ "$x" -gt "0" ]
then
	echo "Number is greather than Zero."
fi

[ "$x" -le "0" ] && \
	echo "Number is less than or equal to Zero."
[ "$x" -ge "0" ] && \
	echo "Number is greater than or equal to Zero."
[ "$x" = "0" ] && \
	echo "Number is equal to Zero."
[ "$x" = "some string" ] && \
	echo "You have entered a string matching some string."
[ -n "$x" ] && \
	echo "Number is of non Zero length."
[ -f "$x" ] && \
	echo "You have entered path of a real file" || \
	echo "No such file: $x"
[ -x "$x" ] && \
	echo "This is the path of an executable file"
[ "$x" -nt "/etc/passwd" ] && \
	echo "is a file which is newer than /etc/passwd."
	
#-a, -e means file exists
# -S file is a socket
#-nt file is newer than
#-ot file is older than
#-ef paths refer to same file
#-0 file owned by the user