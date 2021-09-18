#!/bin/sh

FILE=`dirname $0`/text

zenity --text-info --title="RHEL8 setup" --checkbox="I read and accept the terms." --filename=$FILE

case $? in 
	0) 
		if name=$(zenity --entry --title="User details" --text="Enter your name" --entry-text="Start typing here") 
		then zenity --info --text="Hi $name.Welcome on board...." 
	        else zenity --notification --window-icon="info" --text="You have not entered your name"		
		fi
		 
esac

(
	echo "25"; sleep 1
	echo "Configuring some setup files"
	sleep 1

	echo "35"; sleep 1
	echo "Extracting installed softwares"
	sleep 1

	echo "60"; sleep 1
	echo "Creating user directories"
	sleep 1

	echo "100"; sleep 1
	echo "Your setup is ready !!!"

) | zenity --progress --title="Progress.." --text="Upgrading .." --percentage=0 

if [ "$?" = 0 ] ; then
	zenity --notification --window-icon="info" --text="Upgrade carried out successfully."
fi


