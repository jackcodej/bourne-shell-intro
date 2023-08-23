#!/bin/sh
if [ "$X" -lt "0"]
then
  echo "X is less than zero"
# note fi is if backwards same with case and esac
fi
# lt, gt, le, and ge can only be used for integer comparison
if [ "$X" -gt "0" ]; then
  echo "X is more than zero"
fi
[ "X" -le "0" ] && \
    echo "X is less than or equal to zero"
[ "$X" -ge "0" ] && \
    echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
    echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
    echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
    echo "X is not the string \"hello\""
[ -n "$X" ] && \
    echo "X is the path of a real file" || \
    echo "No such file: $X"
[ -x "$X" ] && \
    echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
    echo "X is a file which is newer than /etc/passwd"


# semicolon (;) is often used to join the if and then keywords
if [ "$X" -nt "/etc/paswd" ]; then
    echo "X is a file which is newer than /etc/passwd"
fi

# backslash (\) is used to split the single line command across two lines for readability
[ "$X" -nt "/etc/passwd" ] && \
    echo "X is a file which is newer than /etc/passwd"


# Example of using && and || commands to run if the result is true or false respectively
[ $X -ne 0 ] && echo "X isn't zero" || echo "X is zero"
[ -f $X ] && echo "X is a file" || echo "X is not a file"
[ -n $X ] && echo "X is of non-zero length" || \
      echo "X is of zero length"

# Since the lt, gt, le, and ge comparisons are designed only for integers, and will not work for strings you will need to check the contents of the variable before you test it
# example below
echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number"
else
  # The grep found only 0-9, so it's an integer. 
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then
    echo "You entered the magic number!"
  fi
fi