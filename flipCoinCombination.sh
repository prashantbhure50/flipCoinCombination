#!/bin/bash 

declare -A singlet
declare -A doublet
head=0
tail=0
for (( i=0;i<100;i++))
do
	singlet[$i]=$(( RANDOM%2 ))
	number=$(( RANDOM%2 ))
	 if [ $number -eq 0  -a  ${singlet[$i]} -eq 0 ]
	then
		doublet[$i]=$number
	elif [  $number -eq 1  -a  ${singlet[$i]} -eq 1  ]
	then
		doublet[$i]=$number
	fi
done

echo ${singlet[@]}

echo ${doublet[@]}
