#!/bin/bash


# This script is used to play a game of Rock, Paper, Scissors against the computer.
# It is easily modified to allow 2 humans to play instead of one human and the computer.

# This function asks the user(s) if they would like to play.
function play {
  echo "Would you like to play Rock, Paper, Scissors? (y/n): "
  read play
  if [[ $play == "y" ]]; then
    main
  else
    echo "That's too bad, maybe next time"
  fi
}

# This function reads the input from the keyboard for the go of player 2
function player1 {
  echo  "Hello Player 1! Please make your choice: "
  read  player1
  echo "Computer will now choose."
}
# This function uses random computer output for the go of player 2
function computer {
  choices=("rock" "paper" "scissors")
  computer=${choices[$RANDOM % ${#choices[@]}]}
  echo "Computer chose: $computer"
}

# If you wanted to be able to play against another human, 
# this function reads the input from the keyboard for the go of player2.  '
# Make sure to change any instances that say 'computer' to say 'player2'. 
# function player2 {
#   echo  "Hello Player 2! Please make your choice: "
#   read  player2
# }

# This function will compare the input from the players and output the results
function compare {
  if [[ $player1 == $computer ]]; then
    echo "Its a Tie"
  elif [[ $player1 ==  "rock" && $computer == "scissors" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 == "sissors" && $computer == "rock" ]]; then
    echo "Computer Wins"
  elif [[ $player1 == "scissors" && $computer == "paper" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 == "paper" && $computer == "scissors" ]]; then
    echo "Computer Wins"
  elif [[ $player1 == "paper" && $copmputer == "rock" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 = "rock" && $computer == "paper" ]]; then
    echo "Computer Wins"
  else
    echo "There was an error please try again"
    main
  fi
}

# This function asks the use if they would like to play again and will then
# call the main function again
function playAgain {
  echo "Would you like to play again? (y/n): "
  read play
  if [[ $play == "y" ]]; then
    main
  else
    echo "That's too bad, maybe next time"
  fi
}

# This function starts the game and then calls the main function if 'y' is chosen.
function start_game {
  play
}

# This function calls the other functions in the order they need to be to play
function main {
  player1
  computer
  compare
  playAgain
}

# Call the play function
play

