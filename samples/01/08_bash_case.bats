#!/usr/bin/env bats

@test "bash case - YES" {
  run ./08_bash_case.sh yes

  [ "${status}" -eq 0 ]
  [ "${output}" = "YES" ]
}

@test "bash case - NO" {
  run ./08_bash_case.sh no

  [ "${status}" -eq 0 ]
  [ "${output}" = "NO" ]
}

@test "bash case - NOT ALL MATCHES" {
  run ./08_bash_case.sh

  [ "${status}" -eq 1 ]
  [ "${output}" = "NOT ALL MATCHES" ]
}
