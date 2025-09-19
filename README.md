# Using chezmoi

On a second machine, initialize chezmoi with your dotfiles repo:

```bash
chezmoi init --apply $GITHUB_USERNAME
```

To update your dotfiles with the latest changes, run:

```bash
chezmoi update -v
```

To add new changes:

```bash
chezmoi add [<file>]
chezmoi apply
chezmoi cd
git commit -m "Add <file>"
git push
```
