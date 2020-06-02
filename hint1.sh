#!/bin/sh

p10user=`grep -i p10user /etc/passwd | cut -d: -f1`
echo "All users with the word \"p10user\" in their passwd"
echo "Entries are: "
echo "$p10user" | tr ' ' '\012'