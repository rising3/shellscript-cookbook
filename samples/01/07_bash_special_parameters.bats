#!/usr/bin/env bats

@test "bash special parameters" {
  run ./07_bash_special_parameters.sh arg1 arg2 arg3

  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = "./07_bash_special_parameters.sh" ]
  [ "${lines[1]}" = "arg1 arg3" ]
  [ "${lines[2]}" = "arg1 arg2 arg3" ]
  [ "${lines[3]}" = "arg1 arg2 arg3" ]
  [ "${lines[4]}" -eq 3 ]
  [ "${lines[5]}" -eq 0 ]
}
