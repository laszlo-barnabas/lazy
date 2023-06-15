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
}

alias r="source $BASH_SOURCE"