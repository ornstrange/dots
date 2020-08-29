# run something nice on login

(tty | grep "tty1$") && startx "$XDG_CONFIG_HOME/X11/xinitrc"
(tty | grep "tty[2-6]$") && (clear ; echo "" ; pfetch)

