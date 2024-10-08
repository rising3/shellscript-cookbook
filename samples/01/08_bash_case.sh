#!/usr/bin/env bash
#
# bash case.

case "$1" in
  yes)
    echo "YES"
    ;;
  no)
    echo "NO"
    ;;
  *)
    echo "NOT ALL MATCHES"
    exit 1
    ;;
esac
