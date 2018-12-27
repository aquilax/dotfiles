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

