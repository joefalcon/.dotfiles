typeset -U path
path=(~/.local/bin $path[@])
fpath=(~/.zsh-plugins/zsh-completions/src $fpath)

export EDITOR='nvim'
export PAGER='less'
export BROWSER='firefox'
export NVIMD="$HOME/.dotfiles/nvim/.config/nvim"
export DOT_FILES="$HOME/.dotfiles"
export KERNEL_NAME=$( uname | tr '[:upper:]' '[:lower:]' )

export FZF_CTRL_T_COMMAND='fd --type f --hidden --exclude .git --exclude .cache'
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--color=16,hl:4,hl+:4,bg+:15,fg+:8,spinner:5,info:2'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"

case $KERNEL_NAME in
    'linux')
        PATH:$HOME/.local/bin:$PATH
        ;;
    'darwin')
        PATH:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:$PATH
        ;;
    *) ;;
esac
