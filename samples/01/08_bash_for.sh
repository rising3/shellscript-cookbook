#!/usr/bin/env bash
#
# bash for.
# Usage: ./08_bash_for.sh 1 2 3 4 5

declare -i i
declare -i sum=0

for i in "$@"; do
  if ((i % 2 == 0)); then
    continue
  elif [ "${i}" -eq 5 ]; then
    break
  fi
  sum+=i
done

echo "${sum}"
