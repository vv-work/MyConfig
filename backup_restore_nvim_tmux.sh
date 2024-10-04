#!/bin/bash

# Global Variables
root_dir="$(pwd)/"
my_config_dir="${root_dir}config/"
linux_config_dir="$HOME/.config/"

nvim_sys_dir="${linux_config_dir}nvim/"
nvim_my_dir="${my_config_dir}nvim/"
tmux_sys_file="$HOME/.tmux.conf"
tmux_my_file="${my_config_dir}tmux.conf"

prefix_git="🐙🐱"
prefix_vim_backup=" "
prefix_tmux_backup=" 🖥"
suffix_done=""

# Function to commit and push changes
commit_and_push() {
    local dir="$1"
    local message="$2"
    
    cd "$root_dir" || exit
    git add "$dir"
    git commit -m "$message"
    git push origin main
}

# Function to back up Neovim settings
backup_nvim() {
    echo "$prefix_vim_backup Starting Neovim backup..."
    
    # Check if the nvim directory exists in nvim_my_dir and push existing changes
    if [ -d "$nvim_my_dir" ]; then
        commit_and_push "$nvim_my_dir" "$prefix_git $prefix_vim_backup Backup existing Neovim settings"
        echo "$prefix_git $prefix_vim_backup Backup and push of existing Neovim settings completed."
    fi
    
    # Copy the nvim directory from system config to myConfig
    rsync -av --delete --exclude '.git' "$nvim_sys_dir" "$nvim_my_dir"
    
    # Commit and push after copying
    commit_and_push "$nvim_my_dir" "$prefix_git $prefix_vim_backup Backup Neovim settings after update"
    
    # Completion message
    echo "$prefix_git - $suffix_done Neovim backup completed successfully."
}

# Function to back up TMUX settings
backup_tmux() {
    echo "$prefix_tmux_backup Starting TMUX backup..."
    
    # Check if tmux.conf exists and push existing changes
    if [ -f "$tmux_my_file" ]; then
        commit_and_push "$tmux_my_file" "$prefix_git $prefix_tmux_backup Backup existing TMUX settings"
        echo "$prefix_git $prefix_tmux_backup Backup and push of existing TMUX settings completed."
    fi
    
    # Copy the tmux.conf from system config to myConfig
    cp "$tmux_sys_file" "$tmux_my_file"
    
    # Commit and push after copying
    commit_and_push "$tmux_my_file" "$prefix_git $prefix_tmux_backup Backup TMUX settings after update"
    
    # Completion message
    echo "$prefix_git - $suffix_done TMUX backup completed successfully."
}

# Function to restore Neovim settings
restore_nvim() {
    echo "$prefix_vim_backup Restoring Neovim settings..."
    rm -rf ~/.config/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.local/share/nvim   
    # Copy the Neovim configuration from myConfig to the system
    rsync -av --delete "$nvim_my_dir" "$nvim_sys_dir"
    
    # Completion message
    echo "$prefix_git - $suffix_done Neovim restore completed successfully."
}

# Function to restore TMUX settings
restore_tmux() {
    echo "$prefix_tmux_backup Restoring TMUX settings..."
    
    # Copy the tmux.conf from myConfig to the system
    cp "$tmux_my_file" "$tmux_sys_file"
    
    # Completion message
    echo "$prefix_git - $suffix_done TMUX restore completed successfully."
}

# Main function to trigger backups or restores
main() {
    case "$1" in
        backup)
            backup_nvim
            backup_tmux
            ;;
        restore)
            restore_nvim
            restore_tmux
            ;;
        *)
            echo "Usage: $0 {backup|restore}"
            ;;
    esac
}

# Execute the main function with the argument passed
main "$1"
