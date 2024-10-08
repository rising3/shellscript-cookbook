#!/usr/bin/env bats

@test "conditional_constructs [[...]] 2" {
  run ./06_conditional_constructs2.sh

  [ "${status}" -eq 0 ]
  [ "${lines[1]}" = "2" ]
  [ "${lines[2]}" = "1" ]
  [ "${lines[3]}" = "1" ]
  [ "${lines[4]}" = "1" ]
}
