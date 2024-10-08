#!/usr/bin/env bats

@test "bash for - sum" {
  run ./08_bash_for.sh 1 2 3 4 5

  [ "${status}" -eq 0 ]
  [ "${output}" = "4" ]
}

@test "bash for - no args" {
  run ./08_bash_for.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "0" ]
}

@test "bash for - continue" {
  run ./08_bash_for.sh 2 4

  [ "${status}" -eq 0 ]
  [ "${output}" = "0" ]
}

@test "bash for - break" {
  run ./08_bash_for.sh 5 1 2 3 4 5

  [ "${status}" -eq 0 ]
  [ "${output}" = "0" ]
}
