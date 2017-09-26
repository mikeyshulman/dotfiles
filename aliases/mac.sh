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
    export PATH="/Users/shleifer/flow/kensho-learn/kml/bin:/Users/shleifer/google-cloud-sdk/bin:/Users/shleifer/.nvm/versions/node/v5.7.1/bin:/Users/shleifer/google-cloud-sdk/bin:/Users/shleifer/google-cloud-sdk/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/Users/shleifer/flow/arcanist/bin:/Users/shleifer/flow/arcanist/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/shleifer/flow/arcanist/bin:/Users/shleifer/flow/arcanist/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/shleifer/flow/arcanist/bin:/Users/shleifer/flow/arcanist/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/~/flow/kensho-learn/kml/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    source ~/flow/zentreefish/.inenv/inenv.sh
    alias newtags='ctags -f ~/tags -R ~/flow/kensho-learn/*'
    klenv  # source venv
fi
