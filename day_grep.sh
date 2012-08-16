#!/bin/bash

[[ -n "$1" ]] || { echo "Usage: day_grep.sh [query] [channel]"; exit; }


query=$1
channel=$2
file="#$channel.log"
path="" # Add path to the log folder

egrep "$query|Day changed" "$path$file" |grep -B1 "^[^-]" |sed '/^--$/d'


