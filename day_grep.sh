#!/bin/bash

query=$1
channel=$2
file="#$channel.log"
path="" # Add path to the log folder

egrep "$query|Day changed" "$path$file" |grep -B1 "^[^-]" |sed '/^--$/d'


