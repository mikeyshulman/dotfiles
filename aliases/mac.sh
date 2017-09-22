if [[ "$OSTYPE" != 'linux-gnu' ]]; then
    alias md='open -a MacDown'
    alias san='cd ~/flow/santander'
    alias plake='git push lake master'
    alias rsan='PYTHONPATH='.' python code/sam_filter.py'
    alias ts='PYTHONPATH='.' py.test code/test_hash_filter.py'
    alias svrunner='runsvdir -P /usr/local/var/service'
    alias mfree="top -l 1 -s 0 | grep PhysMem" 
    # The next line updates PATH for the Google Cloud SDK.
    # The next line enables shell command completion for gcloud.
    source "${HOME}/google-cloud-sdk/path.zsh.inc"
    alias lake="gcloud compute --project kensho-learn ssh --zone us-east1-b data-lake"
    source "${HOME}/google-cloud-sdk/completion.zsh.inc"
    alias mit='cd ~/Dropbox/MIT/ml/repo'
    alias klenv='source ~/flow/kensho-learn/kml/bin/activate'
    source ~/flow/zentreefish/.inenv/inenv.sh
    alias newtags='ctags -f ~/tags -R ~/flow/kensho-learn/*'
    klenv  # source venv
fi
