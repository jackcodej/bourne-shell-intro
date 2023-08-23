#!/bin/sh
# old_IFS="$IFS"
# Note IFX = Internal Field Separater, the default is SPACE TAB NEWLINE, in this example we are changing it to use a colon
# IFS=:
# echo "Please input some data separated by colons ..."
# read x y z
# IFS=$old_IFS
# echo "x is $x y is $y z is $z"


# example of using default values
# note '-en' argument to echo, tells it to not add a linebreak
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
    myname=`whoami`
fi
echo "Your name is : $myname"

# another example of default values using the special ":-" colon-dash to specify a default value if it is unset
echo -en "What is your name [ `whoami` ]"
read myname
# Note using the shell variable feature usually uses a fixed text ex
# echo "Your name is :${myname:-John Doe}"
echo "Your name is : ${myname:-`whoami`}"