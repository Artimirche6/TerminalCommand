#!/bin/bash -x

coinFlip=$(((RANDOM%2)))

if [ $coinFlip -eq 1 ]
        then
                echo HEADS
        else
                echo TAILS
fi
