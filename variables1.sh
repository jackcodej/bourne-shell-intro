#!/bin/sh
MY_MESSAGE="Hello World"
echo $MY_MESSAGE

# Will not work since x is type string
x="hello"
expr $x + 1

MY_SHORT_MESSAGE=hi
MY_NUMBER=1
MY_PI=3.142
MY_OTHER_PI="3.142"
MY_MIXED=123ABC