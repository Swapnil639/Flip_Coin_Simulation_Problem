#!/bin/bash

heads=0
tails=0

# Keep flipping the coin until either "Heads" or "Tails" has won 21 times
while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    heads=$((heads + 1))
  else
    tails=$((tails + 1))
  fi

  if [ $heads -eq $tails ]; then
    continue
  fi

  # Determine the winner and the winning margin
  if [ $heads -gt $tails ]; then
    winner="Heads"
    margin=$((heads - tails))
  else
    winner="Tails"
    margin=$((tails - heads))
  fi

  # Check if the winning margin is at least 2
  if [ $margin -ge 2 ]; then
    break
  fi
done

# Display the result
if [ $winner == "Heads" ]; then
  echo "Heads won by a margin of $margin."
elif [ $winner == "Tails" ]; then
  echo "Tails won by a margin of $margin."
else
  echo "The game is tied."
fi
