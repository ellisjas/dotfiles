# Path to your oh-my-zsh installation.
export ZSH="/Users/jas/.oh-my-zsh"
export BUILDKITE_ACCESS_TOKEN="301517611bb52e17adef189afcc5b494b5961535"

ZSH_THEME="refined"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias rs="rails server"
alias b/s="bin/setup"
alias wp="bin/webpack-dev-server --host=0.0.0.0 --port=9876 --disable-host-check"
alias gs="git status"
alias co="checkout"
alias g="git"
alias notstart="PORT=9293 bundle exec foreman start web"
alias notworker="bundle exec foreman start worker"
alias jerbs="bin/rake jobs:work"
alias gpf='git push --force-with-lease'
alias gcmp='git checkout master && git pull'
alias grebase="git pull --rebase origin master"
alias gmerge="git merge origin/master"
alias panther="ssh jasmine.ellis@panther.app.development.cultureamp.net"
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladminalias" 
alias master="git checkout master && git pull"
alias b/r="bin/rails"
alias pc="perform-cli"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prompt_context() {}

. ~/z.sh

export PATH="/usr/local/bin:/usr/local/opt/mongodb-community@3.4/bin:$PATH"

# installed by cultureamp/big-frontend-repo
bfr() {
  ${HOME}/code/cultureamp/big-frontend-repo/tools/cli/run.sh $@
}

killport() {
    kill -9 `lsof -t -i :$1`
}

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/postgresql/bin:$PATH"
export PATH="/usr/local/opt/erlang@20/bin:$PATH"

. /usr/local/opt/asdf/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

