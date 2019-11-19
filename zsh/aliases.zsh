
# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then
    colorflag="--color" #GUN 'ls'
else
    colorflag="-G" # OS X 'ls'
fi

# ls {{{
alias l="ls -lah ${colorflag}"
alias la="ls -a ${colorflag}"
alias lf="ls -F"
alias ll="ls -lFh ${colorflag}"
alias lla="ls -AF"
alias sl="ls"

alias du="du -h"
alias df="df -h"
alias su="su -l"
alias mv="mv -i"
alias rm="rm -i"
# }}}

# icloud {{{
alias icloud='cd /Users/$USER/Library/Mobile\ Documents/com~apple~CloudDocs'
# }}}

# pip の一括アップグレード
alias pip3_upgrade='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip3 install -U'

# locate setting {{{
alias updatedb='sudo /usr/libexec/locate.updatedb'
# }}}

# cd of peco
alias pcd='cd $(ghq list -p | peco)'

# Homebre
alias brewu='brew update  && brew upgrade && brew cleanup && brew doctor'
