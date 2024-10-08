#!/usr/bin/env bash
#
# bash function.

name=foo

local_name1() {
  local name=bar
  echo "${name}"
  local_name2
  echo "${name}"
}

local_name2() {
  local name=baz
  echo "${name}"
}

overwrite_name() {
  echo "${name}"
  name=qux
  echo "${name}"
}

nametest() {
  echo "${name}"
  local_name1
  overwrite_name
  echo "${name}"
}

echo_args() {
  echo "$0"
  echo "$1 $3"
  echo "$@"
  echo "$*"
  echo $#
  echo "${FUNCNAME[0]}"
}

ret() {
  if [ $# -gt 0 ]; then
    return 1
  fi
  return 0
}
