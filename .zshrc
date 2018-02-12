neofetch
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  #export ZSH=/usr/share/oh-my-zsh
  export ZSH=$HOME/.oh-my-zsh

# POWERLEVEL9K
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_INSTALLATION_PATH=/usr/share/zsh-theme-powerlevel9k

POWERLEVEL9K_MODE='powerline'
# POWERLEVEL9K_MODE='awesome-fontconfig'
DEFAULT_USER='ben'
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_VI_INSERT_MODE_STRING='INS'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='CMD'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable root_indicator user vi_mode dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time background_jobs ram virtualenv rbenv rvm)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"
# POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%H:%M  \UF133  %m.%d.%y}"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="🢒 "
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git tmux branch colored-man-pages colorize common-aliases copydir copyfile cp dircycle dirhistory extract jump last-working-dir python rsync sublime textmate web-search)
plugins=(git, zsh-autosuggestions, copydir, copyfile, copybuffer, colorize, dirhistory, vi-mode, web-search )
 
# Fix for Vi-Mode Indicator
zle-keymap-select () {
	zle reset-prompt
	zle -R
}
zle -N zle-keymap-select


RANGER_LOAD_DEFAULT_RC="false"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

###########################################################
# ALIAS
###########################################################

alias tmux='tmux -2'

###########################################################
alias C="xclip"
alias V="xclip -o"
alias "contextP=python ~/Dev/_repo/config_files/python/lss/context_parser.py"

VISUAL=vim
export VISUAL
EDITOR=/usr/bin/vim
export EDITOR

###########################################################

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
#bindkey -a u undo
#bindkey -a '^R' redo
#bindkey '^?' backward-delete-char
#bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
#bindkey -M viins '^s' history-incremental-search-backward
#bindkey -M vicmd '^s' history-incremental-search-backward


## The following binds them to key combinations such as i" a( in both the visual and viopp keymaps.
#autoload -U select-bracketed select-quoted
#zle -N select-bracketed
##zle -N select-quoted
#  for km in viopp visual; do
#  bindkey -M $km -- '-' vi-up-line-or-history
##  for c in {a,i}"${(s..):-\'\"\`\|,./:;-=+@}"; do
##    bindkey -M $km $c select-quoted
##  done
#  for c in {a,i}${(s..):-'()[]{}<>bB'}; do
#    bindkey -M $km $c select-bracketed
#  done
#done

# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#         source /etc/profile.d/vte.sh
# fi


###########################################################
# PYWAL AUTOLOAD 
###########################################################

# Import colorscheme from 'wal'
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (wal -r -t &)
cat /home/ben/.cache/wal/sequences

###########################################################
# POWERLINE
###########################################################

# source /etc/profile
# PATH=$PATH:~/bin

# export TERM="screen-256color"
# export PATH="$HOME/.local/bin:$PATH"
# export POWERLINE_COMMAND=powerline
# export POWERLINE_CONFIG_COMMAND=powerline-config

# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1

# . ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

###########################################################
# TOOLS
###########################################################

# FASD ----------------------------------------------------
eval "$(fasd --init auto)"

alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

# FASD DOC
# f foo           # list frecent files matching foo
# a foo bar       # list frecent files and directories matching foo and bar
# f js$           # list frecent files that ends in js
# f -e vim foo    # run vim on the most frecent file matching foo
# mplayer `f bar` # run mplayer on the most frecent file matching bar
# z foo           # cd into the most frecent directory matching foo
# open `sf pdf`   # interactively select a file matching pdf and launch `open`


# FZF -----------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TMUXIFIER -----------------------------------------------
export PATH="$HOME/.tmuxifier/bin:$PATH"
export TMUXIFIER_TMUX_OPTS="-2"
# eval "$(tmuxifier init -)"


if [ -f ~/.zshrc_alias ]; then
    source ~/.zshrc_alias
fi
if [ -f ~/.common_alias ]; then
    source ~/.common_alias
fi

# This binds Ctrl-O to ranger-cd:
bindkey -s "\C-o" "ranger-cd\C-m"

# Syntax highlight
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
