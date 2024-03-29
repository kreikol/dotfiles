# Enable aliases to be sudo’ed
alias sudo='sudo '

alias cat='batcat'
alias ccat='/usr/bin/cat'
alias ..="cd .."
alias ...="cd ../.."
alias la="ls -la"
alias ll="ls -l"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'
alias v='nvim'
alias vim='nvim'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='(thunar $PWD &>/dev/null &)'
alias up='dot package update_all'

alias dd='dot diary open'
alias notion='dot webs notion'
alias tp='dot tech projects'

alias bd='mycli -u root -p root'
