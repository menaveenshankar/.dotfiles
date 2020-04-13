#!/usr/bin/env bash

# navigation
alias ..="cd .."
alias ...="cd ../.."

# calendar week number
alias cw='date +%V'

# disk usage
alias du="du -sh"
alias df="df -h"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# find/grep
alias grf="grep -lR"
alias gew="grep -w"

# git
alias gco="git-coco"
alias gci="git commit"
alias gck="git checkout"
alias gst="git status"
alias gl="git log"
alias gp="git pull"
alias gpc="git push"
alias gfb="git fb"
alias gs="git st"
alias gsp="git sp"
alias gsl="git stash list"
alias gld="git ld"
alias gca="git ca"
alias gcan="git can"
alias gcm="git cm"
alias gpb="git pb"
alias gpom="git pom"
alias grb="git rb"
alias glc="git lc"
alias ga="git add"
alias gd="git diff"
alias gdh="git dh"
alias gdm="git dm"
alias gcb="git cb"

# docker
alias drc="docker rm $(docker ps -q -f status=exited)"