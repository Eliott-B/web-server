#!/bin/bash
#AUTHOR: ELIOTT-B

#COLOR
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

which php > /dev/null
if [ $? -eq 1 ]
then
    echo "${RED}[ERROR] PHP is not installed on your machine!${NC}"
    exit 1
fi
if [ $# -eq 0 ]
then
    echo "${YELLOW}[TIPS] To shutdown the server, press 'CTRL + C' (LINUX) or 'CONTROL + C' (MACOS).${NC}"
    php -S localhost:8080 -t .
else
    php -S localhost:8080 -t $1
fi
exit 0