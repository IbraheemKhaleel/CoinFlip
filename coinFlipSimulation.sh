#!/bin/bash
function coinFlip()
{
	local random=$1
        if [[ $((random)) -eq 0 ]]
        then
                echo "It is a head "
                ((H++))
        else
                echo "It is a tail "
                ((T++))
        fi
} 
H=0
T=0
echo "Coin flip simulation till 21 times is running "
while [[ $((H)) -lt 21 && $((T)) -lt 21 ]]
do
	rand=$((RANDOM%2))
	coinFlip $rand
done
if [[ $((H)) -eq 21 && $((T)) -eq 21 ]]
then 
	echo " It is a tie. Both reached 21 times "
	while [[ $((H-T)) -ge 2 ]]
	do
		rand=$((RANDOM%2))
		coinFlip $rand
	done
	if [[ $((H)) -gt $((T)) ]]
	then
		echo "Head has reached $H times. Head won "
	else
		echo "Tail has reached $T times. Tail won "
	fi
elif [[ $((H)) -eq 21 ]]
then
        echo "Head has reached 21 times. Head won "
else
	echo "Tail has reached 21 time. Tails won"		
fi
