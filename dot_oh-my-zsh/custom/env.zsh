JAVA_HOME="/usr/lib/jvm/temurin-21-jdk-amd64"

# Export environment variables if the current directory contains a .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
