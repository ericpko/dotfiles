# My Dotfiles

This repo contains my personal dotfiles. It probably won't be useful to anyone else.

# New system install

Install everything in the following order.

## [Fonts](https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e)

- brew install --cask font-sf-pro
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

1. brew install --cask ghostty
1. brew install helix
1. brew install starship
1. brew install koekeishiya/formulae/[skhd](https://github.com/koekeishiya/skhd) or brew install --cask thor
  - Maybe don't need this anymore and just use Raycast?
1. brew install --cask zed@preview
  - open zed and install the CLI so zed can be opened from the terminal.
1. clone this repo into $HOME/Developer and copy dotfiles into correct places


## Rust Language
1. install Rust
1. brew install cargo-binstall
1. cargo install cargo-update
1. cargo install cargo-edit
1. cargo install --locked bacon (new cargo-watch)


## Zig Language
- Install Zig Version Manager for now [zvm](https://www.zvm.app)
  - add zvm to .zshrc (copy everything from .profile)
  - zvm i --zls master
<!-- - brew install zig -->
<!-- - brew install zls -->


## Homebrew

### Formulae

- brew install gh
- brew install ollama
- brew install bat
- brew install eza
- brew install lazygit
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
- brew install podman
- brew install uv
  - Python package manager written in Rust. Replaces pip, poetry, virtualenv, etc.

### Casks
- brew install --cask zed@preview
- brew install --cask alacritty (maybe)
  - NOTE: The dotfiles/.config/alacritty/themes subdirectory is a [separate git repo](https://github.com/alacritty/alacritty-theme).
- brew install --cask appcleaner
- brew install --cask chatgpt
- brew install --cask claude
- brew install --cask discord
- brew install --cask iina
- brew install --cask maccy (included in Raycast)
- brew install --cask raycast
- brew install --cask shottr
- brew install --cask thor (maybe)
- brew install --cask vlc (maybe)
- brew install --cask transmission
- brew install --cask warp
- brew install --cask zoom
- brew install --cask tradingview
- brew install --cask hyperkey (no)
- brew install --cask nordvpn (no)
- brew install --cask ledger-live
- brew install --cask tailscale
- brew install --cask karabiner-elements
- brew install --cask leader-key
