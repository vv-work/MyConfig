echo "Removing nvim config"
rm -r -f ~/.config/nvim
echo "Coping our nvim config"
cp -r ./nvim ~/.config/
echo "Done"
