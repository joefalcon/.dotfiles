## Export $PATH
#export PATH=/opt/homebrew/bin:/Users/joseph/.local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin

## Create $ZDOTDIR/zsh.d for testing plugins 
for ZSH_FILE in "${ZDOTDIR:-$HOME}"/zsh.d/*.zsh(N); do
    source "${ZSH_FILE}"
done

## Add our own functions folder to fpath
export fpath=($ZDOTDIR/functions $fpath)

## Brew zsh-completion

  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

## History
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file
setopt HIST_NO_STORE             # Don't store history commands

## Prompt
#PROMPT='%F{33}i%f%F{39}a%f%F{38}n%f%F{44}pan%f%F{50}@%f%F{43}ar%f%F{44}ch%f%F{38}:%1~/%f %F{44}%#%f ' 
