# Dev Environment Settings

My development environment settings for zsh, tmux, and neovim.

Includes:
- Key bindings and plugins for neovim based on [ThePrimeagen's config](https://github.com/ThePrimeagen/init.lua)
- Color customizations for powerlevel10k theme

## Setting Up

Inside of `.zshrc` source `zsh/init.sh` script.

```sh
# Example config:

# 1. Source config 
CONFIG_INIT=$HOME/.config/zsh/init.sh
[[ -r $CONFIG_INIT ]] && source $CONFIG_INIT

# 2. Theme
# Sets powerlevel10k theme
ZSH_THEME=${CONFIG_ZSH_THEME:-agnoster}

# 3. ZSH plugins
# Needs zsh-syntax-highlighting and zsh-autosuggestions
if [[ ${#$plugins[@]} -eq 0 ]]; then
    plugins=(git) # Set whatever defaults
fi

```

