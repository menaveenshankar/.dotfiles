#!/usr/bin/env bash

# display current branch at prompt
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# function to display popup message
function infomsg {
    zenity --info --text="$1"
}

function donemsg {
    infomsg "done"
}

function bzlfind {
    bzlst "$1" | grep "$2"
}

# if tensorflow is using gpu
function tfgpu {
  isgpu=$(python -c 'import tensorflow as tf; sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))' 2>/dev/null | grep -c -i gpu)
  if [ ${isgpu} -gt 0 ]; then
    echo -e '\e[92mYuhoo, TF is using GPU!\e[39m';
  else
    echo -e '\e[91m(W)TF is not using GPU!!!\e[39m';
  fi
}

# climb up given number of dirs
# e.g. "cdn 4" will change current dir to 4 dirs above
function cdn {
        for i in $(seq 1 $1); do cd ..; done
}

