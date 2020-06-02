#!/bin/sh

p10user=`grep -i p10user /etc/passwd | cut -d: -f1
echo "All users with the word \"steve\" in their passwd"
echo "Entries are: $p10user"`