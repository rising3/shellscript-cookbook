#!/usr/bin/env bash
#
# bash special parameters.

# 通常の変数（declareの省略による違いはない）
declare s='test'

# 整数型の変数
declare -i i=1+2

# 配列型の変数
declare -a a=('foo' 'bar')

# 連想配列型の変数
declare -A h=(['foo']='bar')

# UpperCase
declare -u uc="${s}"

# LowerCase
declare -l lc="${uc}"

echo "${s}"
echo "${i}"
echo "${a[0]}"
echo "${h['foo']}"
echo "${uc}"
echo "${lc}"
