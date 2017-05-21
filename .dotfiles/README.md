# Dotfiles

## Setup
```bash
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles remote add origin git@github.com:Rafaelsalass/dotfiles.git
```

## Configuration
```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
```

## Usage
```bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m 'Add vimrc'
dotfiles push
```

## Setting it up in a new machine
```bash
echo ".dotfiles" >> .gititnore
git clone --bare https://github.com/Rafaelsalass/dotfiles $HOME/.dotfiles
dotfiles checkout
```
