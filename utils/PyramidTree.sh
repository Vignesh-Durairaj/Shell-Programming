#!/bin/bash
# GNU bash, version 4.3.46

printf "Enter a number 			: "
read num

if [[ $num = *[[:digit:]]* ]]
then
	printf "\nPrinting the stars for $num rows \n\n"
	for (( i=1; i<=$num; i++ )); do
		rowSpace=""
		star="*"
		for (( j=$num; j>i; j--)); do
			rowSpace=$rowSpace" "
		done
		for(( k=1; k<i; k++ )); do
			star="$star *"
		done
		echo "$rowSpace$star"
	done
else
	printf "\n$num is not a valid number \n"
fi
