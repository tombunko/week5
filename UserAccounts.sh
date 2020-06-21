
# Program name is UserAccounts.sh
# This program uses awk to reformat the file /etc/passwd into information as required

# Note awk BEGIN { to } is the header of the report
# Next line beginning and ending with the { and } is the report body,
# Final line, starting END { to } is the last line of the report.

# Colors are as follows: 
# Title Line:  blue letters, with white frame (blue = \033[34m) white = \033[0m)
# detail line" User name in orange (\033[33m), rest in purple (\034[33m4)

awk 'BEGIN {FS=":"; printf( "| \033[34m%-21s\033[0m | \033[34m%-6s\033[0m | \
\033[34m%-7s\033[0m | \033[34m%-28s\033[0m | \033[34m%-18s\033[0m |\n",\ 
"UserName", "UserID", "GroupID", "Home", "Shell" )
printf "| %21s | %6s | %7s | %28s | %18s |\n", "", "", "", "", "" 
printf "|%23s|%8s|%9s|%30s|%18s|\n", \
"_______________________", "________", "_________", "______________________________", \
"____________________" }

{ printf "| \033[33m%-21s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-28s\033[0m | \033[35m%-18s\033[0m |\n", $1, $3, $4, $6, $7 } 
END {
}' < /etc/passwd 



