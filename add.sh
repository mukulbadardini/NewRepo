#!/bin/bash
echo -n "First number "
read Number1
echo -n "Second number "
read Number2
sum=$(($Number1 + $Number2))
echo "First number + Second number: "$sum