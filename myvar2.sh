#!/bin/sh
#!/bin/sh --> will spawn a new shell to run the script below
echo "MYVAR is: $MYVAR"
MYVAR="hi there"
echo "MYVAR is: $MYVAR"

# If I want to provide a value for the initial undeclared MYVAR
# MYVAR=hello
# export MYVAR
# then run the shell script and the initial echo will print 'hello'
# Note running this file will not overwrite the value hello stored in my interactive shell
# If we want this file to overwrite the value we must 'source the script' using the "." (dot) command
# ex: $ . ./myvar.sh
# This will result in the script being ran in the existing interactive shell, therefore altering our local value of MYVAR from hello to "hi there" 


# Note you must use the dollar sign ($) when trying to reference the value of a variable else you will just get variable name
# You will not use the dolalr sign when setting the variable's value