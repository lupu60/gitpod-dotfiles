# Aliases
alias refresh_backend="cd /workspace/shares/projects/backend; git pull origin dev --ff-only && pnpm i && pnpm db:update"
alias ll="ls -alF"

git config --global fetch.parallel 5
git config --global fetch.pruneTags true
git config --global core.compression 9

git config --global alias.pull-depth '!f() { git pull --depth=1 --no-recurse-submodules; }; f'
git config --global alias.cmpn '!f() { git add -A && git commit -m "$@" --no-verify && git push --no-verify; }; f'
git config --global alias.cmp '!f() { git add -A && git commit -m "$@" && git push; }; f'
git config --global alias.ac '!f() { git add -A && git commit -m "$@"; }; f'

git config --global alias.s status
git config --global alias.c commit  
git config --global alias.co checkout
git config --global alias.p push  
git config --global alias.pl pull

# Add custom bin folder
export PATH=$HOME/.local/bin:$PATH
