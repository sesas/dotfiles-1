#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# {{{ Environment vars
PATH="$HOME/bin:$HOME/lib/bin:/usr/local/bin:${PATH}"
PATH="$HOME/bin/html2rst:$HOME/bin/html2text:${PATH}"
export PATH

#export LC_ALL="en_US.UTF-8"
#export LANG="en_US.UTF-8"

#export TERM='rxvt-256color'
# for tmux: export 256color
[ -n "$TMUX" ] && export TERM=screen-256color

#export VISUAL="emacsclient -c"
#export EDITOR="emacsclient -t"
#export ALTERNATE_EDITOR="emacs"

export VISUAL="gvim -f"
export EDITOR="vim"

export PAGER=less
export LESS="-ir"
export LESS_TERMCAP_mb=$'\E[01;31m'    # begin blink !
export LESS_TERMCAP_md=$'\E[01;31m'    # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # end
export LESS_TERMCAP_so=$'\E[01;44;33m' # début statusbar
export LESS_TERMCAP_se=$'\E[0m'        # end
export LESS_TERMCAP_us=$'\E[01;32m'    # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # end
export LESSHISTFILE="-"                # turn off .lesshst file

if [ "$HOSTNAME" = "goudes" ]; then
    export LESSOPEN="| /usr/bin/lesspipe %s"
    export LESSCLOSE="/usr/bin/lesspipe %s %s"
elif [ "$HOSTNAME" = "fireball" ]; then
    export LESSOPEN="| /usr/bin/lesspipe.sh %s"
    export LESSCLOSE="/usr/bin/lesspipe.sh %s %s"
fi

# default permissions
# umask 022

# Proxy HTTP / FTP
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

# Ne pas passer par le proxy pour les domaines locaux
#export no_proxy="exemple.org"

# De la couleur pour grep
export GREP_OPTIONS='--color=auto'

export BROWSER="firefox"
# run multiple Firefox
#export MOZ_NO_REMOTE=1

# }}}

# {{{ Python
export PYTHONPATH="$HOME/lib/python:$PYTHONPATH"
export PYTHONSTARTUP="$HOME/.pythonrc"
export WORKON_HOME=$HOME/lib/virtualenvs
export PROJECT_HOME=$HOME/Dev

# sourced by omz but does not work as done before the setting of WORKON_HOME
source /usr/bin/virtualenvwrapper.sh
# }}}

source ~/lib/dotfiles/zsh/aliases.zsh
# source ~/lib/dotfiles/zsh/completion.zsh
source ~/lib/dotfiles/zsh/functions.zsh
source ~/lib/dotfiles/zsh/keys.zsh
# source ~/lib/dotfiles/zsh/opts.zsh

source ~/lib/dotfiles/zsh/locals.zsh
