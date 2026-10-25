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


## Nushell
- brew install nushell


## oh-my-zsh
Oh-my-zsh can be installed through homebrew or git. It's easier just to go through git and install them as plugins.
Instructions are on the homebrew page if you decide to install through brew.

1. install [oh-my-zsh](https://ohmyz.sh)
  - Use carapace completions instead of zsh-completions
  - brew install carapace
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
1. install [zsh-completions](https://github.com/zsh-users/zsh-completions)
1. install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


## Terminal
1. brew install --cask ghostty@tip
  - On MacOS, go to settings > Keyboard > Keyboard Shortcuts... > App Shortcuts > Add App Ghostty Title: Hide Ghostty, then make a random new bind for Hide Ghostty
1. brew install helix
1. brew install starship
1. clone this repo into $HOME/Developer and copy dotfiles into correct places


## Languages

### Rust Language
1. Install Rust
  - https://rust-lang.org/tools/install/
1. rustup component add rust-analyzer
1. Use package manager (brew or pacman/paru/yay) to install these:
1. cargo install cargo-binstall
1. cargo install cargo-update
1. cargo install cargo-edit
1. cargo install bacon
  - this is the new cargo-watch
1. cargo install sqlx-cli


### Bun
- curl -fsSL https://bun.sh/install | bash


### Zig Language
- Install Zig Version Manager for now [zvm](https://www.zvm.app)
  - add zvm to .zshrc (copy everything from .profile)
  - zvm i --zls master


### Python Language
- brew install uv
  - curl -LsSf https://astral.sh/uv/install.sh | sh
  - Python package manager written in Rust. Replaces pip, poetry, virtualenv, etc.
- Keep an eye on Pyrefly vs ty for type checking
- Install Pyrefly inside project directory:
  - uvx pyrefly init
  - uvx pyrefly check --summarize-errors
- check helix --health
- add [pyrefly](https://pyrefly.org/en/docs/IDE/#helix) to helix


### Web Development
- brew install typescript
- brew install typescript-language-server
- brew install vscode-langservers-extracted
- brew install tailwindcss-language-server
- brew install --cask hoppscotch
- brew install --cask yaak
- brew install playwright-cli


## AI Tools
- Claude Code
- Claude Desktop
- ChatGPT

- Install skills from [skills.sh](skills.sh)
  - bunx skills add https://github.com/anthropics/skills --skill frontend-design


## Tailscale
- brew install --cask tailscale
- [Install tailscale on Arch Linux](https://tailscale.com/kb/1036/install-arch)
- [Set up VPS Tunneling](https://mattstein.com/thoughts/vps-ssh-tailscale/)


## Homebrew/Linux

### Command-line Tools
https://terminaltrove.com/
https://terminaltrove.com/language/rust/

Install everything in one go (mole is macOS only, dysk is Linux only):

macOS:
```bash
brew install gh bat eza lazygit dust fd lf procs ripgrep sd taplo tealdeer tree-sitter fzf yazi zoxide just atuin fastfetch bottom btop carapace glow llmfit herdr croc mole
```

Arch Linux (note the different package names: github-cli, taplo-cli, tree-sitter-cli):
```bash
paru -S --needed github-cli bat eza lazygit dust fd lf procs ripgrep sd taplo-cli tealdeer tree-sitter-cli fzf yazi zoxide just atuin fastfetch bottom btop carapace glow llmfit herdr croc dysk
```

- gh auth login

Optional (not always installed):
- ollama
- jj
  - git alternative written in Rust
- brew tap philocalyst/tap && brew install caligula
  - TUI burning tool written in Rust
- Typst
  - tinymist, typstyle
  - [Zathura](https://github.com/homebrew-zathura/homebrew-zathura) is a pdf viewer in the terminal
- frpc
- zellij


### Applications
- brew install --cask discord
- brew install --cask zoom
- brew install --cask tradingview
- brew install --cask trezor-suite
- brew install --cask ledger-live


### MacOS specific
- brew install --cask raycast
- brew install --cask sanesidebuttons
- brew install --cask hyperkey
- brew install --cask appcleaner
- brew install --cask iina
- brew install --cask transmission
- brew install --cask antinote
- brew install mole
- brew install --cask itsycal
- brew install --cask maccy



### Niri/Linux
A note about keybinds: Niri's MOD key is <alt> (set via `mod-key "Alt"` in
`.config/niri/cfg/input.kdl`), because <alt> sits where <command> does on a Mac.
On top of that, xremap adds Mac-style app shortcuts with per-app rules
(alt-t/alt-w for browser tabs, alt-a/c/v select/copy/paste, win-backspace /
alt-backspace word/line delete — translated to Ctrl+Shift in the terminal and
readline keys at the shell). Config: `.config/xremap/config.yml` (hot-reloads on
save). Noctalia is the shell: bar, launcher (mod+space), lock/idle, session menu,
and it themes niri's colors. The niri config uses CachyOS's structure:
`config.kdl` + `cfg/*.kdl` modules.

Don't bother with: Toshy (wants the whole modifier row) or a Ctrl/Alt XKB swap
with Ctrl as mod (niri's Mod+letter binds globally eat Ctrl+L/F/S/R in every app).

xremap setup:
```bash
paru -S xremap-niri-bin
echo 'KERNEL=="uinput", GROUP="input", MODE="0660"' | sudo tee /etc/udev/rules.d/99-xremap.rules
sudo udevadm control --reload-rules && sudo udevadm trigger --name-match=uinput
sudo gpasswd -a $USER input   # log out/in after
systemctl --user enable --now xremap.service   # unit in .config/systemd/user/
```

[Awesome niri](https://github.com/Vortriz/awesome-niri)
- fix ghostty terminfo
  - this might be fixed in Linux by default in the future
- [niri animations](https://github.com/XansiVA/nirimation)
- yay impala
- yay bluetui
- paru mpv
- yay zathura
  - install zathura mupdf as well
- yay cider
  - check email for code
- Idle/lock is handled by noctalia. Alternatives for reference:
  - [stasis](https://github.com/saltnpepper97/stasis)
  - swayidle


## VPS
1. Create new user
1. Add user to groups
1. Install tailscale
    - Start tailscale and authenticate
    - Make sure tailscale starts on boot up
1. Install ufw
```bash
# Reset UFW to default state (if needed)
sudo ufw --force reset

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow HTTP and HTTPS
sudo ufw allow http
sudo ufw allow https

# Allow all traffic on Tailscale interface
sudo ufw allow in on tailscale0

# Enable UFW
sudo ufw enable

# Check status
sudo ufw status verbose
```


## Pi-hole
1. Check router settings
    - Go to DHCP Server and set the Pi-hole to a static IP address
    - Set the primary DNS to the pihole and secondary DNS to Cloudflare 1.1.1.1
    - Change the Router's Primary DNS to Cloudflare and secondary to whatever
2. Install Pi-hole
3. Set up auto updates for OS and Pi-hole
    - See Claude chat for more details
4. Install tailscale on Raspberry Pi
    - [Tailscale guide](https://tailscale.com/kb/1114/pi-hole)
5. Install ufw on Raspberry Pi
```bash
# Install UFW
sudo apt install ufw

# Allow local network
sudo ufw allow from 192.168.0.0/24 to any port 53 comment 'DNS from local network'
sudo ufw allow from 192.168.0.0/24 to any port 80 comment 'Pi-hole dashboard local'
sudo ufw allow from 192.168.0.0/24 to any port 22 comment 'SSH from local network'

# Allow Tailscale
sudo ufw allow in on tailscale0 comment 'Allow Tailscale'

# Deny everything else
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Enable firewall
sudo ufw enable
```
6. Permit all orgins on Pi-hole dashboard


## Containers
- brew install --cask docker
- brew install docker
- brew install --cask podman-desktop
- brew install podman
- brew install --cask orbstack
  - Docker alternative for Mac
- brew install --cask container
- brew install lazydocker
