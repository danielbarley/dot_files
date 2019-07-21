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

	read -p "Using NeoVim? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		mkdir -pv ~/.config/nvim
		ln -sfv ~/.vim ~/.config/nvim
		ln -sfv ${BASEDIR}/vim/vimrc ~/.config/nvim/init.vim
	fi

	vim +PluginInstall

	#tmux

	ln -sfv ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

	#bash

	ln -sfv ${BASEDIR}/bash/bashrc ~/.bashrc
	ln -sfv ${BASEDIR}/bash/bash_aliases ~/.bash_aliases

	#zsh

	ln -sfv ${BASEDIR}/zsh/zshrc ~/.zshrc

	#X11

	ln -svf ${BASEDIR}/X11/Xresources ~/.Xresources
	xrdb -merge ~/.Xresources

	#liquidprompt

	ln -svf ${BASEDIR}/liquidprompt/liquidpromptrc ~/.config/liquidpromptrc
	ln -svf ${BASEDIR}/liquidprompt/prompt.theme ~/.config/prompt.theme

fi
