#!/usr/bin/env bats

setup() {
  load ./03_declare_map.sh
}

@test "declare map 1" {
  run declare_map1

  [ "${status}" -eq 0 ]
  [ "${output}" = "" ]
}

@test "declare map 2" {
  run declare_map2

  [ "${status}" -eq 0 ]
  [ "${output}" = "blue yellow" ]
}

@test "reference map" {
  run ref_map

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "blue" ]
  [ "${lines[1]}" = "yellow" ]
  [ "${lines[2]}" = "blue yellow" ]
  [ "${lines[3]}" = "blue yellow" ]
  [ "${lines[4]}" = "2" ]
  [ "${lines[5]}" = "fore back" ]
}

@test "set map item" {
  run set_map_item

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "green yellow 1" ]
  [ "${lines[1]}" = "3" ]
  [ "${lines[2]}" = "fore back priority" ]
}

@test "remove map item" {
  run remove_map_item

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "yellow 1" ]
  [ "${lines[1]}" = "2" ]
  [ "${lines[2]}" = "back priority" ]
}
