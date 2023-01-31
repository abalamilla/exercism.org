#!/usr/bin/env bash

main () {
  VAL=$1
  RESULT="$(echo | awk '{n=split(VAL, INPUT, ""); i=1; SUM=0; while (i<=n) { SUM=SUM+INPUT[i]^n; i++;}; {print SUM}}' VAL="$VAL")"

  if [[ $VAL == "$RESULT" ]]; then
    echo true
  else
    echo false
  fi
}

main "$@"
