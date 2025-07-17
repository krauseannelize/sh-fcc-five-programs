#!/bin/bash
# Program to execute 4 scripts
# title
echo -e "\n~~ Script Executor ~~\n"

# Execute each script
for script in questionnaire.sh countdown.sh bingo.sh fortune.sh;
do
  echo -e "\nExecuting $script..."
  ./$script
done
