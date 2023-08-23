#!/bin/sh
# X=0
# while [ -n "$X" ]
# do
#     echo "Enter some text (RETURN to quit)"
#     read X
#     echo "You said: $X"
# done

# Improve the above script by adding a test within the loop
X=0
while [ -n "$X" ]
do
    echo "Enter some text (RETURN to quit)"
    read X
    if [ -n "$X" ]; then
      echo "you said: $X"
    fi
done