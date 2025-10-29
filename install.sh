#!/usr/bin/env bash
set -euo pipefail



# Television
curl -fsSL https://alexpasmantier.github.io/television/install.sh | bash



## git config
git config --global fetch.parallel 5
git config --global fetch.pruneTags true
git config --global core.compression 9

git config --global alias.pull-depth '!f() { git pull --depth=1 --no-recurse-submodules; }; f'
git config --global alias.cmpn '!f() { git commit -m "$@" --no-verify && git push --no-verify; }; f'
git config --global alias.cmp '!f() { git commit -m "$@" && git push; }; f'
git config --global alias.ac '!f() { git add -A && git commit -m "$@"; }; f'

git config --global alias.s status
git config --global alias.c commit
git config --global alias.co checkout
git config --global alias.p push
git config --global alias.pl pull




# Install fancy shell
curl -sS https://starship.rs/install.sh | sh -s - --yes
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config
curl https://raw.githubusercontent.com/lupu60/gitpod-dotfiles/main/starship.toml > ~/.config/starship.toml

# Install bash aliases
curl https://raw.githubusercontent.com/lupu60/gitpod-dotfiles/main/.bash_aliases > ~/.bash_aliases
if ! grep -q "source ~/.bash_aliases" ~/.bashrc; then
    echo 'source ~/.bash_aliases' >> ~/.bashrc
fi

# Install packages
sudo apt-get update
sudo apt-get install htop fzf ripgrep bat fd-find --yes
sudo ln -s /usr/bin/batcat /usr/bin/bat
sudo ln -s $(which fdfind) /bin/fd
# sudo npm install -g @anthropic-ai/claude-code -Y
