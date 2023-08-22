#!/bin/sh

# How to display 'Hello     "World"'?
# use escape characters!
echo "Hello      \"World\""

# Most characters (*, ', etc) are not interpreted they are taken literally by means of placing them in double quotes ("")
# They are taken as is and passed on to the command being called. An example of asterisk (*):
# Print all files in the current directory
echo *
# Print all files ending in txt
echo *txt
# Print * (interpreted literally)
echo "*"
# Print *txt (interpreted literally)
echo "*txt"

# ex of how to print """A quote is ", backslash is \, backtick is `. """
echo "A quote is \", backslash is \\, backtick is \`."
X=5
echo "A few spaces are        and dollar is \$. \$X is ${X}."
echo "This is \\ a backslash"
echo "This is \" a quote and this is \\ a backslash"
