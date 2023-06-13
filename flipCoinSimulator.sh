#!/bin/bash

heads=0
tails=0

while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    heads=$((heads + 1))
  else
    tails=$((tails + 1))
  fi
done

if [ $heads -gt $tails ]; then
  winner="Heads"
  margin=$((heads - tails))
elif [ $tails -gt $heads ]; then
  winner="Tails"
  margin=$((tails - heads))
else
  winner="Tie"
  margin=0
fi

# Display the result
if [ $winner == "Tie" ]; then
  echo "It's a tie!"
else
  echo "$winner won by a margin of $margin."
fi
