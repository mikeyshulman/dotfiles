export ORANGE_SERVER='http://10.145.32.1:8080'
export GREEN_SERVER='http://10.145.32.1:8080'
export ORANGE_SERVER='http://10.145.32.1:8080'


korange() {
    color='orange'
    k config set-cluster $color --server=$ORANGE_SERVER
    k config set-context $color --cluster $color
    k config use-context $color
}

kgreen() {
    color='green'
    k config set-cluster $color --server=$ORANGE_SERVER
    k config set-context $color --cluster $color
    k config use-context $color
}

