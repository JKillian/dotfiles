
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'
   
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# history control
export HISTCONTROL="erasedups:ignoreboth"
export HISTFILESIZE=500000
export HISTSIZE=10000
shopt -s histappend
alias hgrep="history|grep"
 
