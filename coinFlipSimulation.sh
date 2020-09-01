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

