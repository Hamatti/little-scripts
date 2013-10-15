#! /bin/bash
if [ $# -le 1 ];
then
    echo "Usage: sprunge [file] [language]"
else
    echo "$(curl -sF "sprunge=<$1" http://sprunge.us)?$2"
fi
