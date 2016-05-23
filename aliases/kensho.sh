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

pt () { 
    fname=$1
    shift
    py.test tests/test_$fname "$@"
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

