export ORANGE_SERVER='http://10.145.32.1:8080'  #FIXME
export GREEN_SERVER='http://10.147.32.1:8080'  #FIXME

alias kgp='k get pods'
winfo () {
    echo "stty rows $LINES columns $COLUMNS; reset"
}

alias kexec="winfo && chief exec"
alias knb="winfo && chief exec --env shleifer zsh"
alias kprod="winfo && chief exec --app flowcast zsh"


kube-cp () {  # copy $1 to $2
    tar zcf - $1 | kubectl exec -i $2 tar zxvf -
}

kd () {
    k describe pods  #"$@"
}

alias dnb="kd | grep '^name.*notebook-shleifer' -i"
alias nb-ip="kd $(dnb | awk -F ' ' '{print $2}') | grep '^ip' -i"
alias nby="google-chrome $(nb-ip | awk -F ' ' '{print $2}'):8888"


# TODO: fix for orange
alias fnb="k describe pods | grep '^name.*flowcast-prod' -i"
alias fnb-ip="k describe pods $(fnb | awk -F ' ' '{print $2}') | grep '^ip' -i"
alias fnby="google-chrome $(fnb-ip | awk -F ' ' '{print $2}'):8888/"



korange() {
    color='orange'
    k config set-cluster $color --server=$ORANGE_SERVER
    k config set-context $color --cluster $color
    k config use-context $color
}


kgreen() {
    color='green'
    k config set-cluster $color --server=$GREEN_SERVER
    k config set-context $color --cluster $color
    k config use-context $color
}


