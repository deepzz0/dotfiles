#!/bin/sh

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com
#
# Dependencies:
#   Mac:
#     * none
#   Linux:
#     * cron
#     * crul / wget

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

acme=~/.acme.sh/acme.sh

main() {
  if [ -f "$acme"]; then
    _green "acme.sh is already installed. source ~/.profile?";
    return 0;
  else
    echo "acme.sh is about to installed...";
    if _exists "curl"; then
      curl https://get.acme.sh | sh;
    elif _exists "wget"; then
      wget -O -  https://get.acme.sh | sh;
    else
      _red "Installation failed, not found command: curl or wget";
      return 1;
    fi
    _green "acme.sh is installed to ~/.acme.sh";
  fi
}

main "$@"
