#!/bin/bash

# Simple, automatic, organized journaling script

# V0.1. Written 21 October 2020. 

# create or navigate to journal directory

year=$(date +%Y)
month=$(date +%B)

mkdir journal
cd journal

mkdir $year
cd $year

mkdir $month
cd $month

# day format example: 01 September 08:00AM
day=$(date +%d-%A-%I:%M%p)

# create entry
touch "$day"

# fill with text and newlines
echo "Journal entry for $day" >> "$day"
echo >> "$day"
echo >> "$day"

nano "$day"
