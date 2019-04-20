#!/bin/sh

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com
#
# Dependencies:
#   Mac:
#     * Homebrew/brew
#     * Tmux 2.3

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

main() {
  if [ "$(uname -s)" != "Darwin" ]; then
    _red "Unsupported operating system, Darwin?";
    return 1;
  fi
  if _exists "tmux"; then
    if [ -f ~/.tmux.conf ]; then
      mv ~/.tmux.conf ~/.tmux.conf.bak;
    fi
    cp tmux/tmux.conf ~/.tmux.conf;
  else
    _red "Not found tmux, brew install tmux?"
    return 1;
  fi
  _green "Tmux config is installed to ~/.tmux.conf."
}

main "$@"
