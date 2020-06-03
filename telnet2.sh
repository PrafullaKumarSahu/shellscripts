#!/bin/sh

#telnet2.sh | telnet > TELNETFILE
host=127.0.0.1
port=23
login=p10user
passwd=p10user
cmd="ls /tmp"
timeout=3
file=telnetfile
prompt="$"

echo open ${host} ${port}
sleep 1
tout=${timeout}
while [ "${tout}" -ge 0 ]
do
	if tail -1 "${file}" 2>/dev/null | egrep -e "login:" > /dev/null
	then
		echo "${login}"
		sleep 1
		tout=5
		continue
	else
		sleep 1
		tout=`expr ${tout} - 1`
	fi
done

if [ "${tout}" -ne "-5" ]; then
	exit 1
fi

tout=${timeout}
while [ "${tout}" -ge 0 ]
do
	if tail -1 "${file}" 2>/dev/null | egrep -e "Password:" > /dev/n
ull
	then
		echo "${passwd}"
		sleep 1
		tout=-5
		continue
	else
		if tail -1 "${file}" 2>/dev/null | egrep -e "${prompt}" > /dev/null
		then
			tout=-5
		else
			sleep 1
			tout=`expr ${tout} - 1`
		fi
	fi
done

if [ "${tout}" -ne "-5" ]; then
	exit 1
fi

> ${file}

echo ${cmd}
sleep 1
echo exit

# the output is grabbed to file1, and that this file is actually used by the script to check on its progress.
# I have added "> ${file}" so that the output received into the file is just the output of the command, not the logging-in process too. 