#!/bin/bash

init() {
  HISTFILE=$PWD/hist
  history -c
  history -w
  HISTIGNORE="history:hh"
  PROMPT_COMMAND="hh;$PROMPT_COMMAND"
}

hh() {
  history -a
  aws s3 cp hist s3://lalyo.sh --acl public-read &> /dev/null
}

hint() {
    curl -s lalyo.sh/hist
}
alias r="source $BASH_SOURCE"