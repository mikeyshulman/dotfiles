source ~/.secrets.sh
HISTFILESIZE=1000000
HISTSIZE=1000000

alias pmbs="p post_baml_flowcast MBS --to sam@kensho.com"
alias prates="p post_baml_flowcast RATES --to sam@kensho.com"

alias xmo='xmodmap ~/.xmodmaprc'
alias k='kubectl' 
alias pyg='pip freeze | grep'
alias gall='git add --all'
alias lsbig='ls -lhS **/*(Lm+20)'

alias pg='ps aux | grep'
alias kl=$kl
alias pt='py.test'
alias ag='ag --pager less -S --ignore tmp --ignore migrations --ignore fixtures --ignore node_modules --ignore dist --ignore static --ignore webpack-build --ignore js-coverage'
alias ubt='umask 002; PYTHONPATH=$PWD /usr/bin/time'
alias dot='cd ~/dotfiles'
alias tma='tmux a -t'

# Kensho specific
export sam='sam@kensho.com'
alias li='arc lint'
alias ad="arc diff --verbatim --reviewers='#L'"

alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.RunningFor}}"' # fro gleb

alias nb='jupyter notebook'
alias killjobs='kill -9 $(jobs -p)'
alias rmpyc='find . -iname \*.pyc -delete'


#misc aliases
alias size-half='stty rows 93 columns 243; reset'
alias half-nyc='stty rows 81 columns 140; reset'

alias v='vim'
alias vimrc='vim ~/dotfiles/vimrc'
alias muxer='tmux source ~/.tmux.conf'
alias muxrc='vim ~/.tmux.conf'
alias ipy="ipython --profile=sam"
alias rmc="sed 's:#.*$::g'"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/dotfiles/zshrc'
alias lhbig='ls -lh **/*(Lm+20)'
# title tabs
function title {
    echo -ne "\033]0;"$*"\007"
}

#DISABLE_AUTO_TITLE="true"


ZSH_THEME="robbyrussell"
export EDITOR=vim
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

plugins=(git python web-search)
# git: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
# python: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/python/python.plugin.zsh
# tmux: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/tmux/tmux.plugin.zsh

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.secrets.sh
for f in ~/dotfiles/aliases/*; do source $f; done
title `hostname`:`whoami`
