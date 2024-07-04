echo "Removing kitty and tmux config"

rm -rf ~/.config/kitty
rm -rf ~/.config/tmux
# I can't remove i3 because it's configuration is not finished 
# rm -rf ~/.config/i3
rm -rf ~/.config/fish

cp -r ./config/* ~/.config
# rm -r -f ~/.config/nvim/custom echo "Coping our nvim config"
# cp -r ./MyNvChadConfig ~/.config/nvim/lua/custom
echo "Done"
