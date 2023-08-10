#!/bin/bash
#AUTHOR: ELIOTT-B

if [ $# -eq 0 ]
then
    php -S localhost:8080 -t .
else
    php -S localhost:8080 -t $1
fi
exit 0