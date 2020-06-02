#!/bin/sh

foo=sun
# echo $fooshine # $fooshine is undefined
echo ${foo}shine # Display thee world "sunshine"

# Default values
# The backtick is used to indicate that the enclosed text is to be executed as a command.
# whoami = Current System user
# Passing the "-en" to echo tells it not to add a linebreak (for bash and csh)
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"