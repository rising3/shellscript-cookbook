#!/usr/bin/env bash
#
# Conditional Constructs [[ expressions ]]

s1=abc
s2=xyz

# [[ ]] は、[ コマンドと同じ演算子が使用できる
[[ "${s1}" != "${s2}" ]]
echo $? # 0

# [[ ]] は、 &&(AND演算) や ||(OR演算) を使用できるが、[コマンドでは使用できない
[[ "${s1}" != "${s2}" && "${s1}" == 'abc' ]]
echo $? # 0
