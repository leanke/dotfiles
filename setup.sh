#!/bin/bash
ln -sf ~/loft/dotfiles/.bashrc ~/.bashrc
ln -sf ~/loft/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/loft/dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/loft/dotfiles/.bash_completion ~/.bash_completion
ln -sf ~/loft/dotfiles/.profile ~/.profile
ln -sf ~/loft/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/loft/dotfiles/.netrc ~/.netrc
ln -sf ~/loft/dotfiles/.config/ ~/.config
ln -sf ~/loft/dotfiles/scripts/boxes.sh ~/boxes.sh
ln -sf ~/loft/dotfiles/scripts/dev.sh ~/dev.sh
echo "Dotfiles have been set up."