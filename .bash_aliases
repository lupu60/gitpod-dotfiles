# Aliases
alias refresh_backend="cd /workspace/shares/projects/backend; git pull origin dev --ff-only && pnpm i && pnpm db:update"
alias ll="ls -alF"

git config --global alias.cmp '!f() { git add -A && git commit -m "$@" --no-verify && git push --no-verify; }; f'
git config --global alias.ac "!git add -A && git commit -m "

# Add custom bin folder
export PATH=$HOME/.local/bin:$PATH
