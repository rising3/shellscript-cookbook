#!/usr/bin/env bats

@test "conditional_constructs [[...]] pattern matches" {
  run ./06_conditional_constructs_pattern_matches.sh

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "0" ]
  [ "${lines[1]}" = "0" ]
  [ "${lines[2]}" = "1" ]
}
