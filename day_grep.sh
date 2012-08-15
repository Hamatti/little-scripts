#!/bin/bash

query=$1
channel=$2
file="#$channel.log"
path="" # Add path to the log folder

grep -n $query "$path$file" > matches.log
grep -n "Day changed" "$path$file" >> matches.log

cat matches.log | sort -n |cut -d: -f2,3,4,5 |grep -B1 "^[^-]" |sed '/^--$/d'


