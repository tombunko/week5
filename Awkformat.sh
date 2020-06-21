#!/bin/bash
 echo "Google Server IPs:"
 awk 'BEGIN {FS=":"; printf " %-34s \n", "________________________________" 
     printf "| \033[34m%-11s\033[0m | \033[34m-14s\033[0m |\n", "Server Type", "IP" }
     { printf "| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2 }
 END { print(" %-34s\n", "________________________________") }' input.txt
