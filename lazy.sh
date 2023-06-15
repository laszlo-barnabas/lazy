#!/bin/bash

init(){
    HISTFILE=$PWD/hist
    history -c
    history -w
}

hh(){
    history -a
}

alias r=''