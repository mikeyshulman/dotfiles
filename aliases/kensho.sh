vk () {
    fname=$1
    shift
    vim klearn/$fname.py 
}



function vt {
    fname=$1
    shift
    vim tests/test_$fname.py 
}

vkc () {
    fname=$1
    shift
    vim klearn/core/$fname.py 
}


t () {
    fname=$1
    shift
    py.test tests/test_$fname.py --tb=short --maxfail=1  "$@"
}


tinfo () {
    fname=$1
    text=$2
    shift
    py.test tests/test_$fname.py::$text --tb=short --maxfail=1  "$@"
}


p () {
    fname=$1
    shift
    PYTHONPATH=$PYTHONPATH:$PWD python klearn/$fname.py "$@"
}
prun () {
    PYTHONPATH=$PYTHONPATH:$PWD python klearn/run.py --to sam@kensho.com  "$@"
}

utest () {
    py.test tests/test_*.py  --tb=short "$@";
    find . -iname \*.pyc -delete
}


#kensho-learn py.test
alias rmt='py.test tests/test_mbs.py --tb=short'
alias rms='py.test tests/test_mbs.py --tb=short --runslow'
alias vmt='vim tests/test_mbs.py'
alias vte='vim tests/test_everything.py'
alias ct='vim -t'
alias tslow='py.test tests/test_everything.py --runslow --tb=short'
alias klenv='source kml/bin/activate'

alias knb="kubectl describe pods | grep '^name.*notebook-andrew' -i"
alias knb-ip="kubectl describe pods $(knb | awk -F ' ' '{print $2}') | grep '^ip' -i"
alias nby="google-chrome $(knb-ip | awk -F ' ' '{print $2}'):8888/notebooks/user_data/notebooks"


