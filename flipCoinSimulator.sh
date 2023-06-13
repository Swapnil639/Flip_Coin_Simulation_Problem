#!/bin/bash

heads=0
tails=0

for ((i=1; i<=10; i++))
do
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    heads=$((heads + 1))
  else
    tails=$((tails + 1))
  fi
done

# Display the number of times "Heads" and "Tails" have won
echo "Heads: $heads"
echo "Tails: $tails"
