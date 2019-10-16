# Paths
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/bin:$PATH

# Zsh
export ZSH=$HOME/.oh-my-zsh
# Haskell
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
# Rust
export PATH=$HOME/.cargo/bin:$PATH

# Hide username in Agnoster theme
DEFAULT_USER="$USER"

ZSH_THEME="agnoster"

# Case-insensitive 
HYPHEN_INSENSITIVE="true"

# Easier navigation: $ z dirname
. `brew --prefix`/etc/profile.d/z.sh

alias l='ls -l'
alias la='ls -la'

# cd cmd
alias ..='cd ..'
alias ../..='cd ../../'
alias ../../..='cd ../../../'
alias ~='cd ~/'
alias /='cd /'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads/'

# pwd cmd 
alias wd='pwd'

# clear cmd 
alias cl='clear'

# neovim
alias nv='nvim'

# brew cmds 
alias bi='brew install'
alias bug='brew upgrade'
alias bud='brew update'
alias bdoc='brew doctor'
alias bclean='brew clean'

# git 
alias gs='git status'
alias ga='git add'
alias gr='git rm'
alias gc='git commit'
alias gl='git log'
alias gp='git push'
alias gf='git fetch'
alias gpl='git pull'
alias gdiff='git diff'

# Haskell Aliases 
alias sg='stack ghci'
alias sb='stack build'
alias st='stack test'

alias cb='cabal build'
alias ct='cabal test'

# Python Alias
alias py='python3'

plugins=(
  git
  osx
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
)

# source config
source $ZSH/oh-my-zsh.sh

# ls cmd
