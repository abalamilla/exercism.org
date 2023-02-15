#!/usr/bin/env bash

main() {
 SENTENCE=${1^^}

 [[ -z $SENTENCE ]] && echo "false" && exit 0

 for c in {A..Z}
 do
   [[ ! $SENTENCE =~ $c ]] && echo "false" && exit 0
 done

 echo "true"
}

main "$@"
