.PHONY: vim-plug macvim neovim

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com
# 

plug_path?=~/.vim/autoload/plug.vim

vim-plug:
	@if [ ! -f $(plug_path) ]; then \
	    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; \
	fi;

macvim:
	@if [ -f ~/.vimrc ]; then \
	    mv ~/.vimrc ~/.vimrc.bak; \
	fi;
	@cp macvim/.vimrc ~/.vimrc



neovim:vim-plug
	@if [ -f ~/.nvimrc ]; then \
	    mv ~/.nvimrc ~/.nvimrc.bak; \
	fi;
	@cp neovim/.nvimrc ~/.nvimrc
	
