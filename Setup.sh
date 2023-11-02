# Remove old nvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim/
# install nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 &&nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

