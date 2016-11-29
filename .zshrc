# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# User configuration
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# Git alias
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all'
alias gx='gitx --all'
alias gps='git push --set-upstream origin $(git_current_branch)'
alias gpl='git pull'
alias gir='git rebase -i'
alias grc='git rebase --continue'

# Path alias
alias falc='cd ~/Git/FalconSocial/HTML-client/'
alias gogit='cd ~/Git'
alias vim='/usr/local/bin/vim'
alias vimrc='vim ~/.vimrc'

# Bower alias
alias bnice='rm -rf http-pub/bower && bower cache clean && bower update'

# Ag (the_silver_searcher):
alias ag='ag --path-to-agignore ~/.agignore'

# Tmux alias
alias txs='tmux switch -t'
alias txd='tmux detach'
alias txr='tmux rename-session -t'
alias txl='tmux list-sessions'

# Scm breeze (git numbers and more)
[ -s "/Users/kasperstorgaard/.scm_breeze/scm_breeze.sh" ] && source "/Users/kasperstorgaard/.scm_breeze/scm_breeze.sh"

# Tmux
tmux source-file ~/.tmux.conf

# Tmuxinator
source ~/.bin/tmuxinator.zsh
