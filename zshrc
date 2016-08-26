source ~/.secrets.sh



# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
      source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias k='kubectl' 
alias kl=$kl
alias pt='py.test'
HISTFILESIZE=1000000
HISTSIZE=1000000
alias ag='ag --pager less -S --ignore tmp --ignore migrations --ignore fixtures --ignore node_modules --ignore dist --ignore static --ignore webpack-build --ignore js-coverage'
alias svrunner='runsvdir -P /usr/local/var/service'
alias ubt='umask 002; PYTHONPATH=$PWD /usr/bin/time'
alias ctags="`brew --prefix`/bin/ctags"
alias bm='go build; ./bee'
alias dot='cd ~/dotfiles'
# Kensho specific
export sam='sam@kensho.com'
alias li='arc lint'
alias ad="arc diff --verbatim --reviewers='#L'"
alias og='~/work/src/github.com/sshleifer/'

alias cos='~/Dropbox/projects/costic'
alias nb='ipython notebook'
alias killjobs='kill -9 $(jobs -p)'
alias rmpyc='find . -iname \*.pyc -delete'

# The next line updates PATH for the Google Cloud SDK.
source "${HOME}/google-cloud-sdk/path.zsh.inc"
# The next line enables shell command completion for gcloud.
source "${HOME}/google-cloud-sdk/completion.zsh.inc"


#misc aliases
alias v='vim'
alias vimrc='vim ~/dotfiles/vimrc'
alias muxer='tmux source ~/.tmux.conf'
alias muxrc='vim ~/.tmux.conf'
alias ipy="ipython --profile=sam"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/dotfiles/zshrc'

# title iTerm tabs
function title {
    echo -ne "\033]0;"$*"\007"
}


DISABLE_AUTO_TITLE="true"


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

source /Users/shleifer/flow/zentreefish/.inenv/inenv.sh
klenv  # source venv
