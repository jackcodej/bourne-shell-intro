#!/bin/sh

# Note the backtick (`) is often associated with external commands
# ex grep "^${USER}:" /etc/passwd | cut -d: -f5
# he backtick simply catches the standard output from any command or set of commands

# Prints all files with an index.html or contents.html
find / -name "*.html" -print | grep "/index.html$"
find / -name "*.html" -print | grep "/contents.html$"

# Example of an optimized version of the above block
# Note the quotes surrounding $HTML_FILES are essential to preserve newlines between each file listed
# This code is better since we are only running 'find' once instead of twice thus reducing runtime from 2*n to n
HTML_FILES=`find / -name "*.html" -print`
echo "$HTML_FILES" | grep "/index.html$"
echo "$HTML_FILES" | grep "/contents.html$"