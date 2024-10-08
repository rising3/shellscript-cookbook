#!/usr/bin/env bats

@test "bash while - sum" {
  run ./08_bash_while.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "4" ]
}
