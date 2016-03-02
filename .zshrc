export ZSH=/root/.oh-my-zsh
HISTFILESIZE=1000000
HISTSIZE=1000000



export ZSH=/root/.oh-my-zsh
HISTFILESIZE=1000000
HISTSIZE=1000000

# Kensho specific
alias li='arc lint'
alias nb='ipython notebook'
alias klenv='source kml/bin/activate'
alias kensho-learn='cd /home/kensho-learn'
alias killjobs='kill -9 $(jobs -p)'
alias utest='py.test tests/test_everything.py'
alias tf='py.test /home/kensho-learn/tests/test_everything.py::Flowcast'
alias rmpyc='find . -iname \*.pyc -delete'
export ptest='py.test /home/kensho-learn/tests/test_everything.py::'
alias tslow='py.test tests/test_everything.py --runslow'
alias tdb='py.test tests/test_everything.py::TestDashboard'

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

#git stuff
alias g='git'
alias gcam='git commit -am '
alias gs='git status'
alias gs='git status'
alias gpo='git push origin'
alias gdmo='git diff master --name-only'
alias glog='git log --pretty=format:"%h %s" HEAD~3..HEAD'

ZSH_THEME="robbyrussell"
export EDITOR=vim
export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
