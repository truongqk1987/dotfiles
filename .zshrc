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

# KHỞI CHẠY OH MY ZSH (Đây là dòng bạn đang thiếu)
source $ZSH/oh-my-zsh.sh

# ENV params
export EDITOR="nvim"
export TERM="xterm-256color"
export WORKSPACE=~/Projects
export PETSPACE=~/Pets
export PATH="$HOME/.local/bin:$PATH"

# Alias & Functions
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh

# Setup NVM (lazy-loaded for faster shell startup)
export NVM_DIR="$HOME/.nvm"
nvm_lazy_load() {
  unset -f nvm node npm npx yarn
  source "$(brew --prefix nvm)/nvm.sh"
}
nvm() { nvm_lazy_load; nvm "$@"; }
node() { nvm_lazy_load; node "$@"; }
npm() { nvm_lazy_load; npm "$@"; }
npx() { nvm_lazy_load; npx "$@"; }
yarn() { nvm_lazy_load; yarn "$@"; }