#!/bin/bash
# on local

output=$(./gcd.sh 2 4)
echo "output:$output"
shresult="status:$?, error_msg:$1"
echo "result:$shresult"

if [ $? -eq 0 ]; then
  echo "successed!"
  exit 0
else
  echo "an error occured!"
  exit $?
fi

output=$(./gcd.sh 3)
echo "output:$output"
shresult="status:$?, error_msg:$1"
echo "result:$shresult"

if [ $? -eq 0 ]; then
  echo "successed!"
  exit 0
else
  echo "an error occured!"
  exit $?
fi

output=$(./gcd.sh a b)
echo "output:$output"
shresult="status:$?, error_msg:$1"
echo "result:$shresult"

if [ $? -eq 0 ]; then
  echo "successed!"
  exit 0
else
  echo "an error occured!"
  exit $?
fi