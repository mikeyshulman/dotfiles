if [[ "$OSTYPE" != 'linux-gnu' ]]; then
    alias svrunner='runsvdir -P /usr/local/var/service'
    alias mfree="top -l 1 -s 0 | grep PhysMem" 
    # The next line updates PATH for the Google Cloud SDK.
    # The next line enables shell command completion for gcloud.
    source "${HOME}/google-cloud-sdk/path.zsh.inc"
    source "${HOME}/google-cloud-sdk/completion.zsh.inc"
    alias mit='cd ~/Dropbox/MIT/ml/'
    alias mrepo='cd ~/Dropbox/MIT/ml/'
    alias klenv='source ~/flow/kensho-learn/kml/bin/activate'
    source ~/flow/zentreefish/.inenv/inenv.sh
    klenv  # source venv
fi
