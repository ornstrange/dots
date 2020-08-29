# random env vars
export EDITOR=vim
export VISUAL=vim
export TERM=alacritty
export TERMINAL=alacritty
export CC="gcc"
export CXX="g++"
export CONFIG="$HOME/.config"
export XDG_CONFIG_HOME="$CONFIG"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GDK_SCALE=1
export GDK_DPI_SCALE=

# cleanup home dir
export VIMINIT="source /home/ornstrange/.config/vim/vimrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
export CLASSPATH="/usr/share/java/algs4.jar:$CLASSPATH"
unset _JAVA_OPTIONS
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export LESSHISTFILE=-
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export HISTFILE="$XDG_DATA_HOME"/zsh/history

