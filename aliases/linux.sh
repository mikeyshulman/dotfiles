nuc_pip (){
    export PIP_LINK_HOST=10.1.90.99
    export PIP_FIND_LINKS=http://${PIP_LINK_HOST}:8080/packages/
    pip install --no-index --trusted-host=${PIP_LINK_HOST} $@
}

winfo () {
    echo "stty rows $LINES columns $COLUMNS; reset"
}



USER_SHORT=${USER%%-*}
PROJECT=${USER##*-}
ML_SECRET_DIR=/home/${USER}/src/ml_secrets/notebooks
#export PIP_LINK_HOST=10.1.90.99
#export PIP_FIND_LINKS=http://${PIP_LINK_HOST}:8080/packages/
#alias pip_install_from_mikey='pip install --no-index --trusted-host $PIP_LINK_HOST'
alias k=kubectl

alias cnb=kubectl
# links
alias ch='source /opt/venvs/chief/bin/activate && cd ~/src/kensho-learn/chief/${PROJECT}'
alias silo='ch && kexec --app notebook --env shleifer'
alias prod='ch && kexec --app notebook --env prod --app'

# The next line updates completion for the Google Cloud SDK.
# source '/usr/share/google-cloud-sdk/completion.zsh.inc'
# export PATH=$PATH:/usr/lib/google-cloud-sdk/bin
# clean pyc files
alias cpyc="find . -name '*.pyc' -delete"
alias kpods="kubectl get pods -o wide"
alias knodes="kubectl describe nodes"
