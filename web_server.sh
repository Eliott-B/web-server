#!/bin/bash
#AUTHOR: ELIOTT-B

#COLOR
NC="$(tput sgr0)"
RED="$(tput bold; tput setaf 1)";
YELLOW="$(tput bold; tput setaf 3)";

which php > /dev/null
if [ $? -eq 1 ]
then
    echo "${RED}[ERROR] PHP is not installed on your machine!${NC}"
    exit 1
fi
echo "${YELLOW}[TIPS] To shutdown the server, press 'CTRL + C' (LINUX) or 'CONTROL + C' (MACOS).${NC}"
if [ $# -eq 0 ]
then
    php -S localhost:8080 -t .
else
    php -S localhost:8080 -t $1
fi
exit 0
