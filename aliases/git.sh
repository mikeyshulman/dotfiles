#aliases that start with g and run git commands
alias g='git'
alias gg='git grep'
alias gd='git diff'
alias gdm='git diff master'
alias gcm='git checkout master'
alias gcam='git commit -am '
alias gs='git status -sb'
alias gpo='git push origin'
alias gpom='git pull origin master'
alias gdmo='git diff master --name-only'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias mgd="git grep '==='"  # check for merge conflicts
alias undo='git reset --soft HEAD^'
alias pcheck='git diff master | grep print'
gday () {
    git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'
    }

vgrep () {
    vim -p `git grep --name-only $1`
}
