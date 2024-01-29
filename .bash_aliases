# Aliases
alias refresh_backend="cd /workspace/shares/projects/backend; git pull origin dev --ff-only && pnpm i && pnpm db:update"
alias ll="ls -alF"


# Add custom bin folder
export PATH=$HOME/.local/bin:$PATH
