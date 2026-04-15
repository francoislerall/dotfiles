# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconf="nvim ~/.zshrc"
ohmyzsh() {
    cd ~/.oh-my-zsh && "$EDITOR" .
}
nvimconf() {
    tmux-res ~/.config/nvim/
}
olcapy() {
    cd ~/openLCA-data-1.4/python && "$EDITOR" .
}
localbin() {
    cd ~/.local/bin && "$EDITOR" .
}
chezmoiconf() {
    tmux-res ~/.local/share/chezmoi/
}
alias alacrittyconf="nvim ~/.config/alacritty/alacritty.toml"

alias py="python3.12"

# Git (not found with the the git plugin)
alias gcfx="git commit --fixup"

alias v="nvim"

# openTofu
alias tf='tofu'
alias tfa='tofu apply'
alias tfc='tofu console'
alias tfva='tofu validate'
alias tfv='tofu --version'
alias tfd='tofu destroy'
alias tff='tofu fmt'
alias tfg='tofu graph'
alias tfim='tofu import'
alias tfin='tofu init'
alias tfo='tofu output'
alias tfor='tofu output -raw'

# SSH to Proxmox
alias sshprox1="ssh root@51.89.67.15 -L 9001:51.89.67.15:8006"
alias sshprox2="ssh root@54.36.108.24 -L 9002:54.36.108.24:8006"
alias sshprox3="ssh root@51.83.140.180 -L 9003:51.83.140.180:8006"
