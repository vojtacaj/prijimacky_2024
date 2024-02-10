#!/bin/bash

# zeptani se na to jakou verzi chci
echo "jakou chcete moznost"
echo "1 volne misto na disku home"
echo "2 pouzite misto na disku home"
echo "3 volene misto na disku home procenta"
read -p "co si vyberes?" VYBER
echo
echo
echo "vybral jsi si "$VYBER"."
if [[ $VYBER -eq 1 ]]
then
	echo -n "volne misto v home: "
       	df -h|grep " /home"|cut -d" " -f8
elif [[ $VYBER -eq 2 ]]
then
	echo -n "pouzite misto v home: "
	df -h|grep " /home"|cut -d" " -f6
elif [[ $VYBER -eq 3 ]]
then
	echo -n "volne misto v home v procentech: "
       	df -h|grep " /home"|cut -d" " -f10
else
	echo "mas to spatne znovu"
fi
