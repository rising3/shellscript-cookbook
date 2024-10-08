#!/usr/bin/env bats

@test "conditional_constructs [[...]] 1" {
  run ./06_conditional_constructs1.sh

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "0" ]
  [ "${lines[1]}" = "0" ]
}
