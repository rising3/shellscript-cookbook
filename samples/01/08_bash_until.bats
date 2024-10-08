#!/usr/bin/env bats

@test "bash until - sum" {
  run ./08_bash_until.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "4" ]
}
