alias vi=nvim
alias vim=nvim
alias v="nvim ."
alias g=git
alias bat=batcat
alias pn="pnpm"

# see bin/.local/bin/scripts
alias goproj='cd $(findproj | fzf)'
alias gohere='cd $(finddir | fzf)'

alias t='tmux new-session -As $(basename $PWD)'
alias td='tmux detach'
alias tproj='goproj && t'
