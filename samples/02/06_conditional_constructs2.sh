#!/usr/bin/env bash
#
# Conditional Constructs [[ expressions ]]
# shellcheck disable=SC2086        # info

s='abc xyz'
# 単語分割されるため、 abc xyz = abc と展開される
# 条件式の左辺に2つパラメータを指定したものとみなされ、この場合はエラーとなる
[ $s == abc ]
echo "$?" # 2

# 単語分割されないため、 "abc xyz" = abc となる
# 左辺は1つのパラメータを指定したものとみなされる
[[ $s == abc ]]
echo "$?" # 1

# 次のように変数をクォートするとどちらも同じ条件式になる
[ "$s" == abc ]
echo "$?" # 1
[[ "$s" == abc ]]
echo "$?" # 1
