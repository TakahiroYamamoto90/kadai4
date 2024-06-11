#!/bin/bash

echo "chceck gcd:2,4"
output=$(./gcd.sh 2 4)

if [ $? -eq 0 ]; then
  echo "successed : $output"
else
  echo "errored : $output"
  exit 1
fi