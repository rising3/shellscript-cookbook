#!/usr/bin/env bats

setup() {
  load ./02_declare_array.sh
}

@test "declare array 1" {
  run declare_array1

  [ "${status}" -eq 0 ]
  [ "${output}" = "" ]
}

@test "declare array 2" {
  run declare_array2

  [ "${status}" -eq 0 ]
  [ "${output}" = "" ]
}

@test "declare array 3" {
  run declare_array3

  [ "${status}" -eq 0 ]
  [ "${output}" = "red green blue" ]
}

@test "reference array" {
  run ref_array

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "red" ]
  [ "${lines[1]}" = "blue" ]
  [ "${lines[2]}" = "red" ]
  [ "${lines[3]}" = "red green blue" ]
  [ "${lines[4]}" = "red green blue" ]
  [ "${lines[5]}" = "3" ]
  [ "${lines[6]}" = "0 1 2" ]
}

@test "set array 1" {
  run set_array1

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "a b c" ]
  [ "${lines[1]}" = "3" ]
  [ "${lines[2]}" = "0 1 2" ]
}

@test "set array 2" {
  run set_array2

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "a b c e f" ]
  [ "${lines[1]}" = "5" ]
  [ "${lines[2]}" = "0 1 2 4 5" ]
}

@test "insert array" {
  run insert_array

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "X Y Z a b c" ]
  [ "${lines[1]}" = "6" ]
  [ "${lines[2]}" = "0 1 2 3 4 5" ]
}

@test "append array" {
  run append_array

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "a b c d e f g" ]
  [ "${lines[1]}" = "7" ]
  [ "${lines[2]}" = "0 1 2 3 4 5 6" ]
}

@test "remove array item" {
  run remove_array_item

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "a c" ]
  [ "${lines[1]}" = "2" ]
  [ "${lines[2]}" = "0 2" ]
}
