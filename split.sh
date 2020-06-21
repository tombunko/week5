#!/bin/bash

#Program name is split.sh
#First input param is the text in           $1

# This function takes an input string, & formats it to fit within a specified sizey.

#function split()
arr=($1)       # This array contains the string passed to the function
lin=()         # This array contains the output lines from the function
outlin=0       # This array contains the output line number being worked on
runlth=$2      # This var contains the maximum length 
i=0            # This var contains the word number being processed in array
x=${#arr[@]}   # This var contains the number of words in array to process
nowlth=0       # This var contains the number of characters used in current line
Space=" "      # This var contains one space

# locate the end of the array
while [ $i -le $x ]
do
        	
	nowlth=$((${#arr[i]} + nowlth))    # calc number of letters used
	curword=${arr[i]}                  # load current word in memory
	(( i++ ))                          # increment array for next word


	if [ $runlth -gt $nowlth ]; then          # will next word fit?
		(( nowlth++ ))                    # add one for the space
		string="$string$curword$Space"    # add word to string
		lin[$outlin]=$string              # load string to array
	else
		(( outlin++ ))                    # Triggered - Next Line
		j=i-1                             # Last word did not fit
		string=""                         # clear string contents
		nowlth=$((${#arr[j]}))            # Get last word
		string="$string$curword$Space"    # load it to the string
		lin[$outlin]=$string              # load string to array
	fi

done

echo "${lin[0]}"
echo "${lin[1]}"
echo "${lin[2]}"






