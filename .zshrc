#!/usr/bin/env zsh

# ────────────── PATH ──────────────
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.bun/bin"

# Homebrew BEFORE other paths (macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

# ZVM (Zig version manager)
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

# ────────────── Exports ──────────────
# export TERM="xterm-ghostty"
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export MANPAGER='less -X'

# 'hx' on macOS (Homebrew), 'helix' on Linux (pacman)
if [[ "$OSTYPE" == "darwin"* ]]; then
  export EDITOR='hx'
else
  export EDITOR='helix'
  alias hx="helix"
fi

# ────────────── oh-my-zsh ──────────────
export ZSH="$HOME/.oh-my-zsh"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git colored-man-pages zsh-autosuggestions
         zsh-syntax-highlighting sudo copypath)

source $ZSH/oh-my-zsh.sh

# ────────────── Aliases: config ──────────────
alias zshconfig="$EDITOR ~/.zshrc"
alias zshcfg="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'
alias sudo='sudo '   # expand aliases after sudo

# ────────────── Aliases: modern CLI replacements ──────────────
alias cat="bat"
alias grep="rg"
alias find="fd"
alias sed="sd"
alias du="dust"
alias ps="procs"
alias top="btm"
alias cd="z"

# eza (ls/tree)
alias ls="eza -lgh --icons --group-directories-first --git"
alias la="eza -lagh --icons --group-directories-first --git"
alias tree="eza -T --icons --group-directories-first --git"
alias lt="eza -T --icons --group-directories-first --git"
alias lt2="eza -T --level=2 --icons --group-directories-first --git"
alias lt3="eza -T --level=3 --icons --group-directories-first --git"

# ────────────── Aliases: dev ──────────────
alias c="cargo"
alias cb="cargo build"
alias cbr="cargo build --release"
alias cr="cargo run"
alias crr="cargo run --release"
alias br="bun run dev"
alias zb="zig build"
alias zbr="zig build run"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias y="yazi"
alias ff="fzf"
alias o="ollama"

# ────────────── Aliases: package manager (per OS) ──────────────
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS (Homebrew)
  alias s='brew search'
  alias i='brew install'
  alias r='brew uninstall'
  alias u='brew update && brew upgrade'
  alias clean='brew cleanup --prune=all && brew autoremove'
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Arch Linux (paru)
  alias s='paru -Ss'
  alias i='paru -S'
  alias r='paru -Rs'
  alias u='paru -Syu'
  alias clean='paru -c --noconfirm && paru -Sc --noconfirm'
fi

# ────────────── Functions ──────────────
run_or_exit() {
    "$@" || {
        echo "❌ Command failed: $*" >&2
        return 1
    }
}

# Full system update + cleanup
up() {
    if [[ "$(uname -s)" == "Darwin" ]]; then
        echo "🍎 Detected macOS. Updating with Homebrew..."
        run_or_exit brew update
        run_or_exit brew upgrade
        run_or_exit brew autoremove
        run_or_exit brew cleanup --prune=all
        # doctor exits non-zero on mere warnings — report, don't abort
        brew doctor || echo "⚠️  brew doctor reported issues (non-fatal)"

    elif [[ -f "/etc/arch-release" ]]; then
        echo "🎯 Detected Arch Linux. Updating with paru..."
        run_or_exit paru -Syu
        run_or_exit paru -c --noconfirm    # remove orphans + unneeded deps
        run_or_exit paru -Sc --noconfirm   # clean package + AUR build cache

    elif [[ -f "/etc/debian_version" ]]; then
        echo "🐧 Detected Ubuntu/Debian. Updating with apt..."
        run_or_exit sudo apt update
        run_or_exit sudo apt upgrade -y
        run_or_exit sudo apt autoremove -y  # remove orphaned deps
        run_or_exit sudo apt autoclean      # drop outdated cached packages

    else
        echo "❓ Unsupported OS."
        return 1
    fi

    echo "🦀 Updating tools..."
    run_or_exit bun upgrade
    run_or_exit rustup update
    run_or_exit cargo install-update -a
    # run_or_exit uv self update
    # run_or_exit bunx skills update -g
    # run_or_exit sprite upgrade --force
    # run_or_exit zvm i --zls master
    # run_or_exit zvm clean
}

# usage `bre ex_file_name`
function bre() {
         bacon run -- -q --example $1
}

# ────────────── Shell integrations ──────────────
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(atuin init zsh)"
