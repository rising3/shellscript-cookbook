#!/usr/bin/env bash
#
# Conditional Constructs [[ expressions ]] pattern matches

s=xyz

[[ "$s" == x* ]]
echo "$?" # 0

[[ "$s" == x?z ]]
echo "$?" # 0

[[ "$s" == y* ]]
echo "$?" # 1
