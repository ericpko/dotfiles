#!/usr/bin/env zsh

# Paths
PATH="$PATH:""$HOME"'/.cargo/bin'
PATH="$PATH:""$HOME"'/.local/bin'
PATH="$PATH:""$HOME"'/.bun/bin'

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

# Exports
export TERM="ghostty"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='helix';
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';
export MANPAGER='less -X';


# oh-my-zsh
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git colored-man-pages zsh-autosuggestions
         zsh-syntax-highlighting sudo copypath)

# zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh


# Aliases
alias zshconfig="hx ~/.zshrc"
alias zshcfg="hx ~/.zshrc"
alias ohmyzsh="hx ~/.oh-my-zsh"
alias sudo='sudo '
alias cat="bat"
alias ls="eza -lgh --icons --group-directories-first --git"
alias la="eza -lagh --icons --group-directories-first --git"
alias tree="eza -T --icons --group-directories-first --git"
alias lt="eza -T --icons --group-directories-first --git"
alias lt2="eza -T --level=2 --icons --group-directories-first --git"
alias lt3="eza -T --level=3 --icons --group-directories-first --git"
alias find="fd"
alias ps="procs"
alias sed="sd"
alias du="dust"
alias grep="rg"
alias c="cargo"
alias cb="cargo build"
alias cbr="cargo build --release"
alias cr="cargo run"
alias crr="cargo run --release"
alias z="zig"
alias zb="zig build"
alias zbr="zig build run"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'
alias o="ollama"


# Functions
run_or_exit() {
    "$@" || {
        echo "❌ Command failed: $*" >&2
        return 1
    }
}

up() {
    if [[ "$(uname -s)" == "Darwin" ]]; then
        echo "🍎 Detected macOS. Updating with Homebrew..."
        run_or_exit brew update
        run_or_exit brew doctor
        run_or_exit brew upgrade
        run_or_exit brew cleanup
        run_or_exit brew upgrade bun

    elif [[ -f "/etc/arch-release" ]]; then
        echo "🎯 Detected Arch Linux. Updating with yay..."
        run_or_exit yay -Syu
        run_or_exit bun upgrade

    elif [[ -f "/etc/debian_version" ]]; then
        echo "🐧 Detected Ubuntu/Debian. Updating with apt..."
        run_or_exit sudo apt update
        run_or_exit sudo apt upgrade -y
        run_or_exit bun upgrade

    else
        echo "❓ Unsupported OS."
        return 1
    fi

    echo "🦀 Updating Rust and tools..."
    run_or_exit rustup update
    run_or_exit cargo install-update -a
    run_or_exit zvm i --zls master
    run_or_exit zvm clean
    run_or_exit gh extension upgrade gh-copilot
}

# usage `bre ex_file_name`
function bre() {
         bacon run -- -q --example $1
}


# gh copilot
eval "$(gh copilot alias -- zsh)"

# ngrok
if command -v ngrok &>/dev/null; then
    eval "$(ngrok completion)"
fi

# Starship prompt
eval "$(starship init zsh)"
