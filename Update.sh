echo "Removing nvim config"
rm -r -f ~/.config/nvim/custom
echo "Coping our nvim config"
cp -r ./MyNvChadConfig ~/.config/nvim/lua/custom
echo "Done"
