#!/usr/bin/env bash

# TODO: remove brute force install, create symlinks
cp .* ~ 2>/dev/null


unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     bashrc_file=$HOME/.bashrc;;
    Darwin*)    bashrc_file=$HOME/.bash_profile;;
    *)          echo "[INFO]: Supported only on Linux and Mac. For other OSes carry out the following steps manually";;
esac

printf ". ~/.basha\n" >> ${bashrc_file};

echo "[INFO]: dotfiles setup complete"
