#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add local bin to path
export PATH=$PATH:$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin

# Some shortcuts for editing common files
alias qtile-config='vim ~/.config/qtile/config.py'
alias bash-config='vim ~/.bashrc'
alias vim-config='vim ~/.vimrc'
alias qtile-start-config='vim ~/.config/qtile/autostart.sh'

# Modify common commands
alias vi='vim'
alias spotify='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
alias ls='ls --color=auto'
cd() {
    command cd "$1" && ls
}

# Git helper
gb() {
        echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo  -n ')'
}
git_branch() {
        gb | sed 's/()//'
}

# PS1 Ricing
# PS1='[\u@\h \W]\$ '
# Some PS1 ricing
export PS1="\[\033[38;5;219m\]\u\
\[$(tput sgr0)\]\[\033[38;5;15m\]@\
\[$(tput sgr0)\]\[\033[38;5;214m\]\h\
\[$(tput sgr0)\]\[\033[38;5;15m\] \
\[$(tput sgr0)\]\[\033[38;5;39m\]\w\
\[$(tput sgr0)\]\[\033[38;5;15m\] \
\[$(tput sgr0)\]\[\033[38;5;85m\]\t\
\[$(tput sgr0)\]\[\033[0;32m\] \$(git_branch)\
\[$(tput sgr0)\]\[\033[38;5;15m\]\n\
\[\033[38;5;11m\]>\
\[$(tput sgr0)\]\[\033[38;5;15m\] \
\[$(tput sgr0)\]"

# Odrive
alias odrive='~/.odrive-agent/bin/odrive'
alias odrive-start='nohup "$HOME/.odrive-agent/bin/odriveagent" > /dev/null 2>&1 &'

# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
# export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
# if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
# if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

# Run some startup commands
wal -R -q -a 90
pfetch

# SBP prompt
# sbp_path=/home/ben/temp/sbp
# source /home/ben/temp/sbp/sbp.bash
# sbp color default-256

PATH="/home/ben/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ben/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ben/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ben/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ben/perl5"; export PERL_MM_OPT;
