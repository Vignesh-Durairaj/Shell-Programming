#!/bin/bash
# GNU bash, version 4.3.46

clear

printf "Enter a the width 			: "
read width

printf "Enter a the height 			: "
read height


if [[ $width = *[[:digit:]]* && $height = *[[:digit:]]* ]]
then
	printf "\nPrinting the polygon of width $width and height $height \n\n"
	for (( h=1; h<=$height; h++ )); do
		side=""
		for (( w=1; w<=$width; w++)); do
			if [[ $h == 1 || $h == $height || $w == 1 || $w == $width ]]
			then
				side="$side*"
			else
				side="$side "
			fi
		done
		printf "$side\n"
	done
else
	printf "\nInputs '$height' and/or '$width' are not a valid number \n"
fi
