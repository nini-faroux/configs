# Paths
export PATH=$HOME/bin:$PATH
PATH="$PATH":$HOME/.local/bin
PATH="$PATH":/usr/local/sbin
PATH="$PATH":/usr/local/bin/

# Zsh
export ZSH=$HOME/.oh-my-zsh
# Haskell
PATH="$PATH":$HOME/Library/Haskell/bin
PATH="$PATH":$HOME/.cabal/bin
PATH="$PATH":$HOME/.cabal/bin:$HOME/.ghcup/bin
## Rust
PATH="$PATH":$HOME/.cargo/bin
## Python
PATH="$PATH":$HOME/Library/Python/3.8/bin
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export PROJECT_HOME=$HOME/projects 
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# Default Editor
export EDITOR=/usr/local/bin/nvim

# Hide username in Agnoster theme
DEFAULT_USER="$USER"

ZSH_THEME="agnoster"

# Case-insensitive 
HYPHEN_INSENSITIVE="true"

# Easier navigation
. `brew --prefix`/etc/profile.d/z.sh

# ls cmd
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'

# cd cmd
alias ..='cd ..'
alias ../..='cd ../../'
alias ../../..='cd ../../../'
alias ~='cd ~/'
alias /='cd /'
alias dt='cd ~/Desktop/'
alias dl='cd ~/Downloads/'

# pwd cmd 
alias wd='pwd'

# neovim 
alias nv='nvim'

# brew cmds
alias bi='brew install'
alias bug='brew upgrade'
alias bud='brew update'
alias bdoc='brew doctor'
alias bclean='brew clean'

# git
alias gs='git status'
alias ga='git add'
alias gr='git rm'
alias gc='git commit'
alias glog='git log'
alias gp='git push'
alias gf='git fetch'
alias gpl='git pull'
alias gdiff='git diff'

# clear cmd
alias cl='clear'

# Haskell Aliases 
alias sg='stack ghci'
alias sb='stack build'
alias sr='stack run'
alias st='stack test'

alias cb='cabal build'
alias ct='cabal test'

# ghc dev
alias lghc="~/dev/haskell/oss/ghc/_build/stage1/bin/ghc"

alias ghci-core="ghci -ddump-simpl -dsuppress-idinfo \
-dsuppress-coercions -dsuppress-type-applications \
-dsuppress-uniques -dsuppress-module-prefixes"

# Python Alias
alias python='python3'
alias pip='pip3'

plugins=(
  git
  osx
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
)

# source config
source $ZSH/oh-my-zsh.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
