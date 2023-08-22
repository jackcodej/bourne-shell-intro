#!/bin/sh
echo What is your name?
# Read to get input as variable name python equivlent of my_name = input()
read MY_NAME
echo "Hello $MY_NAME - hope you're well."

# Python3 Equivlent code
# print("What is your name?")
# my_name = input()
# print(f"Hello {my_name} - hope you're well.")

# Note attempting to read an undeclared variable will result in an empty string
# Remember you must change permissions of the .sh file using --> chmod 755 filename.sh
# 755 --> everyone may read and execute the file (including the owner)