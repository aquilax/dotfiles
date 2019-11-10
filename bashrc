# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Open vimwiki index
alias vimwiki='vim -c VimwikiIndex'

# Add entry in vimwiki for today
alias vimdiary='vim -c VimwikiMakeDiaryNote'

# oauth
export OATHKEYFILE="$HOME/ledger/oauthKeys"

# Save history on every command
export PROMPT_COMMAND='history -a'

# Weather
function weather {
  curl -s wttr.in/$1
}

# WeatherV2
function weather2 {
  curl -s wttr.in/$1?format=v2
}


# Cheatsheet
function cheat() {
  curl cht.sh/$1
}

function magnet-info() {
  hash=$(echo "$1" | grep -oP "(?<=btih:).*?(?=&)")
  echo "Magnet hash: $hash"
  aria2c --bt-metadata-only=true --bt-save-metadata=true -q "$1"
  aria2c "$hash.torrent" -S
}

