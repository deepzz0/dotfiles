#!/bin/sh

# Makefile for https://github.com/deepzz0/dotfiles
# Maintainer deepzz.qi@gmail.com
#
# Dependencies:
#   Mac:
#     * macOS High Sierra   
#     * Homebrew/brew
#   Linux:
#     * none

set -e

_green() {
  printf '\033[1;31;32m%b\033[0m' "$1"
}

_red() {
  printf '\033[1;31;40m%b\033[0m' "$1"
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
  if _exists "zsh"; then
    _green "ZSH is already installed."
    return 0;
  fi
  case "$(uname -s)" in
    Darwin)
      if _exists "brew"; then
        brew install zsh zsh-completions \
          && chsh -s /bin/zsh;
      else
        _red "Not found brew, ./homebrew.sh?";
        return 1;
      fi
      ;;
    Linux)
      if _exists "apt"; then
        sudo apt update \
          && sudo apt install -y zsh;
      elif _exists "dnf"; then
        dnf install -y zsh;
      elif _exists "yum"; then
        sudo yum update \
          && sudo yum -y install zsh;
      elif _exists "apk"; then
        apk update \
          && apk add zsh;
      else
        _red "Not found valid command.";
        return 1;
      fi
      ;;
    *)
      echo "Unsupported operating system, Darwin or Linux?";
      return 1;
      ;;
  esac
  _green "ZSH successfully installed."
}

main "$@"
