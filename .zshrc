#!/usr/bin/env zsh
# The above line adds the shebang. Others also work.

# See https://github.com/mathiasbynens/dotfiles



# Load the pure promp
autoload -U promptinit; promptinit
prompt pure

# Load the shell dotfiles
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Show system stats when terminal opens
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  archey3
elif [[ "$OSTYPE" == "darwin"* ]]; then
  archey
else
  echo "Unknown OS"
fi

# Enable Vi mode
#bindkey -v


# Load syntax highlighting
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
