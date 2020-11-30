if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile

fi
# Trigger ~/.bashrc commands
. ~/.bashrc

export QT_QPA_PLATFORMTHEME=gtk2

# Add ssh ket to the ssh aget for github
eval "$(ssh-agent -s)" > /dev/null 2&>1
ssh-add ~/.ssh/github > /dev/null 2&>1
