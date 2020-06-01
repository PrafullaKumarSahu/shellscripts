#!/bin/sh
#Not working
while read url
do
	curl  "$url" >> example.net.html
done < example_urls.txt

#Not working
while read f
do
	case $f in
		hello) echo English			;;
		howdy) echo American 		;;
		gday) echo Australian		;;
		bonjour) echo French		;;
		"guten tag") echo German	;;
		*) 			 echo Unkwon Language: $f
				;;
	esac
done < myfile