#!/bin/sh
cp /tmp/a* /tmp/b/ #Copy all files from /tmp/a into /tmp/b
cp /tmp/a/*.txt /tmp/b/ #Copy all txt files from /tmp/a into /tmp/b
cp /tmp/a/* .html /tmp/b/

#List out all files in /tmp/a/
ls /tmp/a/
echo /tmp/a/* #Try the observe the differences

#Rename all .txt files to .bak file
mv *.txt *.bak
