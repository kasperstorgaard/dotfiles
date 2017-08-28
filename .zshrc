# Path to the oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# Tmux
tmux source-file ~/.tmux.conf

# Tmux alias
alias txs='tmux switch -t'
alias txd='tmux detach'
alias txr='tmux rename-session -t'
alias txl='tmux list-sessions'
alias txa='tmux attach -t'

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# Nvm
export NVM_DIR="/Users/kstorgaard/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use

# Git alias
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gps='git push --set-upstream origin $(git_current_branch)'
alias gpsf='git push --set-upstream origin $(git_current_branch) --force-with-lease'
alias gpl='git pull'
alias gir='git rebase -i'
alias grc='git rebase --continue'

# Path alias
alias gocode='cd ~/Code'
alias gomom='cd ~/Code/momondo/momondo-web'
alias gopro='cd ~/Code/projects'
alias vim='/usr/local/bin/vim'
alias vimrc='vim ~/.vimrc'

# Momondo alias
alias gdev='sudo gulp dev-all'
alias gtu='gulp test.units'
alias gclean='rm -rf node_modules/ && rm -rf jspm_packages/ && npm i && jspm install'

# Ag (the_silver_searcher):
alias ag='ag --path-to-agignore ~/.agignore'

# Scm breeze (git numbers and more)
[ -s "/Users/kstorgaard/.scm_breeze/scm_breeze.sh" ] && source "/Users/kstorgaard/.scm_breeze/scm_breeze.sh"

source "/Users/kstorgaard/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
