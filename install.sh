#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

read -p "This will overwrite any existing config, are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

	# vim {{{ #
	ln -sfv ${BASEDIR}/vim/vimrc ~/.vimrc

	rm -rf ~/.vim
	mkdir -pv ~/.vim/swapfiles
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	vim +PluginInstall
	# }}} vim #

	# tmux {{{ #
	ln -sfv ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf
	# }}} tmux #

	# zsh {{{ #
	ln -sfv ${BASEDIR}/zsh/zshrc ~/.zshrc
	ln -sfv ${BASEDIR}/zsh/aliases ~/.aliases
	# }}} zsh #

	# liquidprompt {{{ #
	git clone --branch stable https://github.com/nojhan/liquidprompt.git ~/liquidprompt
	ln -svf ${BASEDIR}/liquidprompt/liquidpromptrc ~/.config/liquidpromptrc
	ln -svf ${BASEDIR}/liquidprompt/prompt.theme ~/.config/prompt.theme
	# }}} liquidprompt #

fi
