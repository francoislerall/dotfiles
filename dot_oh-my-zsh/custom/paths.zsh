# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# Maven PATH
export PATH=$PATH:/opt/maven/bin

# PyCharm PATH
export PATH=$PATH:/opt/pycharm-community-2021.3.3/bin

# Go PATH
export PATH="/usr/local/go/bin:$PATH"

# Deno PATH
export DENO_INSTALL="/home/francois/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# tflint PATH
export PATH="/snap/bin/tflint:$PATH"

# Neovim PATH
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/francois/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# pandoc
path=('/usr/local/pandoc-3.5/bin' $path)
export PATH

# tmuxifier
export PATH=$PATH:$HOME/.tmux/plugins/tmuxifier/bin

