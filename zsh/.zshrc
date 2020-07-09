# Base16 Shell
BASE16_SHELL="$XDG_CONFIG_HOME/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# completion
zstyle ':completion:*' completer_expand _complete _ignored
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' max-errors 10
zstyle ':completion:*' substitute 1
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/ornstrange/.zshrc'

# prompt
autoload -Uz compinit promptinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
promptinit
# use spaceship prompt
prompt spaceship

# spaceship prompt settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_CHAR_SYMBOL='$'
SPACESHIP_CHAR_SYMBOL_SECONDARY=''
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_TIME_SHOW=false
SPACESHIP_USER_SHOW=true
SPACESHIP_PROMPT_ORDER=(
    time
    user
    dir
    host
    git
    venv
    pyenv
    dotnet
    exec_time
    jobs
    exit_code
    char
)

# keyboard map
setxkbmap is

# add bin to PATH
path+=$HOME/bin
path+=$HOME/.local/bin

# aliases
source $XDG_CONFIG_HOME/zsh/.zshalias 

# use vim keys
bindkey -v

# autocd
setopt auto_cd

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ionic-completion
if type compdef &>/dev/null; then
  __ionic() {
    compadd -- $(ionic completion -- "${words[@]}" 2>/dev/null)
  }

  compdef __ionic ionic
fi

