## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/Foxiecat/dotfiles.git
$ cd dotfiles
```
Install stow if you haven't. *(I think Stow should work with WSL2 as well)*
```
Mac:
$ brew install stow

Debian-based Linux:
$ sudo apt install stow

Fedora-based Linux:
sudo dnf install stow

'I Use Arch btw'-based Linux:
sudo pacman -S stow
```

Then use GNU stow to create symlinks.
```
$ stow .
or
$ stow <File or Directory to stow>
```
*if you're on Windows and don't use WSL2... Install WSL2, it's really powerful and overall just is a recommended way to use the terminal as a dev on Windows.*
