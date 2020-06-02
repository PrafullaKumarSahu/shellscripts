#!/bin/sh

# $0 = basename of program
# $1 ... $9 are the first 9 additional parameters the script was called with
# $@ is all parameters from $1 .. $whatever
# $* is all parameters from $1 .. $whatever, but does not preserve any whitespace and quoting
# $# is the number of parameters the script was called with
# $? exit value of last run command
# $$ variable is PID (Process IDentifier) of current shell running, This can be useful for creating temporary files, such as /tmp/my-script.$$ which is useful if many instance of the script could be run at same timme andthey all need their own temp file
# $! variable is the PID of the llast run background process. This is useful to keep track of the process as it gets on with its job
# IFS This is the Internal Field Separator, the default value is SPACE, TAB, NEWLINE, but if you are changing it,  it's easier to take a copy, refer variable2.4.sh

echo "I was called with $# parameters"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"