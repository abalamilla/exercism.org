#!/usr/bin/env bash

main () {
  STRAND1=$1
  STRAND2=$2

  if [[ $# -gt 2 || $# -lt 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    return 255
  fi

  if [[ ${#STRAND1} != "${#STRAND2}" ]]; then
    echo strands must be of equal length
    return 255
  fi

  if [[ $STRAND1 == "$STRAND2" ]]; then
    echo 0
    return
  fi

 cmp -bl <(echo "$STRAND1") <(echo "$STRAND2") 2> /dev/null | wc -l | xargs
}

main "$@"
