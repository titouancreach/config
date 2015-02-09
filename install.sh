#!/usr/bin/env bash

# keep old file safe

if [ -a "~/.emacs" ]
then
    mv ~/.emacs ~/.emacs.old
fi

if [ -a "~/.emacs.d" ]
then
    mv ~/.emacs.d ~/.emacs.d.old
fi

if [ -a "~/.vim" ]
then
    mv ~/.vim ~/.vim.old
fi

if [ -a "~/.vimrc" ]
then
    mv ~/.vimrc ~/.vimrc.old
fi

cp emacs ~/.emacs
cp -r vim ~/.vim
cp -r emacs.d ~/.emacs.d
cp vimrc ~/.vimrc

