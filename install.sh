#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#vim

ln -s ${BASEDIR}/vim/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

#tmux

ln -s ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

#i3

ln -s ${BASEDIR}/i3/config ~/.i3/config
ln -s ${BASEDIR}/i3/i3blocks.conf ~/.i3/i3blocks.conf

