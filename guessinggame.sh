#!/bin/bash

isContinue=1

#############
# Functions #
#############
# Check file number in current directory
function getFileNumberInCurrentDir() {
    ls . | wc -l
}

# Check user's answer and give suggestion
function checkAnswer() {
    if [ ! $# -eq 2 ]
    then
        echo "Please give 2 arguments to checkAnswer()"
    fi
    intTruth=$(($1+0))
    intGuess=$(($2+0))
    if [ $intTruth -gt $intGuess ]
    then
        echo "Too low."
    elif [ $intTruth -lt $intGuess ]
    then
        echo "Too high."
    else
        echo "Congratulaiton! You're right!"
        isContinue=0
    fi
}

#############
# Main loop #
#############
while [ $isContinue -eq 1 ]
do
    echo "Guess how many files in current directory?"
    read userGuess
    trueNumber=$(getFileNumberInCurrentDir)
    checkAnswer trueNumber userGuess
done
