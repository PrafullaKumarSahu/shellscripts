#!/bin/sh

# Not working

HTML_FILES=`find / -name "*.html" -print`
echo "$HTML_FILES" | grep "demo.html$"
echo "$HTML_FILES" | grep "demo2.html$"