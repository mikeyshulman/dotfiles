export ZSH=/root/.oh-my-zsh
HISTFILESIZE=1000000
HISTSIZE=1000000

alias li='arc lint'
alias klenv='source kml/bin/activate'
alias kensho-learn='cd /home/kensho-learn'
alias killjobs='kill -9 $(jobs -p)'
alias utest='py.test tests/test_everything.py'
alias tf='py.test /home/kensho-learn/tests/test_everything.py::Flowcast'
alias rmpyc='find . -iname \*.pyc -delete'
export ptest='py.test /home/kensho-learn/tests/test_everything.py::'
alias tslow='py.test tests/test_everything.py --runslow'

alias tdb='py.test tests/test_everything.py::TestDashboard'

alias basher='source ~/.bashrc'
alias bashrc='vim ~/.bashrc'
alias bundle='cd ~/.vim/bundle'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'
alias v='vim'
alias vt='vim tests/test_everything.py'
alias vimrc='vim ~/.vimrc'
alias g='git'
alias gcm='git commit -am '
alias gs='git status'
alias log='git log --pretty=format:"%h %s" HEAD~3..HEAD'
