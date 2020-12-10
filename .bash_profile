if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile

fi
# Trigger ~/.bashrc commands
. ~/.bashrc

#export QT_QPA_PLATFORMTHEME=gtk2

