cp .bash_aliases ~
cp .vimrc ~
cp .screenrc ~
cp .bash_me ~


unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     bashrc_file=$HOME/.bashrc;;
    Darwin*)    bashrc_file=$HOME/.bash_profile;;
    *)          echo "[INFO]: Supported only on Linux and Mac. For other OSes carry out the following steps manually";;
esac

printf ". ~/.bash_me\n" >> ${bashrc_file};

echo "[INFO]: dotfiles setup complete"
