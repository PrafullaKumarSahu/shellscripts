#!/bin/sh

# sed and awk can be used as mini - programming language in their own right
# whilst this means that system has to load a largish executable (52k for sed and 110k for awk),
# which is a nasty thing to do, 
# the reason a good workman does not blame his tools, is that a good workman uses the right tools in the first place


#Cheating with awk

# wc - Counts the number of characters, lines and words in a text file. Its output is:
# wc hex2env.c - 102 189 2306 hex2env.c
# If we want to get the number of lines into a variable, simple using
NO_LINES=`wc -l demo.txt`
echo $NO_LINES
# Which would read in the whole line
# Because the output is space-padded, we can not reliably get the number 102 into the string.
# Instead, we use the fact that awk works similarly to scanf in C - it strips unwanted whitespace.
# It puts these into varaibles $1 $2 $3 etc, so we can use this construct
NO_LINES=`wc -l demo.txt | awk '{ print $1 }'`
# The variable NO_LINES is now 102
echo $NO_LINES
