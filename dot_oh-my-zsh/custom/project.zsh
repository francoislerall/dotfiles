# This file is dedicated to project-specific commands.

# onlineLCA
if [[ $(basename "$PWD") == "onlinelca" ]]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [[ -d "$HOME/openLCA-data-1.4/databases/$BRANCH" ]]; then
        export ONLCA_DB=$BRANCH
    else
        export ONLCA_DB=onlinelca
    fi
fi
