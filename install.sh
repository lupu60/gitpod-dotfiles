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

# sudo apt install universal-ctags

# # Lazygit
# LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
# curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
# tar xf lazygit.tar.gz lazygit
# sudo install lazygit /usr/local/bin

# Lazydocker
# curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Git SPR
# echo "deb [trusted=yes] https://apt.fury.io/inigolabs/ /" | sudo tee /etc/apt/sources.list.d/inigolabs.list
# sudo apt update
# sudo apt install -y spr


# # Aviator
# mkdir -p /workspace/av
# curl -L  https://github.com/aviator-co/av/releases/download/v0.1.3/av_0.1.3_linux_amd64.deb  > /workspace/av/av.deb
# cd /workspace/av
# sudo apt install ./av.deb
# source <(av completion bash)


# # Git Town
# curl -L https://github.com/git-town/git-town/releases/download/v12.0.2/git-town_linux_intel_64.deb > /workspace/git-town.deb
# sudo apt-get install /workspace/git-town.deb --yes


# Wakatime
# if test -v WAKATIME_API; then {
#     printf '%s\n' '[settings]' "api_key = ${WAKATIME_API}"  "hide_file_names = true"  "hide_project_names = false"  "hide_dependencies = true"  "hide_branch_names = true"  "hide_project_folder = true"  "hostname = workhorse" "debug = false" > "$HOME/.wakatime.cfg";
# } fi


# Television
VER=`curl -s "https://api.github.com/repos/alexpasmantier/television/releases/latest" | grep '"tag_name":' | sed -E 's/.*"tag_name": "([^"]+)".*/\1/'`
curl -LO https://github.com/alexpasmantier/television/releases/download/$VER/television_$VER-1_amd64.deb
echo $VER
sudo dpkg -i television_$VER-1_amd64.deb


# uv 
# curl -LsSf https://astral.sh/uv/install.sh | sh
# uv venv
# uv pip install stack-pr
