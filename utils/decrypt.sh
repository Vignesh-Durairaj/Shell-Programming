#!/bin/bash

printf "\nEnter the Encrypted Password 	: "
read aEncPassword

printf "Re Enter the Encrypted Password 	: "
read anotherEncPassword

if [ $aEncPassword = $anotherEncPassword ] 
then
	printf "\nPasswords entered are matched. Will be encrypted now !\n"
	
	decryptedPassword=''
	charArr=(${aEncPassword//|/ })

	for i in ${charArr[@]}; do
		myChar=$(printf \\$(printf '%03o' $i))
		if (( ${#myChar} > 0 )) 
		then
			decryptedPassword=$decryptedPassword$myChar
		fi
				
	done
	
	printf "\nThe decrypted value of password '%s' is '%s'. \n" $aEncPassword $decryptedPassword
else
	printf "\nPassword entered is mismatching."
fi