#!/bin/sh

# A function may return a value in one of 4 diifferent ways
## Change the state of a variable or variables
## User the exit command to end the shell script
## User the return command to end the function, and return the supplied value to the calling section of the shell script
## echo output to stdout, which will becaught by the caller just c=`expr $a + $b` is caught

# A simple function
add_a_user()
{
	USER=$1
	PASSWORD=$2
	shift; shift;
	
	#Having shifted twice, the rest now comments ...
	COMMENTS=$@
	echo "Adding user $USER .."
	echo useradd -c "$COMMENTS" $USER
	echo passwd $USER $PASSWORD
	echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}


# Main body of the script
echo "Start of script .."
add_a_user bob letmein  Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Sgt Bilko the role model
echo "End of script..."