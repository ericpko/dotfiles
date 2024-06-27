# My Dotfiles

This repo contains my personal dotfiles. It probably won't be useful to anyone else.

# New system install

Install everything in the following order.

## [Fonts](https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e)

- brew install --cask font-jetbrains-mono-nerd-font
- brew install --cask font-meslo-lg-nerd-font
- brew install --cask font-noto-nerd-font
- brew install --cask font-roboto
- brew install --cask font-roboto-mono-nerd-font
- brew install --cask font-source-sans-3
- brew install --cask font-hack-nerd-font


## oh-my-zsh

Install oh-my-zsh first, then decide if you want to install
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md),
[zsh-completions](https://github.com/zsh-users/zsh-completions), and
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
through homebrew on as oh-my-zsh plugin (git) installs. If you choose homebrew, read
the homebrew page to see what needs to be added to .zshrc file.

Easier to just install through oh-my-zsh plugins.

1. install [oh-my-zsh](https://ohmyz.sh)
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
1. install [zsh-completions](https://github.com/zsh-users/zsh-completions)
1. install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


## Terminal

1. brew install --cask alacritty
1. brew install helix
1. brew install starship
1. brew install koekeishiya/formulae/[skhd](https://github.com/koekeishiya/skhd) or brew install --cask thor
1. brew install --cask zed@preview
1. clone this repo into $HOME/Developer and copy dotfiles into correct places
1. NOTE: The dotfiles/.config/alacritty/themes subdirectory might be a [separate git repo](https://github.com/alacritty/alacritty-theme).
1. install rust lang


## Homebrew

### Formulae

- brew install gh
- brew install bat
- brew install eza
- brew install oven-sh/bun/bun
- brew install dust
- brew install fd
- brew install lf
- brew install neovim (maybe)
- brew install node (maybe)
- brew install procs
- brew install ripgrep
- brew install sd
- brew install taplo
- brew install tlrc
- brew install tree-sitter
- brew install typescript
- brew install typescript-language-server
- brew install vscode-langservers-extracted

### Casks
- brew install --cask appcleaner
- brew install --cask chatgpt
- brew install --cask docker
- brew install --cask iina
- brew install --cask maccy
- brew install --cask raycast
- brew install --cask shottr
- brew install --cask thor (maybe)
- brew install --cask vlc
- brew install --cask transmission
- brew install --cask warp
- brew install --cask zoom
- brew install --cask tradingview
- brew install --cask hyperkey
- brew install --cask nordvpn
- brew install --cask ledger-live
