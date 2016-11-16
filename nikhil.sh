#!/usr/bin/env bash
# ====== HIPCHAT STUFF ======
# Send $2 to $1 -- ex: hcsend nikhil 'Your rc files are sick, thanks man!'
hcsend() { curl -X POST "chat.kensho.com/v2/user/@$1/message?auth_token=$HIPCHAT" --data "$2" -H "content-type: text/plain"}
# Pipe file to hipchat as /code -- ex: cat .fnrc | hc nikhil
hc() { message=`cat`; hcsend "$1" "/code $message"}
# ====== OTHER STUFF ======
# Directly access diffs without loading the slow af site -- ex: pda 12345 accept "LGTM!"
# 
# Actions have to be one of the following:
# abandon, accept, add_ccs, add_reviewers, claim, commit, create, none, reclaim, reject, reopen, request_review, resign, rethink, summarize, testplan, update
pda() { curl http://phabricator.kensho.com/api/differential.createcomment -d api.token=$PHABRICATOR_TOKEN -d revision_id=$1 -d action=$2 -d message=$3 }
# Destory all docker containers and volumes. IRREVERSIBLE.
dedock () { docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q); docker volume rm $(docker volume ls -q) }
# Show top ten cpu hogging processes
cpu () { top -u -l 1 -n 10 -ncols 4 }
# Read markdown files in the terminal
md() { width=$(($(tput cols) - 14)); pandoc ${1:-README.md} -f markdown_github -t plain --columns="$width" | awk '{print "    " $0}' | less }
# Convert mov files to gifs
mtg () { ffmpeg -i $1 -r 15 -vf "scale=600:-1, setpts=0.25*PTS" -f gif - >! ${1/%mov/gif} }
# Open file in chrome
oc () { open -a Google\ Chrome $1 }
# Open the specified rc file. Defaults to .fnrc
# ====== ALIASES ======
alias pc=pbcopy
alias pp=pbpaste
alias da=deactivate
