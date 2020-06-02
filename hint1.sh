#!/bin/sh

p10user=`grep -i p10user /etc/passwd | cut -d: -f1`
echo "All users with the word \"p10user\" in their passwd"
echo "Entries are: "
echo "$p10user" | tr ' ' '\012' # tr translated the spaces into octal character 012 (NEWLINE)

# Another use of tr is its use of range ...it can convert text to upper or lower case.
echo "$p10user" | tr ' ' '\012' | tr '[a-z]' '[A-Z]'
echo "$p10user" | tr ' ' '\012' | tr '[:lower:]' '[:upper:]'