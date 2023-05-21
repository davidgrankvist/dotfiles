alias vi=nvim
alias vim=nvim
alias v="nvim ."
alias g=git
alias bat=batcat
alias pn="pnpm"

# see bin/.local/bin/scripts
alias goproj='goproj_path="$(findproj | fzf)" && cd "${goproj_path}"'
alias godir='godir_path="$(finddir | fzf)" && cd "${godir_path}"'

alias t='tmux new-session -As "$(basename $PWD)"'
alias td='tmux detach'
alias tproj='goproj && t'
