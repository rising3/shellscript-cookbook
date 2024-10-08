#!/usr/bin/env bash
#
# bash if.

if [ "$1" = 'yes' ]; then
  echo 'YES'
elif [ "$1" = 'no' ]; then
  echo 'NO'
else
  echo 'ERROR'
  exit 1
fi
