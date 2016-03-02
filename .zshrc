alias gs='git status'
alias gpo='git push origin'
alias gdmo='git diff master --name-only'
alias g='git'
alias v='vim'
alias nb='ipython notebook'
alias muxer='tmux source ~/.tmux.conf'
alias muxrc='vim ~/.tmux.conf'
alias nba="~/Dropbox/nba-api"
alias mlb="~/Dropbox/nba-api/mlb_dfk"

alias backdir="/Users/samshleifer/Library/Application\ Support/MobileSync/Backup/54585babaa97cc69042ccbc493d68a229ac8babd"
alias lastback="stat /Users/samshleifer/Library/Application\ Support/MobileSync/Backup/54585babaa97cc69042ccbc493d68a229ac8babd/3d0d7e5fb2ce288813306e4d4636395e047a3d28"
alias prof="kernprof -l -v chat_to_csv.py"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin"

alias ix="open -a Safari index.html"
alias sg="open -a Safari steamgraph.html"
alias c3="open -a Safari chart3.html"
alias save_texts="cp ~/imsg_stats/msg.csv ~/Dropbox/Archive/imsg_files/msg.csv"
export EDITOR=/Applications/TextEdit.app/Contents/MacOS/MacVim

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
mvim () {
    local f
    for f; do
        test -e "$f" || touch "$f"
    done
    open -a macvim "$@"
}
alias wsim="python word_similarity.py tom_sawyer.txt tiny.txt top_100.txt pos_wallstreet.txt 5"
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
#ZSH_THEME="random"
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
alias ipy="ipython --profile=sam"
alias c='clear'
alias zsher='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias bashcp='cp ~/.zshrc ~/.bashrc'
alias im='~/imsg_stats'

alias lehzoo="ssh -Y ewl22@node.zoo.cs.yale.edu"
alias zoo="ssh -Y szs8@node.zoo.cs.yale.edu"


#Ling HW6
alias cky="python cky.py english_cnf.gr test.sen"
# Uncomment the following line to use case-sensitive completion.

# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
