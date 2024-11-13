#!/bin/bash
clear
read -p "Please Enter a name:" name
case "$name" in
	"Mahdi")
		echo "you are authorized"
	;;
        "Amir")
		echo "You are Super admin :D"
	;;	
        *)
	  echo "You are not Authorized!"
	  exit
esac  	  
sleep 5
clear 
read -p " please enter a directory: " directory
if [ -d "/$directory" ];then
	echo "Directory is availble"
        find / -name $directory -type d 2>/dev/null
else
	echo -e  " Directory not found \nDo you want to create $directory ?(y/n)"
	read answer
	if [ "$answer" == "y" ];then
	   read -p  " Please write the path of your directory: " path
	   cd "$path"
	   mkdir "$directory"
	   echo " Done! "
	  find / -name $directory -type d 2>/dev/null

        else
	    echo " bye! "

fi
fi	




