nuc_pip (){
    export PIP_LINK_HOST=10.1.90.99
    export PIP_FIND_LINKS=http://${PIP_LINK_HOST}:8080/packages/
    pip install --no-index --trusted-host=${PIP_LINK_HOST} $@
}
winfo () {
    echo stty rows $LINES columns $COLUMNS
}


if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    setxkbmap -option ctrl:nocaps
    alias kgp='k get pods'
    alias cnb="winfo && chief exec --env shleifer zsh"
    alias cprod="winfo && chief exec --app flowcast zsh"


    kube-cp () {  # copy $1 to $2
        tar zcf - $1 | kubectl exec -i $2 tar zxvf -
    }

    kd () {
        k describe pods  #"$@"
    }
    green-prod-deploy () {
        docker pull service.green.ml.kensho.xyz:5000/ml/base
        docker tag service.green.ml.kensho.xyz:5000/ml/base ml/base
        CONFIG_PATH=~/ml-config/green/equities_config.json ML_SECRETS_DIR=~/ml-secrets/ chief deploy --env prod --app flowcast
    }
    green-nb-deploy () {
        docker pull service.green.ml.kensho.xyz:5000/ml/base
        docker tag service.green.ml.kensho.xyz:5000/ml/base ml/base
        ML_SECRETS_DIR=~/ml-secrets/ chief deploy --env shleifer --app notebook
    }

    alias dnb="kd | grep '^name.*notebook-shleifer' -i"
    alias nb-ip="kd $(dnb | awk -F ' ' '{print $2}') | grep '^ip' -i"
    alias nby="google-chrome $(nb-ip | awk -F ' ' '{print $2}'):8888"


    alias fnb="k describe pods | grep '^name.*flowcast-prod' -i"
    alias fnb-ip="k describe pods $(fnb | awk -F ' ' '{print $2}') | grep '^ip' -i"
    alias fnby="google-chrome $(fnb-ip | awk -F ' ' '{print $2}'):8888/"


    alias knb="kubectl describe pods | grep '^name.*notebook-andrew' -i"
    alias knb-ip="kubectl describe pods $(knb | awk -F ' ' '{print $2}') | grep '^ip' -i"
    alias nby="google-chrome $(knb-ip | awk -F ' ' '{print $2}'):8888/notebooks/user_data/notebooks"
    #while 1;do tput sc;tput cup 0 $(($(tput cols)-11));echo -e "\e[31m`date +%r`\e[39m";tput rc; sleep 60;done &
fi


