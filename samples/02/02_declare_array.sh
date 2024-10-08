#!/usr/bin/env bash
#
# declare array
# shellcheck disable=SC2128        # warning

declare_array1() {
  local -a colors # declare -a arr
  echo "${colors[@]}"
}

declare_array2() {
  local colors=()
  echo "${colors[@]}"
}

declare_array3() {
  local colors=(red green blue)
  echo "${colors[@]}"
}

ref_array() {
  local colors=(red green blue)
  echo "${colors[0]}"  # red
  echo "${colors[2]}"  # blue
  echo "${colors}"     # red
  echo "${colors[@]}"  # "red" "green" "blue"
  echo "${colors[*]}"  # "red green blue"
  echo "${#colors[@]}" # 3
  echo "${!colors[@]}" # 0 1 2
}

set_array1() {
  local alphabets=(a b c)
  echo "${alphabets[@]}"
  echo "${#alphabets[@]}"
  echo "${!alphabets[@]}"
}

set_array2() {
  local alphabets=(a b c [4]=e f)
  echo "${alphabets[@]}"
  echo "${#alphabets[@]}"
  echo "${!alphabets[@]}"
}

insert_array() {
  local alphabets=(a b c)
  alphabets=(X Y Z "${alphabets[@]}")
  echo "${alphabets[@]}"
  echo "${#alphabets[@]}"
  echo "${!alphabets[@]}"
}

append_array() {
  local alphabets=(a b c)
  alphabets=("${alphabets[@]}" d e f)
  alphabets+=(g)
  echo "${alphabets[@]}"
  echo "${#alphabets[@]}"
  echo "${!alphabets[@]}"
}

remove_array_item() {
  local alphabets=(a b c)
  unset "alphabets[1]"
  echo "${alphabets[@]}"
  echo "${#alphabets[@]}"
  echo "${!alphabets[@]}"
}
