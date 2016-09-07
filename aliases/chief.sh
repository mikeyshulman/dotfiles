export ORANGE_SERVER='http://10.145.32.1:8080'  #FIXME
export GREEN_SERVER='http://10.145.32.1:8080'  #FIXME

alias kgp='k get pods'
kube-cp () {  # copy $2 to $1
        tar zcf - $2 | kubectl exec -i $1 tar zxvf -
}

alias knb="k describe pods | grep '^name.*notebook-shleifer' -i"
alias knb-ip="k describe pods $(knb | awk -F ' ' '{print $2}') | grep '^ip' -i"
alias nby="google-chrome $(knb-ip | awk -F ' ' '{print $2}'):8888/notebooks/user_data/notebooks"


# TODO: fix for orange
alias fnb="k describe pods | grep '^name.*green-flowcast-prod' -i"
alias fnb-ip="k describe pods $(fnb | awk -F ' ' '{print $2}') | grep '^ip' -i"
alias fnby="google-chrome $(fnb-ip | awk -F ' ' '{print $2}'):8888/notebooks/"

cp-orange(){
    kube-cp $ORANGE_NOTEBOOK $1
}



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


