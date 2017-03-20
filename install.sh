#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#vim

ln -sfv ${BASEDIR}/vim/vimrc ~/.vimrc

rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall

#tmux

ln -sfv ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

#i3

ln -sfv ${BASEDIR}/i3/config ~/.i3/config
ln -sfv ${BASEDIR}/i3/i3blocks.conf ~/.i3/i3blocks.conf



