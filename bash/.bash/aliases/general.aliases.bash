if command ls --color -d . &> /dev/null; then
    alias ls='ls --color=auto'
    # BSD `ls` doesn't need an argument (`-G`) when `$CLICOLOR` is set.
fi

# List directory contents
alias sl=ls
alias la='ls -AF' # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias lf='ls -F'

alias _='sudo'

# Shortcuts to edit startup files
alias vbrc='${VISUAL:-vim} ~/.bashrc'
alias vbpf='${VISUAL:-vim} ~/.bash_profile'


alias c='clear'
alias cls='clear'

alias edit='${EDITOR:-${ALTERNATE_EDITOR:-nano}}'
alias pager='${PAGER:=less}'

alias q='exit'

alias irc='${IRC_CLIENT:=irc}'

# Language aliases
alias rb='ruby'
alias py='python'
alias ipy='ipython'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'               # Go up one directory
alias cd..='cd ..'             # Common misspelling for going up one directory
alias ...='cd ../..'           # Go up two directories
alias ....='cd ../../..'       # Go up three directories
alias -- -='cd -'              # Go back
alias dow='cd $HOME/Downloads' # Go to the Downloads directory

# Shell History
alias h='history'

# Directory
alias md='mkdir -p'
alias rd='rmdir'

# Remove
alias rmrf='rm -rf'

# Shorten extract
alias xt='extract'

# Display whatever file is regular file or folder
function catt() {
    for i in "$@"; do
        if [[ -d "$i" ]]; then
            ls "$i"
        else
            cat "$i"
        fi
    done
}
