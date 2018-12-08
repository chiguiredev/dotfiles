# want your terminal to support 256 color schemes? I do ...
export TERM="xterm-256color"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# allows you to type Bash style comments on your command line
# good 'ol Bash
setopt interactivecomments

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/rafael/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="agnoster"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
  DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(
  git extract npm z colorize zsh-autosuggestions vi-mode shrink_path
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases

# Getting into config files
alias zconfig="vim ~/.zshrc"
alias vconfig="vim ~/.vimrc"
alias tconfig="vim ~/.tmux.conf"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias iconfig="vim ~/.i3/config"
alias cconfig="vim ~/.config/compton.conf"

# Every one that uses vim needs these ones
alias cim="vim"
alias p="pwd"
alias vi="vim"
alias q="exit"
alias :q="exit"
alias c="clear"
alias suvim="sudo -E vim"

# Trash-cli alias
alias tp="trash-put"
alias tl="trash-list"
alias tr="trash-restore"
alias temp="trash-empty"

# Update the zsh config on the fly
alias srcme="source ~/.zshrc"

# When pacmandb is being stupid
alias rmpacdb="sudo rm /var/lib/pacman/db.lck"

# Php bullshit
alias xampphp="/opt/lampp/bin/php"
alias xampstart="sudo /opt/lampp/lampp start"

# Why not?
alias fuck="sudo"
alias pi="ping 8.8.8.8"
alias myip="ip addr | grep enp && ip addr | grep wlp"

# Tmus alias
alias t="tmux"
alias tdetach="tmux detach-client"
alias tattach="tmux attach -t"
alias tkill="tmux kill-session -t"
alias tls="tmux ls"

# Oracle db and docker
alias oraclerun="docker run -d -p 49160:22 -p 49161:1521 -p 8080:8080 -e ORACLE_ENABLE_XDB=true wnameless/oracle-xe-11g"
alias oracle_check="curl -XGET 'http://localhost:8080'"

# Execute proxyman, I don't know why the hell the symbolic link does not work
alias proxyman="cd /home/rafael/.proxyman && ./main.sh"

# Easy hotspot setup
alias create_hotspot="sudo create_ap wlp9s0f0 enp8s0 rafael 24780714"
alias private_hotspot="sudo create_ap wlp9s0f0 enp8s0 lala 24780714"
alias clean_hotspot="sudo create_ap --fix-unmanaged"

#sweet placing of  secndary display
alias homeoffice="xrandr --output DP1 --auto --left-of eDP1"

alias pokemon="cd /opt/PROLinux && ./PRO.x86_64"
alias alibaba="ip addr | grep inet"

# This one is to manage the dotfiles repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotstatus='dotfiles status -uno'

# Not quite sure if I need it, but I won't delete it
alias tmux="TERM=screen-256color-bce tmux"

# Adding the path where yarn global binaries are store
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# More yarn bullshit
alias ys='yarn start'
alias yb='yarn build'
alias yi='yarn install'

# Open vim with no config
alias noconfvim="vim -u NONE"

alias update="sudo pacman -Syu"

alias cat="bat"

# Image carousel with feh
alias img_carousel="feh -FZS"

#wps
alias word="wps"
alias powerpoint="wpp"
alias excel="et"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
