#!/bin/bash -x
random=$((RANDOM%2))
if [[ $((random)) -eq 0 ]]
then
	echo "It is Head"
else
	echo "It is Tail"
fi
