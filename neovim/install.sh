#!/bin/sh

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com
#
# Dependencies:
#   Mac:
#     * Homebrew/brew

set -e

_green() {
  printf '\033[1;31;32m%b\033[0m\n' "$1"
}

_red() {
  printf '\033[1;31;40m%b\033[0m\n' "$1"
}

_exists() {
  cmd="$1"
  if [ -z "$cmd" ]; then
    _red "Usage: _exists cmd"
    return 1
  fi

  if eval type type >/dev/null 2>&1; then
    eval type "$cmd" >/dev/null 2>&1
  elif command >/dev/null 2>&1; then
    command -v "$cmd" >/dev/null 2>&1
  else
    which "$cmd" >/dev/null 2>&1
  fi
  return "$?"
}


plug_path=~/.local/share/nvim/site/autoload/plug.vim
nvimrc=~/.config/nvim/init.vim

main() {
  if [ "$(uname -s)" != "Darwin" ]; then
    _red "Unsupported operating system, Darwin?";
    return 1;
  fi
  if _exists "nvim"; then
    if [ ! -f "$plug_path" ]; then
      curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
    fi
    if [ -f "$nvimrc" ]; then
      mv "$nvimrc" "$nvimrc".bak;
    fi
    cp nvimrc $nvimrc
  else
    _red "Not found neovim, brew install neovim?"
    return 1;
  fi
  _green "Neovim config is installed to $nvimrc."
}

main "$@"
