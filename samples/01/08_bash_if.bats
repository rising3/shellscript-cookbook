#!/usr/bin/env bats

@test "bash if - YES" {
  run ./08_bash_if.sh yes

  [ "${status}" -eq 0 ]
  [ "${output}" = "YES" ]
}

@test "bash if - NO" {
  run ./08_bash_if.sh no

  [ "${status}" -eq 0 ]
  [ "${output}" = "NO" ]
}

@test "bash if - ERROR" {
  run ./08_bash_if.sh

  [ "${status}" -eq 1 ]
  [ "${output}" = "ERROR" ]
}
