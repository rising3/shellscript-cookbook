#!/usr/bin/env bash
#
# declare array

declare_map1() {
  local -A color # declare -A color
  echo "${color[@]}"
}

declare_map2() {
  local -A color=([fore]=blue [back]=yellow)
  echo "${color[@]}"
}

ref_map() {
  local -A color=([fore]=blue [back]=yellow)
  echo "${color[fore]}" # blue
  echo "${color[back]}" # yellow
  echo "${color[@]}"    # "blue" "yellow"
  echo "${color[*]}"    # "blue yellow"
  echo "${#color[@]}"   # 2
  echo "${!color[@]}"   # fore back
}

set_map_item() {
  local -A color=([fore]=blue [back]=yellow)
  color[fore]=green # update value
  color[priority]=1 # new key value
  echo "${color[@]}"
  echo "${#color[@]}"
  echo "${!color[@]}"
}

remove_map_item() {
  local -A color=([fore]=blue [back]=yellow [priority]=1)
  unset "color[fore]"
  echo "${color[@]}"
  echo "${#color[@]}"
  echo "${!color[@]}"
}
