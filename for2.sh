#!/bin/sh
# The star is for all files in the current directory, so it is an iterable
for i in hello 1 * 2 goodbye
# for i in *
do
  echo "Looping ... i is set to $i"
done