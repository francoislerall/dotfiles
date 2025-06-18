# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconf="nvim ~/.zshrc"
ohmyzsh() {
    cd ~/.oh-my-zsh && "$EDITOR" .
}
nvimconf() {
    cd ~/.config/nvim && "$EDITOR" .
}

alias py="python3.12"

# Git (not found with the the git plugin)
alias gcfx="git commit --fixup"

alias v="nvim"

# Terraform
alias tf='terraform'
alias tfa='terraform apply'
alias tfc='terraform console'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tfg='terraform graph'
alias tfim='terraform import'
alias tfin='terraform init'
alias tfo='terraform output'
alias tfor='terraform output -raw'

# SSH to Proxmox
alias sshprox1="ssh root@51.89.67.15"
alias sshprox2="ssh root@54.36.108.24"

