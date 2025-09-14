# My Dotfiles

This repo contains my personal dotfiles. It probably won't be useful to anyone else.

# New system install

Install everything in the following order.

## Fonts

- brew install --cask font-sf-pro
- brew install --cask font-jetbrains-mono-nerd-font
- brew install --cask font-meslo-lg-nerd-font
- brew install --cask font-noto-nerd-font
- brew install --cask font-roboto
- brew install --cask font-roboto-mono-nerd-font
- brew install --cask font-hack-nerd-font
- brew install --cask font-blex-mono-nerd-font
  - IBM Plex Mono
- brew install --cask font-caskaydia-cove-nerd-font
  - Open Source Caskaydia Code
- brew install --cask font-zed-mono-nerd-font
- brew install --cask font-commit-mono-nerd-font
- brew install --cask font-maple-mono-nf


## oh-my-zsh

Oh-my-zsh can be installed through homebrew or git. It's easier just to go through git and install them as plugins.
Instructions are on the homebrew page if you decide to install through brew.

1. install [oh-my-zsh](https://ohmyz.sh)
  - Consider trying carapace completions instead?
  - brew install carapace
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
1. install [zsh-completions](https://github.com/zsh-users/zsh-completions)
1. install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


## Terminal

1. brew install --cask ghostty@tip
1. brew install helix
1. brew install starship
1. brew install --cask zed@preview
  - open zed and install the CLI so zed can be opened from the terminal.
1. clone this repo into $HOME/Developer and copy dotfiles into correct places


## Rust Language

1. install Rust
1. brew install cargo-binstall
1. brew install cargo-update
1. brew install cargo-edit
1. brew install bacon
  - this is the new cargo-watch
1. brew install sqlx-cli


## Zig Language

- Install Zig Version Manager for now [zvm](https://www.zvm.app)
  - add zvm to .zshrc (copy everything from .profile)
  - zvm i --zls master
<!-- - brew install zig -->
<!-- - brew install zls -->


## Python Language

- brew install uv
  - Python package manager written in Rust. Replaces pip, poetry, virtualenv, etc.
- Keep an eye on Pyrefly vs ty for type checking
- brew install pyrefly
  - check helix --health
  - add [pyrefly](https://pyrefly.org/en/docs/IDE/#helix) to helix


## Web Development

- brew install typescript
- brew install typescript-language-server
- brew install vscode-langservers-extracted
- brew install tailwindcss-language-server
- brew install --cask yaak
- brew install --cask bruno


## Tailscale

- brew install --cask tailscale
- [Install tailscale on Arch Linux](https://tailscale.com/kb/1036/install-arch)
- [Set up VPS Tunneling](https://mattstein.com/thoughts/vps-ssh-tailscale/)


## Containers

- brew install --cask docker
- brew install docker
- brew install --cask podman-desktop
- brew install podman
- brew install --cask orbstack
  - Docker alternative for Mac
- brew install --cask container


## MacOS
- brew install koekeishiya/formulae/[skhd](https://github.com/koekeishiya/skhd) or brew install --cask thor
  - Don't need this anymore, just use raycast
- brew install kanata
  - have to install karabiner-elements first:
  - brew install --cask karabiner-elements
- brew install --cask hyperkey
- brew install --cask thor
- brew install --cask leader-key
- brew install --cask antinote
- brew install --cask dockey
- brew install --cask appcleaner
- brew install --cask iina
- brew install --cask maccy (included in Raycast)
- brew install --cask raycast
- brew install --cask transmission
- brew install telnet


## AI
- brew install --cask chatgpt
- brew install --cask claude
- brew install codex
- bun install -g @anthropic-ai/claude-code
- brew install --cask warp
- brew install --cask zed@preview



## Homebrew

### Command-line Tools

- brew install gh
  - gh auth login
- brew install ollama
- brew install bat
- brew install eza
- brew install lazygit
- brew install oven-sh/bun/bun
- brew install dust
- brew install fd
- brew install lf
- brew install procs
- brew install ripgrep
- brew install sd
- brew install taplo
- brew install tlrc
- brew install tree-sitter
- brew install yazi
- brew install zoxide
- brew install just
- brew install fastfetch
- Linux only - dysk
- brew install jj
  - git alternative written in Rust
- brew install carapace
  - Multi-shell multi-command argument completer written in Golang
- brew tap philocalyst/tap && brew install caligula
  - TUI burning tool written in Rust

### Applications

- brew install --cask alacritty (maybe)
  - NOTE: The dotfiles/.config/alacritty/themes subdirectory is a [separate git repo](https://github.com/alacritty/alacritty-theme).
- brew install --cask discord
- brew install --cask vlc
- brew install --cask zoom
- brew install --cask tradingview
- brew install --cask ledger-live
