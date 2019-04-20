.PHONY: homebrew zsh macvim neovim tmux

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com

GIT_REPO=https://github.com/deepzz0/dotfiles

homebrew:
	@echo "installing homebrew..."
	@ ./homebrew.sh

zsh:
	@echo "installing zsh..."
	@cd ohmyzsh && ./install.sh

macvim:
	@echo "installing vim config..."
	@cd macvim && ./install.sh

neovim:
	@echo "installing neovim config..."
	@cd neovim && ./install.sh

tmux:
	@echo "installing tmux config..."
	@cd tmux && ./install.sh
