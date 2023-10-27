##############################################################################
# PATH config
##############################################################################

export PATH=$HOME/.local/bin:$PATH
export XDG_CONFIG_HOME=$HOME/.config

##############################################################################

##############################################################################
# Powerlevel10k config
##############################################################################
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
set P10K="${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" 
[[ -r $P10K ]]  && source $P10K 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Theme correction
P10K_CUSTOM="$HOME/.config/zsh/custom/p10k.zsh"
[[ ! -f $P10K_CUSTOM ]] || source $P10K_CUSTOM

##############################################################################

##############################################################################
# Theming
##############################################################################
 
# Catppuccin syntax highlighting
source "$XDG_CONFIG_HOME/zsh/themes/catppuccin/catppuccin_mocha-zsh-syntax-highlighting.zsh"

# ZSH Theme
export CONFIG_ZSH_THEME="powerlevel10k/powerlevel10k"

#############################################################################

#############################################################################
# Preferred editor for local and remote sessions
#############################################################################

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#############################################################################

#############################################################################
# User config
#############################################################################

# ZSH Plugins
export plugins=(git tmux zsh-syntax-highlighting zsh-autosuggestions)

# Use Neovim
alias vim="nvim"

#############################################################################
