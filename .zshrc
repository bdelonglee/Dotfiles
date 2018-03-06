###########################################################################
# >>>--------------------    INIT ------------------------------------<<< #
###########################################################################

neofetch
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

###########################################################################
# >>>--------------------    VARIABLES -------------------------------<<< #
###########################################################################

#-------- Oh-My-Zsh Source {{{
#------------------------------------------------------

# Path to your oh-my-zsh installation.
#export ZSH=/usr/share/oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

#}}}
#-------- Misc Export {{{
#------------------------------------------------------

RANGER_LOAD_DEFAULT_RC="false"
export LANG=en_US.UTF-8
VISUAL=vim
export VISUAL
export EDITOR='vim'
EDITOR=/usr/bin/vim
export EDITOR

#}}}

###########################################################################
# >>>--------------------    FRAMEWORKS etc... -----------------------<<< #
###########################################################################

#-------- Powerlevel9K {{{
#------------------------------------------------------

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

#}}}
#-------- Oh-My-Zsh Options {{{
#------------------------------------------------------

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

#}}}
#-------- Oh-My-Zsh Plugins {{{
#------------------------------------------------------

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git tmux branch colored-man-pages colorize common-aliases copydir copyfile cp dircycle dirhistory extract jump last-working-dir python rsync sublime textmate web-search)
plugins=(git, zsh-autosuggestions, fzf-zsh, copydir, copyfile, copybuffer, colorize, dirhistory, vi-mode, web-search )

 #}}}
#-------- Oh-My-Zsh Highlighting {{{
#------------------------------------------------------
# Syntax highlight
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#}}}

source $ZSH/oh-my-zsh.sh

###########################################################################
# >>>--------------------    FUNCTIONS -------------------------------<<< #
###########################################################################

#-------- Fix FZF TRL+R {{{
#------------------------------------------------------

# CTRL-R - Paste the selected command from history into the command line
#fzf-history-widget() {
#  local selected restore_no_bang_hist
#  if selected=$(fc -l 1 | $(__fzfcmd) +s --tac +m -n2..,.. --tiebreak=index --toggle-sort=ctrl-r -q "$LBUFFER"); then
#    num=$(echo "$selected" | head -1 | awk '{print $1}' | sed 's/[^0-9]//g')
#    LBUFFER=!$num
#    if setopt | grep nobanghist > /dev/null; then
#      restore_no_bang_hist=1
#      unsetopt no_bang_hist
#    fi
#    zle expand-history
#    [ -n "$restore_no_bang_hist" ] && setopt no_bang_hist
#  fi
#  zle redisplay
#}
#zle     -N   fzf-history-widget
#bindkey '^R' fzf-history-widget

#}}}

###########################################################################
# >>>--------------------    VIM MODE --------------------------------<<< #
###########################################################################

#-------- Options and Functions -------------------------------------------
bindkey -v              # enable vim mode on commmand line

#-------- Fix for Vi-Mode Indicator {{{
#------------------------------------------------------
zle-keymap-select () {
	zle reset-prompt
	zle -R
}
zle -N zle-keymap-select

#}}}
#-------- Fix Timeout {{{
#------------------------------------------------------
# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

#}}}
#-------- Vim Status {{{
#------------------------------------------------------

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

#}}}
#-------- Missing Hotkeys {{{
#------------------------------------------------------

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
#bindkey -a u undo
#bindkey -a '^R' redo
#bindkey '^?' backward-delete-char
#bindkey '^H' backward-delete-char

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

#}}}
#-------- History search {{{
#------------------------------------------------------

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
#bindkey -M viins '^s' history-incremental-search-backward
#bindkey -M vicmd '^s' history-incremental-search-backward

#}}}

###########################################################################
# >>>--------------------    PYWAL & COLORS --------------------------<<< #
###########################################################################

#-------- Pywal Source {{{
#------------------------------------------------------

# Import colorscheme from 'wal'
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (wal -r -t &)
cat /home/ben/.cache/wal/sequences

#}}}

###########################################################################
# >>>--------------------    CUSTOM BIND -----------------------------<<< #
###########################################################################

#-------- Ranger-cd {{{
#------------------------------------------------------

# This binds Ctrl-O to ranger-cd:
bindkey -s "\C-o" "ranger-cd\C-m"

#}}}

###########################################################################
# >>>--------------------    SOURCE EXTERNAL -------------------------<<< #
###########################################################################

#-------- Source FZF zsh {{{
#------------------------------------------------------

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#}}}
#-------- Source: bashrc_local, bashrc_alias, common_alias {{{
#------------------------------------------------------

if [ -f ~/.zshrc_alias ]; then
    source ~/.zshrc_alias
fi

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

if [ -f ~/.common_alias ]; then
    source ~/.common_alias
fi

#}}}
