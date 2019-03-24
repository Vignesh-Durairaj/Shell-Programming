#!/bin/bash
# GNU bash, version 4.3.46

num_one, num_two

get_input() {
	printf "Enter a number : "
	read val_one

	if [[ !($val_one = *[[:digit:]]*) ]] 
	then
		echo "$val_one is not a valid number."
		return
	fi

	printf "Enter another number : "
	read val_two
	
	if [[ !($val_two = *[[:digit:]]*) ]] 
	then
		echo "$val_two is not a valid number."
		return
	fi

	num_one=$val_one
	num_two=$val_two

}

while [ true ]
do
	clear
	printf "\n1 - Addition \n2- Subtraction \n3 - Multiplication \n4 - Division \n5 - Exit"
	printf "\n================: "
	printf "\nEnter an option : "
	
	read option

	case $option in
		1)
			echo "Lets do some addition !"
			get_input
			echo "The addition of $num_one and $num_two is :" $((num_one + num_two))
			;;
		2)
			echo "Lets do some subtraction !"
			get_input
			echo "The subtraction of $num_one and $num_two is :" $((num_one - num_two))
			;;
		3)
			echo "Lets do some multiplication !"
			get_input
			echo "The product of $num_one and $num_two is :" $((num_one * num_two))
			;;
		4)
			echo "Lets do some division !"
			get_input
			echo "The division of $num_one and $num_two is :" $((num_one / num_two))
			;;
		5)
			break
			;;
		*)
			echo "The input is invalid !"
			;;
	esac
	read char
done