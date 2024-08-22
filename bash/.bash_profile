eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable autocompletion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Add user's Go binary path if it exists
if [ -d $HOME/go/bin ]; then
  export PATH="$PATH:$HOME/go/bin"
fi

# Run .bashrc
source ~/.bashrc

# Aliases
alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/eric/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
