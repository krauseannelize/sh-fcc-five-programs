#!/bin/bash
# Program to tell a person’s fortune
# title
echo -e "\n~~ Fortune Teller ~~\n"

# Get a question from the user making sure it ends with a question mark
GET_FORTUNE () {
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi
  read QUESTION
}

# Execute the function to get the question
GET_FORTUNE

# Loop until the question ends with a question mark
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
  # Pass 'again' as an argument to the function so that $1 is not empty
done

RESPONSES=("Yes"
            "No"
            "Maybe"
            "Without a doubt"
            "Very doubtful"
            "Outlook good"
            "Most likely"
            "Don't count on it"
            "Ask again later"
            "Cannot predict now")
N=$(( RANDOM % ${#RESPONSES[@]} ))

echo -e "\n${RESPONSES[$N]}"
