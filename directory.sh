#!/bin/bash
clear
read -p "Username:" name
case "$name" in
	"Mahdi")
		read -s -p "Password: " pass
		while [ ${#pass} -lt 8 ];do
			echo -e "\nPassword character must be more than 8!\nPassword: "
	                read -s  pass
		  done     	
		echo -e "\nYou are authorized"
	;;
        "Amir")
                read -s -p "Password: " pass
		echo -e "\nYou are authorized"
	;;
        "Saeed")
		read -s -p "Password: " pass
		echo -e "\nYou are authorized"
	;;	
        *)
	  echo "You are not Authorized!"
	  exit
esac  	  
sleep 1
clear 
read -p " please enter a directory: " directory
x=$(find / -type d -name $directory 2>/dev/null)
if [[ $x == *"$directory"*  ]];then
	echo "Directory is availble"   
else
	echo "Directory is not found"
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




