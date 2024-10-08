#!/usr/bin/env bats

setup() {
  load ./01_declare_integer.sh
}

@test "declare integer variables" {
  run declare_integer

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "2+3" ]
  [ "${lines[1]}" = "2" ]
  [ "${lines[2]}" = "5" ]
  [ "${lines[3]}" = "7" ]
}

@test "calc1" {
  run calc1

  [ "${status}" -eq 0 ]
  [ "${output}" = "1" ]
}

@test "calc2" {
  run calc2

  [ "${status}" -eq 0 ]
  [ "${output}" = "1" ]
}

@test "not integer" {
  run not_integer

  [ "${status}" -eq 0 ]
  [ "${output}" = "13" ]
}

@test "integer" {
  run integer

  [ "${status}" -eq 0 ]
  [ "${output}" = "4" ]
}
