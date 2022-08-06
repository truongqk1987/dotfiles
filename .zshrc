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

# ENVs 
export EDITOR="nvim"
export TERM="xterm-256color"
export PATH=$HOME/bin:$PATH
export WORKSPACE=~/Projects
export PETSPACE=~/Pets

source $ZSH/oh-my-zsh.sh

# Alias & Functions
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh

# Fzf functions
source $DOTFILES/zsh/fzf.zsh

# Allow [ or ] whereever you want
unsetopt nomatch

# Setup NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
