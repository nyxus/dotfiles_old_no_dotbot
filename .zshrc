# Path to your oh-my-zsh installation.
  export ZSH=/home/versloot/.oh-my-zsh

source /home/versloot/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle Tarrasch/zsh-autoenv
antigen bundle Tarrasch/zsh-bd
antigen bundle hcgraf/zsh-sudo
antigen bundle web-search
#antigen bundle HerringtonDarkholme/auto-fu
antigen bundle oz/safe-paste

# For SSH, starting ssh-agent is annoying

# Node Plugins
antigen bundle coffee
antigen bundle node
antigen bundle npm

# Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle virtualenv

#
# # Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
  #
antigen bundle zsh-users/zsh-completions src
#
# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen bundle djui/alias-tips

# Tell antigen that you're done.
antigen apply

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

export VIMRC=~/.vimrc
export TERM=xterm-256color
