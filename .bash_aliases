#!/usr/bin/env bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias -- -="cd -"

# Get week number
alias cw='date +%V'

# disk usage
alias du="du -sh"
alias df="df -h"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# git
alias gco="git-coco"
alias gst="git status"
alias glog="git log"

