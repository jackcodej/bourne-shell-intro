#!/bin/sh
echo "I was called with $# parameters"
echo "My name is `basename $0`"
echo "My first paramater is $1"
echo "My second paramater is $2"
echo "All parameters are $@"
