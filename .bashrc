#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add local bin to path
export PATH=$PATH:$HOME/.local/bin

# Some shortcuts for editing common files
alias qtile-config='vim ~/.config/qtile/config.py'
alias bash-config='vim ~/.bashrc'
alias vim-config='vim ~/.vimrc'
alias qtile-start-config='vim ~/.config/qtile/autostart.sh'

alias spotify='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
alias ls='ls --color=auto'

# PS1 Ricing
PS1='[\u@\h \W]\$ '


# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

# Run some startup commands
wal -R -q -a 90
pfetch
