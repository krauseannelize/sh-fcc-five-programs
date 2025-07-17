#!/bin/bash

# title
echo -e "\n~~ Questionnaire ~~\n"

# first question
QUESTION1="What's your name?"
echo $QUESTION1
read NAME
echo -e "\nHello $NAME.\n"

# second question
QUESTION2="Where are you from?"
echo $QUESTION2
read LOCATION
echo -e "\nHello $NAME from $LOCATION.\n"

# third question
QUESTION3="What's your favorite coding website?"
echo $QUESTION3
read WEBSITE
echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!\n"
