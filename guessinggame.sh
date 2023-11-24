#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
  local file_count=$(ls -l | grep "^-" | wc -l)
  echo $file_count
}

# Function to prompt the user for a guess
get_user_guess() {
  read -p "How many files are in the current directory? Enter your guess: " user_guess
  echo $user_guess
}

# Main game function
game() {
  local answer=$(get_file_count)
  local guess=-1

  echo "Welcome to the Guessing Game!"

  while [ $guess -ne $answer ]; do
    local user_guess=$(get_user_guess)

    if [ $user_guess -lt $answer ]; then
      echo "Your guess is too low. Try again!"
    elif [ $user_guess -gt $answer ]; then
      echo "Your guess is too high. Try again!"
    fi
  done

  echo "Congratulations! Your guess is correct."
}

# Run the game
game
