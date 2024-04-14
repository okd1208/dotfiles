#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
source $HOME/.zshenv

# ZSH_THEME="clear"
eval "$(anyenv init -)"

ssh-add ~/.ssh/id_rsa

# GOPATH=$HOME/go;

. $HOME/.asdf/asdf.sh
# ↓多分いらない
# . $HOME/.asdf/completions/asdf.bash

# pnpm
export PNPM_HOME="/Users/okadayuutarou/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
