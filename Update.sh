echo "Removing kitty and tmux config"

rm -rf ~/.config/kitty
rm -rf ~/.config/tmux
rm -rf ~/.config/i3
rm -rf ~/.config/fish

cp -r ./config/* ~/.config
# rm -r -f ~/.config/nvim/custom echo "Coping our nvim config"
# cp -r ./MyNvChadConfig ~/.config/nvim/lua/custom
echo "Done"
