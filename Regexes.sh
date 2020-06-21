#!/bin/bash

# This bash script is named Regexes.sh

# The purpose is to demonstrate usefullness of grep command

# first show menu selection of options available


exit="N"
while [ $exit = "N" ] 
do

clear
echo ""
echo -e "            \e[40;38;5;82m       Regex examples          \e[0m"  #banner stype menu title
echo ""
echo "  Options:"
echo "    1 - Show all sed statements"
echo "    2 - Show all lines that start with an 'm'"
echo "    3 - Show all lines that contain a 3 digit number"
echo "    4 - Show all echo statements that contain at least three words"
echo "    5 - Show any lines where a word in the line would make a good password"
echo ""
echo "    Q - to quit"
echo ""
echo -e "  \e[1m Enter Selection: \e[0m"
read interact
echo ""
echo ""

case "$interact" in
	1 ) grep "\<sed" -r      #words that start with sed
		echo""
		read -p "Press enter to continue " keyin
		;;
	2 ) grep "^m" -r         #lines that start with m
		echo ""
		read -p "Press enter to continue " keyin
		;;
	3 ) grep "[0-9]\{3\}" -r #lines with 3 digit numbers
		echo
		read -p "Press enter to continue " keyin
		;;
	4 ) grep "^echo" -r >> temp1.txt
	    grep "\w+\s+\w+\s+\w+\s+" temp1.txt     # Lines with echo and 3 or more words in it
		echo
		read -p "Press enter to continue " keyin
		;;
	5 ) grep "\w{1,10}" | grep =vwE "(?=.*[a=zA-Z])(.*[@#\d])[a-aA-Z\d@#]+" -r     # Lines with a word that could be a good password (10 or longer)
                echo
                read -p "Press enter to continue " keyin
                ;;

	Q ) exit="Y"
		;;
	q ) exit="Y"

		# if quit tried in anykey, allow quit
		if [ $keyin = "q" ]; then
			exit="Y"
		elif [ $keyin = "Q" ]; then
			exit="Y"
		fi
esac
done
