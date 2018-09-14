#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

read -p "This will overwrite any existing config, are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	#vim

	ln -sfv ${BASEDIR}/vim/vimrc ~/.vimrc

	rm -rf ~/.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	vim +PluginInstall

	#tmux

	ln -sfv ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

	#i3

	ln -sfv ${BASEDIR}/i3/config ~/.config/i3/config
	ln -sfv ${BASEDIR}/i3/i3blocks.conf ~/.config/i3/i3blocks.conf

	#bash

	ln -sfv ${BASEDIR}/bash/bashrc ~/.bashrc
	ln -sfv ${BASEDIR}/bash/bash_aliases ~/.bash_aliases

	#X11

	ln -svf ${BASEDIR}/X11/Xresources ~/.Xresources
	xrdb -merge ~/.Xresources
fi
