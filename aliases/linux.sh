if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    setxkbmap -option ctrl:nocaps
    alias kgp='k get pods'
    winfo () {
        echo "stty rows $LINES columns $COLUMNS; reset"
    }

    alias cexec="winfo && chief exec"
    alias cnb="winfo && chief exec --env shleifer zsh"
    alias cprod="winfo && chief exec --app flowcast zsh"


    kube-cp () {  # copy $1 to $2
        tar zcf - $1 | kubectl exec -i $2 tar zxvf -
    }

    kd () {
        k describe pods  #"$@"
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
    while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-11));echo -e "\e[31m`date +%r`
fi


