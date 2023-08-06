# XDG Base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"

# === https://github.com/b3nj5m1n/xdg-ninja

export ANDROID_HOME="$XDG_DATA_HOME"/android # .android
export ASDF_DATA_DIR="$XDG_DATA_HOME"/asdf # .asdf
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker # .docker
export ELM_HOME="$XDG_CONFIG_HOME"/elm # .elm
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem # .gem/specs
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc # .screenrc
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle # .gradle
export JULIA_DEPOT_PATH="$XDG_DATA_HOME/julia:$JULIA_DEPOT_PATH" # .julia
export LESSHISTFILE="$XDG_STATE_HOME"/less/history # .lesshst
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer # .mplayer
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc # .npmrc
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages # .nuget
export NVM_DIR="$XDG_DATA_HOME"/nvm # .nvm
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java # .java
export PYLINTHOME="$XDG_CACHE_HOME"/pylint # .pylint.d
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle # .bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle # .bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle # .bundle
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup # .rustup
export SQLITE_HISTORY="$XDG_STATE_HOME"/sqlite/history # .sqlite_history
export W3M_DIR="$XDG_DATA_HOME"/w3m # .w3m

# == end xdg-ninja

# Users commands
export PATH="$PATH":"~/bin:~/go/bin"

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Open vimwiki index
alias vimwiki='vim -c VimwikiIndex'

# Add entry in vimwiki for today
alias vimdiary='vim -c VimwikiMakeDiaryNote'

# todo.txt
alias vimtodo='vim ~/ledger/todo/todo.txt'

# Flip a coin
alias coindecide='if (( RANDOM % 2 == 0 )); then echo Yes; else echo No; fi'

# fzf preview
alias fzfp="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"

# fzf preview to vim
alias fzfvim='vim "$(fzfp)"'

# oauth
export OATHKEYFILE="$HOME/ledger/oauthKeys.pbkdf2"

# Extend history
HISTSIZE=-1
HISTFILESIZE=-1

export HISTTIMEFORMAT="[%F %T] "

export HISTFILE=~/.bash_eternal_history

# Save history on every command
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# pass storage
export PASSWORD_STORE_DIR="$HOME/ledger/pass"

# Hranoprovod
export HR_DATABASE="$HOME/ledger/food.yaml"
export HR_LOGFILE="$HOME/ledger/log.yaml"

# Remind file
export DOTREMINDERS="$HOME/ledger/remind.rem"

# Navi
export NAVI_PATH="/data/app/navi/cheats:/home/aquilax/ledger/cheats"

# GTK Warning messages
export NO_AT_BRIDGE=1

# TODO.sh config file
export TODOTXT_CFG_FILE="$HOME/ledger/todo/config"

# Weather
function weather {
  curl -s "wttr.in/$1"
}

# WeatherV2
function weather2 {
  curl -s "wttr.in/$1?format=v2"
}

# Cheatsheet
function cheat {
  curl "cht.sh/$1"
}

function magnet-info {
  hash=$(echo "$1" | grep -oP "(?<=btih:).*?(?=&)")
  echo "Magnet hash: $hash"
  aria2c --bt-metadata-only=true --bt-save-metadata=true -q "$1"
  aria2c "$hash.torrent" -S
}

# asdf
. $ASDF_DATA_DIR/asdf.sh
. $ASDF_DATA_DIR/completions/asdf.bash

# Merki
export MERKI_FILE="$HOME/ledger/health.log"

# Flyctl
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

