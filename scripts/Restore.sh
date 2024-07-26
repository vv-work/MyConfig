  

TMUX_FILE="~/.tmux.conf"

if [ -f "$TMUX_FILE" ]; then
    rm "$FILE"
    echo "$FILE has been removed."
else
    echo "$FILE does not exist."
fi

cp ../config/dotfiles/tmux.conf "$TMUX_FILE"
