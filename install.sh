#!/usr/bin/env bash
set -euo pipefail

# Install fancy shell
curl -sS https://starship.rs/install.sh | sh -s - --yes
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config && touch ~/.config/starship.toml




# Install packages
sudo apt-get update
sudo apt-get install htop fzf --yes

# Lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Nvim
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
chmod +x ./nvim-linux64/bin/nvim
sudo ln -s "$(realpath ./nvim-linux64/bin/nvim)" /usr/bin/nvim

# NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim -Es
