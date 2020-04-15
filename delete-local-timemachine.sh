#!/bin/bash

su

tmutil listlocalsnapshots / | cut -c 23-39 > backuplist.txt

filename='backuplist.txt'
while read line; do
if test "$line" = "roup containing d"
then
echo "First line is trash"
else
tmutil deletelocalsnapshots $line
fi
done < backuplist.txt

rm backuplist.txt

echo "High five!"
