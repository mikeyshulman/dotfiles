export ZSH=$HOME/.oh-my-zsh
source $HOME/.secrets.sh
source $HOME/aliases/git.sh

HISTFILESIZE=1000000
HISTSIZE=1000000

# Kensho specific
alias li='arc lint'
alias nb='ipython notebook'
alias klenv='source /Users/shleifer/flow/kensho-learn/kml/bin/activate'
alias kl='cd ~/flow/kensho-learn'
alias killjobs='kill -9 $(jobs -p)'
alias rmpyc='sudo find . -iname \*.pyc -delete'

#kensho-learn py.test
alias utest='py.test tests/*.py --tb=short'
alias tf='py.test /home/kensho-learn/tests/test_everything.py::Flowcast'
export ptest='py.test /home/kensho-learn/tests/test_everything.py::'
alias tslow='py.test tests/test_everything.py --runslow'

#imsg stats shortcuts
alias im='~/Dropbox/projects/imsg_stats'
alias ix="open -a Safari index.html"
alias sg="open -a Safari steamgraph.html"
alias c3="open -a Safari chart3.html"
alias save_texts="cp ~/imsg_stats/msg.csv ~/Dropbox/Archive/imsg_files/msg.csv"


#misc aliases
alias muxer='tmux source ~/.tmux.conf'
alias muxrc='vim ~/.tmux.conf'
alias ipy="ipython --profile=sam"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'
alias v='vim'
alias vt='vim tests/test_everything.py'
alias vimrc='vim ~/.vimrc'

# title iTerm tabs
function title {
    echo -ne "\033]0;"$*"\007"
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
klenv  # source venv
