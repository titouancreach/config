#!/usr/bin/env bash

# keep old file safe

if [ -e "~/.emacs" ]
then
    mv ~/.emacs ~/.emacs.old
    echo ".emacs moved to .emacs.old"
fi

if [ -e "~/.emacs.d" ]
then
    mv ~/.emacs.d ~/.emacs.d.old
fi

if [ -e "~/.vim" ]
then
    mv ~/.vim ~/.vim.old
fi

if [ -e "~/.vimrc" ]
then
    mv ~/.vimrc ~/.vimrc.old
fi

cp emacs ~/.emacs
cp -r vim ~/.vim
cp -r emacs.d ~/.emacs.d
cp vimrc ~/.vimrc

