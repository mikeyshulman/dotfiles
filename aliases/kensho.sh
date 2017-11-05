vk () {
    fname=$1
    shift
    vim klearn/$fname.py 
}

s3ts () {
    fname=$1
    shift
    s3cmd get -r s3://kensho-timeseries-data/BAML/$fname ~/flow/baml_s3/ "$@"
}

run_tsdb() {
    cd ~/flow/zentreefish/projects/tsdb/app;
    inenv tsdb;
    ./run_tsdb.py
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

pd () {
    fname=$1
    shift
    PYTHONPATH=$PYTHONPATH:$PWD python -m pdb klearn/$fname.py "$@"
}
prun () {
    PYTHONPATH=$PYTHONPATH:$PWD python klearn/run.py --to sam@kensho.com  "$@"
}

utest () {
    py.test tests/test_*.py  --tb=short --duration=10  "$@";
}

tficc () {
    py.test tests/test_em.py --tb=short -s "$@"
    py.test tests/test_rates_model.py --tb=short -s "$@"
    py.test tests/test_mbs_model.py --tb=short -s "$@"
}

inf() {
    while :
    do
	    "$@" 
    done  
}

alias tm='t mbs_model --runslow -s'
alias tr='t rates_model --runslow -s'

#kensho-learn py.test
alias rmt='py.test tests/test_mbs.py --tb=short'
alias rms='py.test tests/test_mbs.py --tb=short --runslow'
alias vmt='vim tests/test_mbs_model.py'
alias vte='vim tests/test_everything.py'
alias ct='vim -t'
alias tslow='py.test tests/test_everything.py --runslow --tb=short'
alias newtags='ctags -f ~/tags -R kensho-learn/*'
