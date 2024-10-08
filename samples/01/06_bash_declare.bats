#!/usr/bin/env bats

@test "bash declare" {
  run ./06_bash_declare.sh

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "test" ]
  [ "${lines[1]}" = "3" ]
  [ "${lines[2]}" = "foo" ]
  [ "${lines[3]}" = "bar" ]
  [ "${lines[4]}" = "TEST" ]
  [ "${lines[5]}" = "test" ]
}
