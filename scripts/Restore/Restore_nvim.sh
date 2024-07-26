NVIM_DIR="~/.config/nvim"

if [ -d "$NVIM_DIR" ]; then
    rm -r "$NVIM_DIR"
    echo "$NVIM_DIR has been removed."
else
    echo "$NVIM_DIR does not exist."
fi

cp ../config/config/nvim "$NVIM_DIR"
