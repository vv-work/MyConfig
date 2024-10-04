# Configuration

## Fish

```bash
sudo pacman -S fish
chsh -s /usr/bin/fish
```

## TMUX

### TPM and new source-fie

1. Install TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

2. Add to a sorce file 

```conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Initialize TPM (Tmux Plugin Manager)
run '~/.tmux/plugins/tpm/tpm'
```
3. Change the source file

```bash
tmux source-file ~/.tmux.conf
```
4. Start installation of configurations.

## NVIM 

### Prerequisities


- [ ] NERD fonts
- [ ] Git/GH
- [ ] Make
- [ ] Repgrep
- [ ] Python 
- [ ] Node.js

## Cleaning 
```bash
rm -rm ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```
### NeoVim copilot 

some text I want it to predicth 

#### Requirement

- Node.js

## git

 git config --g global init.defaultBranch main


## Keyboard

> Switch keys temporary

`setxkbmap -option caps:swapescape` 


```bash
xev # Get what keys are inputed
```
