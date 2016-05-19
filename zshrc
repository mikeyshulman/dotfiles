source $HOME/dotfiles/aliases/*.sh

HISTFILESIZE=1000000
HISTSIZE=1000000
alias svrunner='runsvdir -P /usr/local/var/service'
alias ubt='umask 002; PYTHONPATH=$PWD /usr/bin/time'
alias bm='go build; ./bee'
# Kensho specific
export sam='sam@kensho.com'
alias li='arc lint'
alias ad="arc diff --verbatim --reviewers='#L'"
alias og='~/work/src/github.com/sshleifer/'
alias cos='~/Dropbox/projects/costic'
alias nb='ipython notebook'
alias klenv='source /Users/shleifer/flow/kensho-learn/kml/bin/activate'
alias kl='cd ~/flow/kensho-learn'
alias killjobs='kill -9 $(jobs -p)'
alias rmpyc='sudo find . -iname \*.pyc -delete'

#kensho-learn py.test
alias utest='py.test tests/*.py --tb=short'
alias rmt='py.test tests/test_mbs.py --tb=short'
alias mt='vim tests/test_mbs.py'
export ptest='py.test /home/kensho-learn/tests/test_everything.py::'
alias tslow='py.test tests/test_everything.py --runslow'

#misc aliases
alias muxer='tmux source ~/.tmux.conf'
alias muxrc='vim ~/.tmux.conf'
alias ipy="ipython --profile=sam"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/dotfiles/zshrc'
alias v='vim'
alias vt='vim tests/test_everything.py'
alias vimrc='vim ~/dotfiles/vimrc'

# title iTerm tabs
function title {
    echo -ne "\033]0;"$*"\007"
}

tshort () {
    fname=$1
    shift
    py.test tests/test_$fname.py --tb=short --maxfail=1  "$@"
}

tinfo () {
    fname=$1
    text=$2
    shift
    py.test tests/test_$fname.py::$info --tb=short --maxfail=1  "$@"
}


p () {
    fname=$1
    shift
    PYTHONPATH=$PYTHONPATH:$PWD python klearn/$fname.py "$@"
}

DISABLE_AUTO_TITLE="true"
title local


ZSH_THEME="robbyrussell"
export EDITOR=vim
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

plugins=(git bundler python web-search)
# git: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
# python: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/python/python.plugin.zsh
# tmux: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/tmux/tmux.plugin.zsh


# The next line updates PATH for the Google Cloud SDK.
source '/Users/shleifer/google-cloud-sdk/path.zsh.inc'
# The next line enables shell command completion for gcloud.
source '/Users/shleifer/google-cloud-sdk/completion.zsh.inc'

export NVM_DIR="/Users/shleifer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.secrets.sh
klenv  # source venv
