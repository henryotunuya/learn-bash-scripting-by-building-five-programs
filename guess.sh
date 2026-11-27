#!/bin/bash
#Program to that guesses to a person
echo -e "\n~~ A Guesser ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

N=$((RANDOM%6))

GET_GUESS(){
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi
  read QUESTION
}

GET_GUESS

until [[ $QUESTION =~ \?$ ]]
do
  GET_GUESS again
done

echo -e "\n${RESPONSES[$N]}"