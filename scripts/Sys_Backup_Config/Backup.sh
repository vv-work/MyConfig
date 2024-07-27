echo "Removing kitty and tmux config" 
# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Example usage
# echo -e "${GREEN}This is green text${NC}"
# echo -e "${YELLOW}This is yellow text${NC}"
# echo -e "${BLUE}This is blue text${NC}"


my_array=("kitty" "tmux")

# # Looping through an array
# for element in "${my_array[@]}"; do
#   rm -rf ~/.config/$element 
#   echo -e "${RED}Removed ${element} ${NC}"
#   # rm -rf ~/.config/tmux
# done
#
# echo -e "${NC}"
#
# for element in "${my_array[@]}"; do
#   cp -r ./config/$element ~/.config/
#   echo "Copied $element"
#   # rm -rf ~/.config/tmux
# done

# I can't remove i3 because it's configuration is not finished 
# cp -r ./config/* ~/.config
# ``
# rm -r -f ~/.config/nvim/custom echo "Coping our nvim config"
# cp -r ./MyNvChadConfig ~/.config/nvim/lua/custom
#

tmux_file = "tmux.conf"

tmux_local_dir = "../config/config/tmux/"
tmux_global = "~/.config/tmux/"


echo "Done"
