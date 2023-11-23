#!/bin/bash

# Function to count the number of files in the current directory
get_file_count() {
  echo $(ls -1 | wc -l)
}

# Main function for the guessing game
guessing_game() {
  correct_count=$(get_file_count)

  while true; do
    echo "Guess the number of files in the current directory:"
    read user_guess

    if [[ $user_guess -lt $correct_count ]]; then
      echo "Too low! Try again."
    elif [[ $user_guess -gt $correct_count ]]; then
      echo "Too high! Try again."
    else
      echo "Congratulations! You guessed correctly."
      break
    fi
  done
}

# Run the guessing game
guessing_game
