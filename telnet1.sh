#!/bin/sh
host=127.0.0.1
port=23
login=p10user
passwd=p10user
cmd="ls /tmp"

echo open ${host} ${port}
sleep 1
echo ${login}
sleep 1
echo ${passwd}
sleep 1
echo ${cmd}
sleep 1
echo exit