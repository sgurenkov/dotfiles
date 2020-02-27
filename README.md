# Dependencies
* terminal [kitty](https://sw.kovidgoyal.net/kitty)
* Shell [ZSH](http://zsh.sourceforge.net/)
* ZSH config [OH-MY-ZSH](https://github.com/ohmyzsh/ohmyzs)
* File manager [vifm](https://vifm.info/)



# Installing dotfiles
Full guide is here [Dotfiles in bare git repo](https://www.atlassian.com/git/tutorials/dotfiles)

prevent circular references:
```
echo ".dotfiles" >> .gitignore
```

clone dotfiles into bare repo:
```
git clone --bare git@github.com:sgurenkov/dotfiles.git
```

set alias in current shell session
```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

checkout actual config files into $HOME directory
```
config checkout
```

set flag to ignore untracked files:
```
config config --local status.showUntrackedFiles no
```

# Fonts
[JetBrains Mono](https://www.jetbrains.com/lp/mono/)

# Color scheme
Molokai or Oceanic Next
