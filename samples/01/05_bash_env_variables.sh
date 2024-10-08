#!/usr/bin/env bash
#
# bash env variable.
# shellcheck disable=SC2034        # warning
# shellcheck disable=SC2086        # info

test1=test1

ENV_TEST1=test1
export ENV_TEST1

export ENV_TEST2=test2

declare -x ENV_TEST3=test3

bash ./05_bash_env_variables_child.sh
