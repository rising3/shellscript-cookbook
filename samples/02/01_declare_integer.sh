#!/usr/bin/env bash
#
# declare integer
# shellcheck disable=SC2324        # warning

declare_integer() {
  local a=2+3
  local b=2
  echo "$a"
  echo "$b"

  local -i num
  num=a
  echo "$num"
  num+=b
  echo "$num"
}

calc1() {
  local -i num
  num=1+2/3
  echo "$num"
}

calc2() {
  ((num = 1 + 2 / 3))
  echo "$num"
}

not_integer() {
  ((a = 1 + 2 / 3)) # 1
  a+=3
  echo "$a" # 13
}

integer() {
  local -i a
  ((a = 1 + 2 / 3)) # 1
  a+=3
  echo "$a" # 4
}
