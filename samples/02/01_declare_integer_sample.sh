#!/usr/bin/env bash
#
# declare integer

a=2+3
b=2
echo $a         # 2+3 (文字列扱い)
echo $b         # 2   (文字列扱い)

declare -i num
num=a           # 整数として代入
echo $num       # 5
num+=b          # 整数として計算
echo $num       # 7
