#!/bin/bash

APT_PACKAGES="micro tmux htop ranger mingw-w64 make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev"
ALIASES="alias f='ranger'\nalias dev='~/dev.sh'"

sudo apt update

for package in $APT_PACKAGES; do
  if ! dpkg -l | grep -q $package; then
    echo "$package is not installed. Installing..."
    sudo apt install -y $package
  fi
done

for ALIAS in $ALIASES; do
  if ! grep -q "$ALIAS" ~/.bash_aliases; then
    echo "Adding alias to .bashrc"
    echo -e "$ALIAS" >> ~/.bash_aliases
  fi
done

if ! command -v pyenv &> /dev/null; then
  echo "Installing pyenv..."
  curl https://pyenv.run | bash
  echo -e 'export PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo -e 'eval "$(pyenv init --path)"\neval "$(pyenv init -)"' >> ~/.bashrc
fi
curl https://raw.githubusercontent.com/imomaliev/tmux-bash-completion/master/completions/tmux > ~/.bash_completion
pyenv install 3.11.7
pyenv global 3.11.7
source ~/.bashrc



















