#!/usr/bin/env bash
set -Eeuo pipefail

for _ in {1..5}; do
  tr '\n' ' ' < example.json | sed 's/ \+//g'
  echo
done

