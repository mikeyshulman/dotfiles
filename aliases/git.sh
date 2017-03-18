#aliases that start with g and run git commands, similar stuff in gitconfig
alias g='git'
alias gg='git grep'
#gip () {
#    git grep $1 | grep import
#}

alias gd='git diff'
alias gdm='git diff master'
alias gwho='git config --list'
alias dbranch='git branch -d'
alias gcom='git checkout master'
alias gcam='git commit -am '
alias gboom='git commit -am "boom boom"'

alias gs='git status -sb'
alias gpom='git pull origin master'
alias gdf='git --no-pager diff master --name-only'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias undo='git reset --soft HEAD^'
alias pcheck='git diff master | grep print'
alias gitrc='vim ~/aliases/git.sh'
gday () {
    git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'
    }

vgrep () {
    vim -p `git grep --name-only $1`
}

git-replace() {
  git grep -l "$1" | xargs sed -i '' -e "s/$1/$2/g"
}


gli () {
    python ~/dotfiles/scripts/make_issue.py $1
}

