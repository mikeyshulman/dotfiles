if $(gls &>/dev/null); then
   alias ls="gls -F --color"		
   alias l="gls -F --color --hide="*.pyc""		
   alias ll="gls -l --color"		
   alias la='gls -A --color'		
fi


# alias rm_space="find -name "* *" -type f | rename 's/ /_/g'"
