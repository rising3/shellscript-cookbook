#!/usr/bin/env bats

setup() {
  load ./09_bash_function.sh
}

@test "echo_args" {
  run echo_args arg1 arg2 arg3

  [ "${status}" -eq 0 ]
  [ "${lines[1]}" = "arg1 arg3" ]
  [ "${lines[2]}" = "arg1 arg2 arg3" ]
  [ "${lines[3]}" = "arg1 arg2 arg3" ]
  [ "${lines[4]}" -eq 3 ]
  [ "${lines[5]}" = "echo_args" ]
}

@test "local_name1" {
  run local_name1

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "bar" ]
  [ "${lines[1]}" = "baz" ]
  [ "${lines[2]}" = "bar" ]
}

@test "local_name2" {
  run local_name2

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "baz" ]
}

@test "overwrite_name" {
  run overwrite_name

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "foo" ]
  [ "${lines[1]}" = "qux" ]
}

@test "nametest" {
  run nametest

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "foo" ]
  [ "${lines[1]}" = "bar" ]
  [ "${lines[2]}" = "baz" ]
  [ "${lines[3]}" = "bar" ]
  [ "${lines[4]}" = "foo" ]
  [ "${lines[5]}" = "qux" ]
  [ "${lines[6]}" = "qux" ]
}

@test "return 0" {
  run ret

  [ "${status}" -eq 0 ]
}

@test "return 1" {
  run ret arg1

  [ "${status}" -eq 1 ]
}
