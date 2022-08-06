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
  git checkout master;
  git pull -f origin master;
  git checkout -b $1;
}

# Reset zsh aliases
delAliases() {
  unalias -m '*'
}
