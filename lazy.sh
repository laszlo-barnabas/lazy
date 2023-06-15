#!/bin/bash

init() {
  HISTFILE=$PWD/hist
  history -c
  history -w
  HISTIGNORE="history:hh"
}

hh() {
  history -a
}

alias r="source $BASH_SOURCE"