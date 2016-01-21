#!/bin/bash

set -x

install_vim_plug() {
	if ! [ -e $1/autoload/plug.vim ]; then
		curl -fLo $1/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	fi
}

# neovim
if hash nvim 2>/dev/null; then
	mkdir -p $HOME/.config/nvim
	install_vim_plug ~/.config/nvim
	ln -sf $(pwd)/vimrc $HOME/.config/nvim/init.vim

	# https://github.com/junegunn/vim-plug/issues/104
	# nvim +PlugInstall +qall
fi

# vim
if hash vim 2>/dev/null; then
	install_vim_plug ~/.vim
	ln -sf $(pwd)/vimrc $HOME/.vimrc
	vim +PlugInstall +qall
fi
