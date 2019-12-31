# My Dotfiles
This repo contains my personal dotfiles. It probably won't be useful to anyone else.

## Install
To use this repo and my dotfiles, I followed this [guide](https://www.atlassian.com/git/tutorials/dotfiles).

### Notes
* Make sure .zshrc or .bashrc has:
  - alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
* Clone dotfiles into ~/.cfg with --bare
  - git clone --bare https://github.com/ericpko/dotfiles.git $HOME/.cfg
* When you are in $HOME dir, you have to use:
  - config checkout master
  to actually bring the dotfiles into the home directory
* A --bare repo is as if we're the remote. In the ~/.cfg repo there is the usual .git/ stuff
* Use config from the home dir $HOME (~) as if it is git
  - i.e. config add ..., config commit -m "", etc.


#### .settings
This directory contains settings that aren't dotfiles in the home directory.

* Remember to hard link the .settings/.vscode.json to the real vscode user settings file


#### .shell
This directory contains the default shell (zsh) loading files like aliases. Use this directory
to unclutter the dotfiles in the home dir.
