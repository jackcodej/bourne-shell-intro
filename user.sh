#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
# If this did not have quotes and the user entered 'Two words' it would create two files instead of a single one
touch "${USER_NAME}_file"
