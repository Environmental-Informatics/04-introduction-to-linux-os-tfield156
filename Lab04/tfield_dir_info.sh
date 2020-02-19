#!/bin/bash
# Provides information on the inputted directory
# Tyler Field 2/19/2020

path=$1

echo ' '
echo 'The inputted path was:' $path

echo ' '
echo 'Number of files in the directory:'
ls -lpsh $path | egrep -v / | tail -n +2 | wc -l

echo ' '
echo 'Number of subdirectories:'
ls -lpsh $path | egrep / | wc -l

echo ' '
echo 'Biggest file size:'
ls -lpsh $path | grep -v / | head -2 | tail -1 | cut -d ' ' -f 7

echo ' '
echo 'Most recently modified/created file:'
ls -l $path | sort | tail -2 | head -1 |  cut -d ' ' -f 11

echo ' '
echo 'Owners:'
 ls -l $path | cut -d ' ' -f 3 | uniq | tail -n +2


echo ' '
echo ' '
