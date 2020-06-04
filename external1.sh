#!/bin/sh

MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5` # `....` represents command to be executed 
echo ${MYNAME}