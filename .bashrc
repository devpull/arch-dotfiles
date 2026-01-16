#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lzd='lazydocker'
alias yd='yandex-disk'
alias ..='cd ../'
alias ...='cd ../..'
alias n='nvim'
alias cat='bat'

# Colors for the prompt
GREEN='\[\e[0;32m\]'
RED='\[\e[0;31m\]'
YELLOW='\[\e[0;33m\]'
BLUE='\[\e[0;34m\]'
NC='\[\e[0m\]' # No Color/Reset

# Function to parse the current git branch
parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Custom PS1 prompt with colors and Git branch info
# Format: [user@host:cwd] (git_branch)$
export PS1="${BLUE}[${GREEN}\u@\h:${YELLOW}\W${BLUE}]${RED}\$(parse_git_branch)${NC}\$ "

#PS1='[\u@\h \W]\$ '

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
