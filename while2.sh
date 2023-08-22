#!/bin/sh
# The ':' always evaulates to true, however it is generally more preferable to use a real exit condition and shown in the previous while loop
while :
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed : $INPUT_STRING"
done