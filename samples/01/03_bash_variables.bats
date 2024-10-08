#!/usr/bin/env bats

@test "bash variables" {
  run ./03_bash_variables.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "123helloHello, world" ]
}
