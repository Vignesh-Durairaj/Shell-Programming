#!/bin/bash

printf "\nEnter the Password 	: "
read -s aPassword

printf "\nRe Enter the Password 	: "
read -s anotherPassword

if [ $aPassword = $anotherPassword ] 
then
	printf "\nPasswords entered are matched. Will be encrypted now !\n"
	
	encryptedPassword=''
	for (( i=0; i<${#aPassword}; i++ )); do
		
		myChar="${aPassword:$i:1}"
		myCode=$(printf "%d" \'$myChar\')
		
		if (( ${#encryptedPassword} > 0 ))
		then
			encryptedPassword="$encryptedPassword|"
		fi
		
		encryptedPassword=$encryptedPassword$myCode
		
	done
	
	printf "\nThe encrypted value of password '%s' is '%s'. \n" $aPassword $encryptedPassword
else
	printf "\nPassword entered is mismatching."
fi