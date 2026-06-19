# dotfiles

Personal macOS setup: zsh (oh-my-zsh), tmux, neovim, fonts, and a Homebrew package list.

## What's inside

| Path | Purpose |
|---|---|
| `.zshrc` | oh-my-zsh config, env vars, sources `zsh/aliases.zsh` and `zsh/functions.zsh` |
| `zsh/aliases.zsh` | shell aliases |
| `zsh/functions.zsh` | shell functions (git helpers, SSH key helpers, etc.) |
| `.tmux.conf` | tmux key bindings and style |
| `nvim/` | neovim config (`init.vim` + `plugins.vim`/`basic.vim`/`maps.vim`, vim-plug, coc.nvim settings) |
| `Fonts/` | Powerline symbols font for the terminal |
| `Brewfile` | Homebrew formulae and casks |
| `install.sh` | bootstraps a new machine |

## Prerequisites

- macOS
- Internet access (the install script installs Homebrew itself if it's missing)

## Bootstrap a new machine

```sh
git clone <this-repo-url> ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

Then open a new terminal tab (or `source ~/.zshrc`) to pick everything up.

The script symlinks `.zshrc`, `.tmux.conf`, `nvim/init.vim`, and `nvim/coc-settings.json` into place, so editing the live files in `~/` or `~/.config/nvim/` edits this repo directly — there's no separate "copy" step to remember.

## Updating

```sh
cd ~/dotfiles
git pull
brew bundle --file=Brewfile   # picks up any new/removed packages
```

Since configs are symlinked, shell/tmux/nvim changes take effect as soon as you pull — no re-copying needed. Re-run `./install.sh` if you need to pick up a newly added symlink or plugin install step.

## SSH helpers

Defined in `zsh/functions.zsh`:

- `genSSHKey` — generate a new ed25519 key (`ssh-keygen -t ed25519`)
- `usePersonalSSH` — clear loaded SSH identities and load `~/.ssh/personal/id_rsa`
- `useMainSSH` — clear loaded SSH identities and load `~/.ssh/id_rsa`
- `copySSH` — copy `~/.ssh/id_rsa.pub` to the clipboard

## Env vars

Set in `.zshrc`:

- `DOTFILES` — path to this repo (`~/dotfiles`)
- `WORKSPACE` — projects folder (`~/Projects`), `wspace` alias `cd`s here
- `PETSPACE` — side-projects folder (`~/Pets`), `pspace` alias `cd`s here
