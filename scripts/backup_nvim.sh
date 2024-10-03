#!/bin/bash

# Global variables for the backup_nvim.sh script
root_dir="../"
my_config_dir="${root_dir}config/config/"
linux_config_dir="$HOME/.config/"

nvim_sys_dir="${linux_config_dir}nvim/"
nvim_my_dir="${my_config_dir}nvim/"

prefix_git="🐙🐱"
prefix_vim_backup=" "
suffix_done=""

# Start backup message
echo "$prefix_vim_backup Starting Neovim backup..."


# Check if the nvim directory exists in nvim_my_dir and push existing changes
if [ -d "$nvim_my_dir" ]; then
    # Change to the myConfig directory
  cd "$root_dir" || exit
    
    # Add and commit existing changes
    git add "."
    git commit -m "$prefix_git $prefix_vim_backup Backup existing Neovim settings"
    git push origin main
    echo "$prefix_git $prefix_vim_backup Backup and push of existing Neovim settings completed."
fi

# Copy the nvim directory from system config to myConfig
rsync -av --delete "$nvim_sys_dir" "$nvim_my_dir"

# Remove .git folder if it exists
git_dir="$nvim_my_dir/.git"
if [ -d "$git_dir" ]; then
    rm -rf "$git_dir"
    echo "$prefix_git .git directory removed."
fi

# Commit and push after copying
cd "$root_dir" || exit
git add "."
git commit -m "$prefix_git $prefix_vim_backup Backup Neovim settings after update"
git push 

# Completion message
echo "$prefix_git - $suffix_done Neovim backup completed successfully."

