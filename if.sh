#!/bin/sh

# $ type [
# [ is a shell builtin
# $which [
# /usr/bin/[
# ls -l /usr/bin/[
# -rwxr-xr-x 1 root root 51384 Jan 18  2018 '/usr/bin/['
# ls -l /usr/bin/test
# -rwxr-xr-x 1 root root 47288 Jan 18  2018 /usr/bin/test

# `[` is actually a program, just like ls, so it must be sorounded by space
echo "What is foo? bar or baz?"
read foo
if [ "$foo" = "bar" ]; then
	echo "Foo is bar."
elif [ "$foo" = "baz" ]; then
	echo "Foo is baz."
else
	echo "Foo is not bar or baz."
fi