#!/bin/bash
# GNU bash, version 4.3.46

clear

printf "Enter a the max size	: "
read width


if [[ $width = *[[:digit:]]* ]]
then
	printf "\nPrinting the diamond stars of size '$width' \n\n"
	if [[ $(($width % 2)) == 0 ]]; then evenAdditive=0; else evenAdditive=1; fi
	rowMedian=$(($width/2))+$(($evenAdditive))
	counter=1
	startPos=$rowMedian
	endPos=$rowMedian
	for (( i=1; i<=$width; i++ )); do
		side=""
		for (( j=1; j<=$endPos; j++)); do
			if [[ j>=$startPos ]]
			then
				side="$side*"
			else
				side="$side "
			fi
		done
		counter=$(($counter + 1))
		if [[ $evenAdditive==1 || $counter!=$(($rowMedian + 1)) ]];
		then
			if [[ $(($rowMedian-$counter))>=0 ]];
			then
				startPos=$(($startPos - 1))
				endPos=$(($endPos + 1))
			else
				startPos=$(($startPos + 1))
				endPos=$(($endPos - 1))
			fi
		fi
		
		printf "$side\n"
	done
else
	printf "\nInputs '$height' and/or '$width' are not a valid number \n"
fi
