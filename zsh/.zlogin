# run something nice on login

(tty | grep "tty1$") && startx "$XDG_CONFIG_HOME/X11/xinitrc"
(tty | grep "tty2$") && startx /usr/local/bin/dwm
(tty | grep "tty[3-6]$") && (clear ; echo "\n" ; neofetch ; echo "\n")

