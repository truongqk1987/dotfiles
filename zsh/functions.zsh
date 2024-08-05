# Speed up zsh startup - https://gist.github.com/ctechols/ca1035271ad134841284#gistcomment-2308206
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

mkcd() {
  mkdir "$1"
  cd "$1"
}

# Copy file content to clipboard
ctc() {
  if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    pbcopy < $1
  else
    cat $1 | xclip -i
  fi
}

# Checkout new branch
gcc() {
  git reset --hard;
  git clean -df
  git checkout $1;
  git pull -f origin $1;
  git checkout -b $2;
}

# Reset zsh aliases
delAliases() {
  unalias -m '*'
}

usePersonalSSH() {
  ssh-add -D
  ssh-add ~/.ssh/personal/id_rsa
}

useMainSSH() {
  ssh-add -D
  ssh-add ~/.ssh/id_rsa
}