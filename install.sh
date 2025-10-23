#!/usr/bin/env bash
set -euo pipefail

# Install fancy shell
curl -sS https://starship.rs/install.sh | sh -s - --yes
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config
curl https://raw.githubusercontent.com/lupu60/gitpod-dotfiles/main/starship.toml > ~/.config/starship.toml

# Install packages
sudo apt-get update
sudo apt-get install htop fzf ripgrep bat fd-find --yes
sudo ln -s /usr/bin/batcat /usr/bin/bat
sudo ln -s $(which fdfind) /bin/fd
sudo npm install -g @anthropic-ai/claude-code -Y


# Television
VER=`curl -s "https://api.github.com/repos/alexpasmantier/television/releases/latest" | grep '"tag_name":' | sed -E 's/.*"tag_name": "([^"]+)".*/\1/'`
curl -LO https://github.com/alexpasmantier/television/releases/download/$VER/television_$VER-1_amd64.deb
echo $VER
sudo dpkg -i television_$VER-1_amd64.deb
