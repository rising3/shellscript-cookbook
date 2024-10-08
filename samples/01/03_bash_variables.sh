#!/usr/bin/env bash
#
# bash variable declaration.
# shellcheck disable=SC2154        # warning

value1=123
value2=hello
value3='Hello, world'

echo "${value1}${value2}${not_define}${value3}"
