# ➤ Initialisation des outils
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(thefuck --alias)"

# ➤ Aliases stylés
alias ls='exa --icons'
alias cat='bat'
alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear && ls'
alias please='sudo $(fc -ln -1)'

# ➤ FZF amélioré
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_R_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

# ➤ Local : Neofetch | SSH : Pokémon
if [[ -n "$SSH_CONNECTION" ]]; then
  curl -s -L "https://raw.githubusercontent.com/shinya/pokemon-terminal-art/main/hello.sh" | bash
else
  neofetch
fi
