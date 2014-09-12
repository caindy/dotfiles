ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="christopher"

plugins=(git osx pip pod vundle aws)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/share/npm/bin:./node_modules/.bin:/Users/ca/.rvm/gems/ruby-1.9.3-p0/bin:/Users/ca/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/ca/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/ca/.rvm/bin:/Users/ca/.gem/ruby/1.8/bin:/opt/nginx/sbin:/usr/local/bin:/usr/local/sbin:$PATH:

alias hello="cd /Users/ca/Hello/Hello-Server/hello"

export EDITOR="vim"
export GIT_EDITOR='vim'
export SBT_OPTS=-XX:MaxPermSize=256m

. /Users/ca/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

eval `opam config env`

bindkey -v
