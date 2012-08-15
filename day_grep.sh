#!/bin/bash

query=$1
channel=$2
file="#$channel.log"

grep -n $query /home/j/jumasan/irclogs/IRCnet/$file > matches.log
grep -n "Day changed" /home/j/jumasan/irclogs/IRCnet/$file >> matches.log

cat matches.log | sort -n |cut -d: -f2,3,4,5 |grep -B1 "^[^-]" |sed '/^--$/d'


