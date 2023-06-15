#!/bin/bash

init() {
  HISTFILE=$PWD/hist
  history -c
  history -w
}