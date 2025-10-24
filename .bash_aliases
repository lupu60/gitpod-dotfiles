# Aliases
alias refresh_backend="cd /workspace/shares/projects/backend; git pull origin dev --ff-only && pnpm i && pnpm db:update"
alias ll="ls -alF"
alias githist='git log --abbrev-commit --oneline $(git merge-base origin/dev HEAD)^..HEAD'
