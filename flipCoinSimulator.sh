#!/bin/bash -x
H=0
T=0
read -p "Enter the number of times you want to run the simulation " n
while [[ $((H)) -lt $n && $((T)) -lt $n ]]
do
	rand=$((RANDOM%2))
	if [[ $((rand)) -eq 0 ]]
	then
		echo "It is a head "
		((H++))
	else
		echo "It is a tail "
		((T++))
	fi
done
echo "Number of times head won is $H "
echo "Number of times tail won is $T "
