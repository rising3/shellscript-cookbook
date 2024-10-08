#!/usr/bin/env bash
#
# Conditional Constructs [[ expressions ]] regex

s='foo@bar.com'

# 正規表現でemailを判定する
[[ "$s" =~ ^[[:alnum:]._%+-]+@[[:alnum:].-]+\.[[:alpha:].]{2,4}$ ]]
echo "$?" # 0
