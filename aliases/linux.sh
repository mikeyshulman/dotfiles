nuc_pip (){
    export PIP_LINK_HOST=10.1.90.99
    export PIP_FIND_LINKS=http://${PIP_LINK_HOST}:8080/packages/
    pip install --no-index --trusted-host=${PIP_LINK_HOST} $@
}

winfo () {
    echo "stty rows $LINES columns $COLUMNS; reset"
}

