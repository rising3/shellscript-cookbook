#!/usr/bin/env bash
#
# bash while.

declare -i i
declare -i sum=0

while ((++i <= 10)); do
  if ((i % 2 == 0)); then
    continue
  elif [ "${i}" -eq 5 ]; then
    break
  fi
  sum+=i
done

echo "${sum}"
