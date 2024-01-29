#!/usr/bin/env bash
set -euo pipefail

# Install fancy shell
sudo apt-get install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions


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
