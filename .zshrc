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
alias gogit='cd ~/Git'
alias gomom='cd ~/Git/momondo/momondo-web'
alias gopro='cd ~/Git/projects'
alias vim='/usr/local/bin/vim'
alias vimrc='vim ~/.vimrc'

# Momondo alias
alias gdev='sudo gulp dev-all'
alias gtu='gulp test.units'

# Ag (the_silver_searcher):
alias ag='ag --path-to-agignore ~/.agignore'

# Tmux alias
alias txs='tmux switch -t'
alias txd='tmux detach'
alias txr='tmux rename-session -t'
alias txl='tmux list-sessions'
alias txa='tmux attach -t'

# Tmux
tmux source-file ~/.tmux.conf

# Tmuxinator
source ~/.bin/tmuxinator.zsh

# Scm breeze (git numbers and more)
[ -s "/Users/kstorgaard/.scm_breeze/scm_breeze.sh" ] && source "/Users/kstorgaard/.scm_breeze/scm_breeze.sh"
