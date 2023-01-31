#!/usr/bin/env bash

main () {
  INPUT=$1
  ACRONYM=$(echo "$INPUT" | sed -E 's/[*?_ -]/\n/g' | sed -E 's/^(.).*/\1/g' | tr -d '\n')
  echo "${ACRONYM^^}"
}

main "$@"
