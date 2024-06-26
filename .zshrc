#!/usr/bin/env zsh

# Paths
PATH="$PATH:""$HOME"'/.cargo/bin'
PATH="$PATH:""$HOME"'/.local/bin'
PATH="$PATH:""$HOME"'/.bun/bin'


# Exports
export TERM="alacritty"
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
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'


# Starship prompt
eval "$(starship init zsh)"
