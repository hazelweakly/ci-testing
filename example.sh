#!/usr/bin/env bash

mapfile -t v < <(paste -d, <(printf "%s\n" {1..23}) <(printf "%s\n" {b..x}) <(printf "%s\n" {c..y}) <(printf "%s\n" {d..z}))
declare -a results=("true true" "true false" "false true" "false false")

for line in "${v[@]}"; do
  IFS="," read -r id a b c <<< "$line"
  IFS=" " read -r expected success <<< "${results[$((id % 4))]}"
  tr '\n' ' ' < example.json | sed \
    -e 's/ \+//g' \
    -e "s/A/$expected/" \
    -e "s/B/$success/" \
    -e "s/X/$a/" \
    -e "s/Y/$b/" \
    -e "s/Z/$c/"
  echo
done
