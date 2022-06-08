if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases

alias rm=trash
alias hardrm="bleachbit --shred"
alias screenSwap="sh /home/kai/.dotfiles/scripts/screenSwap.sh"
alias hibernate="systemctl hibernate"
alias pac="paru"
alias bright="xrandr --output eDP-1 --brightness"
alias screenshot="flameshot launcher"

# Automatically start a tmux session on booting fish 
# (script has an if handler for tmux already existing and throws a silent error)

sh ~/.dotfiles/scripts/tmuxStart.sh
