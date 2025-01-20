#!/bin/sh


# Set admin
sudo

# Make default folders
mkdir ~/Pets 
mkdir ~/Projects

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/truongqk1987/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/truongqk1987/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


# Commands
brew install tmux tmuxinator
brew install neovim
brew install node yarn nvm
brew install cmake
brew install bat asdf fzf tree
brew install exa
brew install jq thefuck

# Apps
brew install --cask google-chrome
brew install --cask ngrok
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask mockoon
brew install --cask obsidian
brew install --cask gotiengviet
brew install --cask drawio
brew install --cask docker
brew install --cask postman postman-agent postman-cli
brew install --cask orbstack
brew install --cask warp

# Request for Apple chip
npm i -g node-gyp

# Install Oh My Zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-syntax-highlighting (https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install vim-plug (https://github.com/junegunn/vim-plug)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Init zsh
cp -fR ~/dotfiles/.zshrc ~/
source $ZSH/oh-my-zsh.sh
source ~/.zshrc

# Init tmux
cp -fR ~/dotfiles/.tmux.conf ~/

# Init nvim
mkdir ~/.config/nvim
cp -fR ~/dotfiles/nvim/init.vim ~/.config/nvim

# Generate SSH key for github
ssh-keygen -t rsa














