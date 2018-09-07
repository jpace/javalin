#!/bin/bash -f

# echo "building and running $1 ($*)"
n=$1
shift
c=`echo $n | sed -e 's/\.[a-z]*$//'`
# echo "base: $c"

# echo "arguments $*"
javac -Xlint:unchecked $c.java && java $c $*
