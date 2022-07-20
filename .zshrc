# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

alias vim=nvim # Use the supperior vim
alias newtmux="tmux -u new"
alias detachmux="tmux detach"
alias attachmux="tmux attach -t $1"

eval $(thefuck --alias)

# Enable Starship
eval "$(starship init zsh)"

# Neofetch!
if [[ "$OSTYPE" != *darwin* ]]; then
    neofetch --ascii_distro `fortune neofetch-os` --disable terminal --disable packages --disable host --disable --disable uptime --disable shell --disable resolution --disable de --disable wm --disable "wm theme"   --disable theme --disable icons
else
    neofetch --disable terminal --disable packages --disable host --disable --disable uptime --disable shell --disable resolution --disable de --disable wm --disable "wm theme" --disable theme --disable icons
fi

bindkey -v # Vi keybindings

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.poetry/bin:$PATH"
