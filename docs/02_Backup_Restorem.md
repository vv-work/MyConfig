# Back up and restore 

## Crytical tools settings

- [ ] `~/.bashrc` 
- [ ] NERD Fonts
- [ ] Fish
    - FZF 
- [ ] TMUX 
- [ ] NVIM
    - [ ] Node.js
    - [ ] Rust
    - [ ] Python
    - [ ] Graper

- [ ] **I3**
- [ ] Kitty
   - [ ] `~/.config/kitty/kitty.conf`
   - [ ] NERD fonts (
       - JetBrains Mono 
       - Iosevka (retro enough **with** ligatures)
       - Monoid (retro enough **with** ligatures)
       - GoHuFont (retro **no** ligatures)
       )
- [ ] ZSH
- [ ] T Tools

## Dependencies

```mermaid
graph LR
    A[[I3]] --> B[kitty]
    A[[I3]] --> T[Tools_flameshot]
    A[[I3]] --> E[Tools_Express VPN]
    B[kitty]  
    B[kitty] --> N[NERD fonts]
    C[ZSH]--> B

    
```

## TLP

There are mutliple diffrent files that needs to be stored and sometimes copied and modified 


`/etc/tlp.conf` - Energy configuration

`sudo systemctl restart tlp`

`tlp-stat -u`
