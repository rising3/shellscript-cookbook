#!/usr/bin/env bash
#
# Conditional Constructs [[ expressions ]]
# shellcheck disable=SC2086        # info

s=
# (左辺なし) = abc と展開される
# 条件式の左辺が指定されていないとみなされ、この場合はエラーとなる
[ $s == abc ]
echo "$?" # 2

# "" = abc となる
[[ $s == abc ]]
echo "$?" # 1

# 次のように変数をクォートするとどちらも同じ条件式になる
[ "$s" == abc ]
echo "$?" # 1
[[ "$s" == abc ]]
echo "$?" # 1
