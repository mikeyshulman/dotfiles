export ZSH=$HOME/.oh-my-zsh
export SEC=$HOME/.secrets.sh
HISTFILESIZE=1000000
HISTSIZE=1000000

# Kensho specific
alias li='arc lint'
alias nb='ipython notebook'
alias klenv='source /Users/shleifer/flow/kensho-learn/kml/bin/activate'
alias kl='cd ~/flow/kensho-learn'
alias killjobs='kill -9 $(jobs -p)'
alias utest='py.test tests/*.py --tb=short'
alias tf='py.test /home/kensho-learn/tests/test_everything.py::Flowcast'
alias rmpyc='sudo find . -iname \*.pyc -delete'
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
alias nba="~/Dropbox/nba-api"
alias mlb="~/Dropbox/nba-api/mlb_dfk"
alias bundle='cd ~/.vim/bundle'
alias ipy="ipython --profile=sam"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'
alias v='vim'
alias vt='vim tests/test_everything.py'
alias vimrc='vim ~/.vimrc'
function title {
    echo -ne "\033]0;"$*"\007"
}
export PROMPT_COMMAND='echo -ne "\033]0;sam\007"'

ZSH_THEME="robbyrussell"
export EDITOR=vim
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
plugins=(git bundler python web-search)
# git: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
# python: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/python/python.plugin.zsh
# tmux: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/tmux/tmux.plugin.zsh


#git stuff
alias g='git'
alias gcm='git checkout master'
alias gcam='git commit -am '
alias gs='git status'
alias gs='git status'
alias gpo='git push origin'
alias gdmo='git diff master --name-only'
alias glog='git log --pretty=format:"%h %s" HEAD~3..HEAD'
alias mgd="git grep '==='"  # check for merge conflicts
alias pcheck='git diff master | grep print'
# The next line updates PATH for the Google Cloud SDK.
source '/Users/shleifer/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/shleifer/google-cloud-sdk/completion.zsh.inc'

export NVM_DIR="/Users/shleifer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export ZSH=$HOME/.oh-my-zsh
source $SEC  # ssh config etc
source $ZSH/oh-my-zsh.sh
klenv
DISABLE_AUTO_TITLE="true"
title local
