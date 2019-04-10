# Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/bin/:$PATH
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
alias l='ls -l'
alias la='ls -la'

# cd cmd
alias ..='cd ..'
alias ../..='cd ../../'
alias ../../..='cd ../../../'
alias ~='cd ~/'
alias dt='cd ~/Desktop'

# clear cmd 
alias cl='clear'

# Haskell Aliases 
alias sg='stack ghci'
alias sb='stack build'
alias st='stack test'

alias cb='cabal build'
alias ct='cabal test'

# Python Alias
alias py='python3'
