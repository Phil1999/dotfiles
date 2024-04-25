# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1

# Set PATH
export PATH="$HOME/bin:/usr/local/bin:/opt/nvim-linux64/bin:$PATH"

# Plugin configuration

# Ensure fzf is installed and configured
# Assuming fzf is installed and the following script exists
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Manually initialize plugins without Oh My Zsh
# You might need to clone these plugins into your preferred directory
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Need to load syntax-highlighting before substring search
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source $HOME/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# If the plugins are not already cloned, you can do so with:
# git clone https://github.com/zsh-users/zsh-completions.git $HOME/.zsh/plugins/zsh-completions
# git clone https://github.com/zsh-users/zsh-history-substring-search.git $HOME/.zsh/plugins/zsh-history-substring-search

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# cd shortcuts
alias cdd='cd /mnt/c/Users/phili/onedrive/Desktop'

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# Adjust as necessary for your preferred editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p11k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
