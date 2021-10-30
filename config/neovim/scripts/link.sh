#!/usr/bin/env bash
mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin
mkdir -p ~/.config/nvim/lua

# linking
for f in `fd ".*\.vim$|.*\.lua$"`; do 
	rm -rf ~/.config/nvim/$f
	ln -s ~/dotfiles/config/neovim/$f ~/.config/nvim/$f
done
