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

# oauth
export OATHKEYFILE="$HOME/ledger/oauthKeys.pbkdf2"

# Extend history
HISTSIZE=1000000
HISTFILESIZE=1000000

# Save history on every command
export PROMPT_COMMAND='history -a'

# pass storage
export PASSWORD_STORE_DIR="$HOME/ledger/pass"

# Hranoprovod
export HR_DATABASE="$HOME/ledger/food.yaml"
export HR_LOGFILE="$HOME/ledger/log.yaml"

# Navi
export NAVI_PATH="/data/app/navi/cheats:/home/aquilax/ledger/cheats"

# GTK Warning messages
export NO_AT_BRIDGE=1

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
