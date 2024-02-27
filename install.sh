#!/usr/bin/env bash
set -euo pipefail

# Install fancy shell
curl -sS https://starship.rs/install.sh | sh -s - --yes
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config
curl https://raw.githubusercontent.com/lupu60/gitpod-dotfiles/main/starship.toml > ~/.config/starship.toml


# Install packages
sudo apt-get update
sudo apt-get install htop fzf ripgrep --yes
sudo apt install bat --yes
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
export PATH="~/.local/bin:$PATH"

# Lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Nvim
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
chmod +x ./nvim-linux64/bin/nvim
sudo ln -s "$(realpath ./nvim-linux64/bin/nvim)" /usr/bin/nvim

# NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim -Es

# # Git SPR
# echo "deb [trusted=yes] https://apt.fury.io/inigolabs/ /" | sudo tee /etc/apt/sources.list.d/inigolabs.list
# sudo apt update
# sudo apt install -y spr


# # Aviator
# mkdir -p /workspace/av
# curl -L  https://github.com/aviator-co/av/releases/download/v0.0.30/av_0.0.30_linux_x86_64.tar.gz  > /workspace/av/av.tar.gz
# cd /workspace/av
# tar xzvf av.tar.gz
# chmod +x ./av
# sudo ln -s "$(realpath ./av)" /usr/bin/av
# source <(av completion bash)


# Git Town
curl -L https://github.com/git-town/git-town/releases/download/v12.0.2/git-town_linux_intel_64.deb > /workspace/git-town.deb
sudo apt-get install /workspace/git-town.deb --yes
