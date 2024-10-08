#!/usr/bin/env bats

@test "conditional_constructs [[...]] regex" {
  run ./06_conditional_constructs_regex.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "0" ]
}
