ZSH=$HOME/.oh-my-zsh

if [ -n "$INSIDE_EMACS" ]; then
    echo "Inside Emacs"
    export ZSH_THEME="frisk"
else
    export ZSH_THEME="agnoster"
fi
DEFAULT_USER="christopher"
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
TERM=xterm-256color

plugins=(git osx pip pod vundle)

source $ZSH/oh-my-zsh.sh
source /usr/local/bin/aws_zsh_completer.sh

export PATH=~/Downloads/purescript:/usr/local/share/npm/bin:./node_modules/.bin:/Users/ca/.rvm/gems/ruby-1.9.3-p0/bin:/Users/ca/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/ca/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/ca/.rvm/bin:/Users/ca/.gem/ruby/1.8/bin:/opt/nginx/sbin:/usr/local/bin:/usr/local/sbin:$PATH:

alias hello="cd /Users/ca/Hello/Hello-Server/hello"

export EDITOR="vim"
export GIT_EDITOR='vim'
export SBT_OPTS=-XX:MaxPermSize=256m

. /Users/ca/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

eval `opam config env`

bindkey -v
