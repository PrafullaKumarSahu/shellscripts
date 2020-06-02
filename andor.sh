#!/bin/sh
[ $x -ne 0 ] && echo "X is not zero" || echo "X is Zero."
[ -f $x ] && echo "X is a file" || echo "X is not a file"
[ -n $x ] && echo "X is of non-zero length" || \
	echo "X is of zero length"