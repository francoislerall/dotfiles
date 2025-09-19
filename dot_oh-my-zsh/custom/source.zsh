# Adding RUST cargo.
source $HOME/.cargo/env

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# bun completions
[ -s "/home/francois/.bun/_bun" ] && source "/home/francois/.bun/_bun"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
