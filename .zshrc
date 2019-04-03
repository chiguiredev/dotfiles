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
  git extract z colorize zsh-autosuggestions vi-mode yarn docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
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

alias vim="nvim"
# Getting into config files like a pro
alias zconfig="nvim ~/.zshrc"
alias vconfig="nvim ~/.config/nvim/init.vim"
alias tconfig="nvim ~/.tmux.conf"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias iconfig="nvim ~/.i3/config"
alias cconfig="nvim ~/.config/compton.conf"

# Every one that uses vim needs these ones
alias cim="nvim"
alias p="pwd"
alias q="exit"
alias :q="exit"
alias c="clear"
alias suvim="sudo -E nvim"

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

# Execute proxyman, I don't know why the hell the symbolic link does not work
alias proxyman="cd /home/rafael/.proxyman && ./main.sh"

# Easy hotspot setup
alias create_hotspot="sudo create_ap wlp9s0f0 enp8s0 rafael 24780714 --dhcp-dns 8.8.8.8"
alias private_hotspot="sudo create_ap wlp9s0f0 enp8s0 lala 24780714 --dhcp-dns 8.8.8.8"
alias clean_hotspot="sudo create_ap --fix-unmanaged"

#sweet placing of  secndary display
alias homeoffice="xrandr --output DP1 --auto --left-of eDP1 && xdotool key super+shift+r"

alias pokemon="cd /opt/PROLinux && ./PRO.x86_64"
alias alibaba="ip addr | grep inet"

alias gta="git status"
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

# Image carousel with feh
alias img_carousel="feh -FZS"

#wps
alias word="wps"
alias powerpoint="wpp"
alias excel="et"

alias open="mimeopen"
alias open-set-default="mimeopen -d"
alias open-with="mimeopen -a"

# android setup bullshit
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools


if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

export MTP_NO_PROBE="1"

# z and fzf for the win
# shamelessly taken from fzf github page, u sing z to print opened directories
# and fzf to searh the list and cd into it
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --nth 2.. --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /home/rafael/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh ]] && . /home/rafael/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh

# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.

tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-nvim} "$file"
  fi
}
