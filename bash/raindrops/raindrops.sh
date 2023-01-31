#!/usr/bin/env bash

main () {
  NUM=$1
  MESSAGE=""

  if [[ $((NUM%3)) == 0 ]]; then
    MESSAGE="Pling"
  fi
  if [[ $((NUM%5)) == 0 ]]; then
    MESSAGE="${MESSAGE}Plang"
  fi
  if [[ $((NUM%7)) == 0 ]]; then
    MESSAGE="${MESSAGE}Plong"
  fi
  if [[ -z $MESSAGE ]]; then
    MESSAGE=$NUM
  fi

  echo "$MESSAGE"
}

main "$@"
