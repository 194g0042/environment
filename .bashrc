#
cd "${HOME}"
#
#alias SYNC="sync; sync; sync"
#alias c="clear"
#alias cd..="cd .."
#alias cd...="cd ../.."
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias f="finger"
alias g="grep --color=auto"
alias lo="logout"
alias m="more"
alias md="mkdir"
alias psa="ps awx"
alias psm="ps -U $USER"
alias psr="psu root"
alias psu="ps -U"
alias sc="screen"
alias ssh="ssh -4 -C -e none"
alias t="telnet"
alias vi="vim"
alias tmux="tmux -2"
alias ta="tmux attach"
alias more="less"

if [ -x /usr/bin/unalias ]; then
    unalias s 2>/dev/null
fi

EDITOR=vim
VISUAL=$EDITOR

export EDITOR VISUAL
export BLOCKSIZE="k"
export EDITOR="vim"
export GIT_PAGER="less"
export LESS="-EfmrSwX"
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH="/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export PERL_CPANM_OPT="--mirror http://cpan.nctu.edu.tw/ --mirror http://cpan.cpantesters.org/"
#export LC_ALL="zh_US.UTF-8"
#
if [ -z "${LANG}" ]; then
    export LANG="en_US.UTF-8"
fi

if [ -x /usr/local/bin/most -o -x /usr/bin/most ]; then
    export PAGER="most"
else
    export PAGER="less"
fi
#
shopt -s checkwinsize
shopt -s histappend
#
if [ "`uname -s`" == "FreeBSD" -o "`uname -s`" == "Darwin" ]; then
    alias ls="/bin/ls -FG"
    alias w="/usr/bin/w -i"
elif [ "`uname -s`" == "Linux" ]; then
    alias ls="/bin/ls -F --color=always"
else
    alias ls="/bin/ls -F"
fi

#
if [ -z "$WINDOW" ]; then
    PS1='\u@\h [\w] [\A] \[\e[0m'
else
    PS1='\u@\h [\w] [\A/W$WINDOW] \[\e[0m'
fi

#
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && source "$HOME/perl5/perlbrew/etc/bashrc"
#
[[ -s "/etc/bash_completion" ]] && source "/etc/bash_completion"
[[ -s "/usr/local/etc/bash_completion" ]] && source "/usr/local/etc/bash_completion"
#
[[ -s "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"

if [ "$TERM" = "screen" ]; then
  PROMPT_COMMAND='/usr/bin/printf "\033k%s\033\134" `/bin/hostname -s `'

fi



