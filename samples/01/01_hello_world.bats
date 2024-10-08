#!/usr/bin/env bats

@test "say Hello,world" {
  run ./01_hello_world.sh

  [ "${status}" -eq 0 ]
  [ "${output}" = "Hello,world" ]
}
