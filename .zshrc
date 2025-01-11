# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Dotfiles folder
export DOTFILES=~/dotfiles

ZSH_THEME="amuse"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf
)

# ENV params
export EDITOR="nvim"
export TERM="xterm-256color"
export WORKSPACE=~/Projects
export PETSPACE=~/Pets
export PATH="/usr/bin:$PATH"

# Alias & Functions
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh

# Setup NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
