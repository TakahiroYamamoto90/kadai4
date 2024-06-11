#!/bin/bash

echo "chceck gcd:3"
output=$(./gcd.sh 3)

if [ $? -eq 0 ]; then
  echo "successed : $output"
else
  echo "errored : $output"
  exit 1
fi