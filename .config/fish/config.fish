source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# alias overwrite
alias lt='eza -alTL 2 --color=always --group-directories-first --icons'

# Shell themes
#oh-my-posh init fish --config ~/.config/ohmyposh/catppuccin_mocha.omp.toml | source

# Starship:
export STARSHIP_CONFIG=/home/foxiecat/.config/starship/catppuccin_mocha.toml

function starship_transient_prompt_func
    starship module character
end

export STARSHIP_CONFIG=/home/foxiecat/.config/starship/catppuccin_mocha.toml
starship init fish | source
enable_transience

# Extras I dunno
fzf --fish | source
zoxide init fish | source
