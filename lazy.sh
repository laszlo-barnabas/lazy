#!/bin/bash

init() {
  HISTFILE=$PWD/hist
  history -c
  history -w
  HISTIGNORE="history:hh:hint"
  PROMPT_COMMAND="hh;$PROMPT_COMMAND"
}

hh() {
  history -a
}

hint() {
    lines=${1:-1}
    curl -s lalyo.sh/hist | tail -${lines}
}
alias r="source $BASH_SOURCE"