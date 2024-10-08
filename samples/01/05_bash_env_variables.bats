#!/usr/bin/env bats

@test "bash env variables" {
  run ./05_bash_env_variables.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "test1test2test3" ]

  [ -z "${test1}" ]
  [ -z "${ENV_TEST1}" ]
  [ -z "${ENV_TEST2}" ]
  [ -z "${ENV_TEST3}" ]
}
