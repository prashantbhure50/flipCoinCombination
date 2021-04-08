#!/bin/bash

declare -A singlet
count=0
for (( i=0;i<100;i++))
do
singlet[$i]=$(( RANDOM%2 ))

done

echo ${singlet[@]}
