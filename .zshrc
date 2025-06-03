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


# gh copilot
eval "$(gh copilot alias -- zsh)"


# Functions
up() {
    if [[ "$(uname -s)" == "Darwin" ]]; then
        echo "Detected macOS. Updating with Homebrew..."
        brew update && brew doctor && brew upgrade && brew cleanup && brew upgrade bun
    elif [[ -f "/etc/arch-release" ]]; then
        echo "Detected Arch Linux. Updating with paru..."
        paru -Syu
    elif [[ -f "/etc/debian_version" ]]; then
        echo "Detected Ubuntu/Debian. Updating with apt..."
        sudo apt update && sudo apt upgrade -y
    else
        echo "Unsupported OS."
        return 1
    fi

    # Common updates for Rust and Zed
    rustup update
    cargo install-update -a
    zvm i --zls master
    zvm clean
    gh extension upgrade gh-copilot
}

# usage `bre ex_file_name`
function bre() {
         bacon run -- -q --example $1
}


# Starship prompt
eval "$(starship init zsh)"
