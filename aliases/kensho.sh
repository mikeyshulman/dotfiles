vk () {
    fname=$1
    shift
    vim klearn/$fname.py 
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

#kensho-learn py.test
alias rmt='py.test tests/test_mbs.py --tb=short'
alias vmt='vim tests/test_mbs.py'
alias vt='vim tests/test_everything.py'
alias utest='py.test tests/*.py --tb=short'
alias tslow='py.test tests/test_everything.py --runslow --tb=short'
alias klenv='source kml/bin/activate'
