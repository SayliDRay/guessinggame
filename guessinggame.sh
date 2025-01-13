#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  ls -1 | wc -l
}

# Main game logic
correct_count=$(count_files)

echo "How many files are in the current directory? Take a guess!"

while true; do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $correct_count ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $correct_count ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed the correct number of files: $correct_count."
    break
  fi
done
