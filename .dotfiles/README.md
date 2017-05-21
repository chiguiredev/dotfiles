# my-dotfiles

## Setup
```bash
git init --bare $HOME/.dotfiles
mydotfiles remote add origin git@github.com:Rafaelsalass/dotfiles.git
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

## Replication
### to do
