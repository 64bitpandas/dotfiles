# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin

#############################
# ZSH CONFIG
#############################


# Path to your oh-my-zsh installation.
export ZSH="/home/ben/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions)



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



source $ZSH/oh-my-zsh.sh



#############################
# ALIASES
#############################
alias apps="~/.config/rofi/launchers/launcher.sh"source ~/powerlevel10k/powerlevel10k.zsh-theme
alias vi='vim'
alias spotify='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
alias ls='ls --color=auto'
function chpwd() {
  ls
}
alias wal-reload='wal -f ~/.config/wal/colorschemes/colors.json'
alias odrive='~/.odrive-agent/bin/odrive'
alias odrive-start='nohup "$HOME/.odrive-agent/bin/odriveagent" > /dev/null 2>&1 &'
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
alias refresh-pulseaudio="pkill pulseaudio && systemctl --user disable pulseaudio && systemctl --user enable pulseaudio && pulseaudio -D"

#############################
# TERMINAL INIT
#############################
wal -f ~/.config/wal/colorschemes/colors.json -q
pfetch

