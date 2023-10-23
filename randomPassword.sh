#!/bin/bash
#set -x
read -p "enter the length of your password that you want: " length
read -p "enter how many variants you want: " variant
enMethod=""
echo "choose which encryption or tech you want : 1) hex,  2) base64"
read choice
case $choice in
	1) enMethod=hex;;
	2) enMethod=base64;;
	*) echo "enter right option 1 or 2 "; exit 1;;
esac

#for i in {1..$variant}
for ((i=0; i< $variant;i++))
do
	openssl rand -$enMethod 48 | cut -c1-$length
done

